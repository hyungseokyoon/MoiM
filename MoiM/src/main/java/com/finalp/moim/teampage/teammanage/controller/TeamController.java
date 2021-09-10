package com.finalp.moim.teampage.teammanage.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;

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

import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.teammanage.model.service.TeamService;

@Controller
public class TeamController {
	
	private static final Logger logger = LoggerFactory.getLogger(TeamController.class);
	
	@Autowired
	private TeamService teamService;
	
	@RequestMapping("moveTeamSetting.do")
	public String moveTeamSetting(@RequestParam("team_num") int team_num, Model model) {
		Team team = teamService.selectTeamSetting(team_num);
		
		if (team != null) {
			model.addAttribute("team", team);
			return "teampage/teammanage/team_setting";
		} else {
			model.addAttribute("message", team_num + "팀 정보 조회 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping("moveTeamMember.do")
	public String moveTeamMember() {
		return "teampage/teammanage/team_member";  //내보낼 뷰파일명 리턴
	}
	
	@RequestMapping(value="tsupdate.do", method=RequestMethod.POST)
	public String teamSettingUpdateMethod(Team team, HttpServletRequest request, Model model,
			@RequestParam(name = "upfile", required = false) MultipartFile mfile) {
		
		// 업로드된 파일 저장 폴더 지정하기
		String savePath = request.getSession().getServletContext().getRealPath("resources/team_page/team_images");
		
		// 새로운 첨부파일이 있을때
		if (!mfile.isEmpty()) {
			logger.info("새로운 첨부파일이 있을 때");
			// 저장 폴더의 이전 파일을 삭제함
			if (team.getTeam_original_image() != null) {
				// logger.info("이전 첨부파일 삭제");
				// 저장 폴더에서 파일을 삭제함
				new File(savePath + "\\" + team.getTeam_rename_image()).delete();
				team.setTeam_original_image(null);
				team.setTeam_rename_image(null);
			}

			String fileName = mfile.getOriginalFilename();
			if (fileName != null && fileName.length() > 0) {
				try {
					mfile.transferTo(new File(savePath + "\\" + fileName));

					// 저장된 첨부파일 이름 바꾸기
					SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");

					// 변경할 파일명 만들기
					String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis()));
					// 원본 파일의 확장자를 추출해서, 변경 파일명에 붙여줌
					renameFileName += "." + fileName.substring(fileName.lastIndexOf(".") + 1);

					// 파일명 바꾸기 실행함 : java.io.File 을 이용함
					File originFile = new File(savePath + "\\" + fileName);
					File renameFile = new File(savePath + "\\" + renameFileName);

					if (!originFile.renameTo(renameFile)) {
						// 파일 이름바꾸기 실패시 직접 바꾸기
						FileInputStream fin = new FileInputStream(originFile);
						FileOutputStream fout = new FileOutputStream(renameFile);

						int data = -1;
						byte[] buffer = new byte[1024];

						while ((data = fin.read(buffer, 0, buffer.length)) != -1) {
							fout.write(buffer, 0, buffer.length);
						}

						fin.close();
						fout.close();
						originFile.delete(); // 저장된 원본 파일 삭제함
					} // 직접 이름바꾸기

					team.setTeam_rename_image(renameFileName);
				} catch (Exception e) {
					e.printStackTrace();
					model.addAttribute("message", "전송파일 저장 실패.");
					return "common/error";
				}

			} // 업로드된 파일이 있다면...

			team.setTeam_original_image(mfile.getOriginalFilename());
			logger.info("tsupdate.do : " + team);
		}

		if (teamService.updateTeamSetting(team) > 0) {
			model.addAttribute("team_num", team.getTeam_num());
			return "redirect:moveTeamSetting.do";
		} else {
			model.addAttribute("message", team.getTeam_name() + "의 정보 수정 실패.");
			return "common/error";
		}
		
	}

}
