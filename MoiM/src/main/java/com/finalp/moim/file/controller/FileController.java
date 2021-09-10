package com.finalp.moim.file.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.finalp.moim.file.model.service.FileService;
import com.finalp.moim.file.model.vo.TFile;


@Controller
public class FileController {
	private static final Logger logger = LoggerFactory.getLogger(FileController.class);
	
	@Autowired
	private FileService fileService;
	
	@RequestMapping("flist.do")
	public String fileListMethod(Model model) {
		ArrayList<TFile> list = fileService.selectAll();

		if (list.size() > 0) {
			model.addAttribute("list", list);
			return "file/fileList";
		} else {
			model.addAttribute("message", "등록된 공지사항 정보가 없습니다.");
			return "common/error";
		}
	}
	
	@RequestMapping("fwform.do")
	public String fileWriteForm() {
		return "file/fileWriteForm";
	}
	
	@RequestMapping(value = "finsert.do", method = RequestMethod.POST)
	public String fileInsertMethod(TFile tfile, HttpServletRequest request, Model model,
			@RequestParam(name = "upfile", required = false) MultipartFile mfile) {
		// 업로드된 파일 저장 폴더 지정하기
		String savePath = request.getSession().getServletContext().getRealPath("resources/test_files");

		// 첨부파일이 있을때만 업로드된 파일을 지정 폴더로 옮기기
		if (!mfile.isEmpty()) {
			String fileName = mfile.getOriginalFilename();
			if (fileName != null && fileName.length() > 0) {
				try {
					mfile.transferTo(new File(savePath + "\\" + fileName));

					// 저장된 원본 파일의 이름 바꾸기 하려면...
					// 저장 폴더에 같은 이름의 파일이 있을 경우를 대비하기 위함
					// "년월일시분초.확장자" 형식으로 변경해 봄

					// 바꿀 파일명에 대한 문자열 만들기
					// 공지글 등록 요청 시점의 날짜정보를 이용함
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

					// 변경할 파일명 만들기
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()));
					// 원본 파일의 확장자를 추출해서, 변경 파일명에 붙여줌
					renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1);

					// 파일명 바꾸기 실행함 : java.io.File 을 이용함
					File originFile = new File(savePath + "\\" + fileName);
					File renameFile = new File(savePath + "\\" + renameFileName);

					if (!originFile.renameTo(renameFile)) {
						// renameTo() 메소드가 실패한 경우(false)
						// 직접 수동으로 바꾸기함
						// 원본 파일 읽어서 파일복사하고,
						// 원본 파일 삭제로 처리함

						FileInputStream fin = new FileInputStream(originFile);
						FileOutputStream fout = new FileOutputStream(renameFile);

						int data = -1;
						byte[] buffer = new byte[1024];

						while ((data = fin.read(buffer, 0, buffer.length)) != -1) {
							fout.write(buffer, 0, buffer.length);
						}

						fin.close();
						fout.close();
						originFile.delete(); // 원본 파일 삭제함
					} // 직접 이름바꾸기

					tfile.setFile_renamefilename(renameFileName);
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "전송파일 저장 실패.");
					return "common/error";
				}

			} // 업로드된 파일이 있다면...

			tfile.setFile_originalfilename(mfile.getOriginalFilename());
			logger.info("finsert.do : " + tfile);
		} // 첨부 파일 있을 때

		if (fileService.insertFile(tfile) > 0) {
			return "redirect:flist.do";
		} else {
			model.addAttribute("message", "파일 등록 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping("fupview.do")
	public String moveFileUpdateView(@RequestParam("file_num") int file_num, Model model) {
		TFile tfile = fileService.selectFile(file_num);

		if (tfile != null) {
			model.addAttribute("tfile", tfile);
			return "file/fileUpdateForm";
		} else {
			model.addAttribute("message", file_num + "번 수정페이지로 이동 실패.");
			return "common/error";
		}
	}
	
}
