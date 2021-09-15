package com.finalp.moim.teampage.teammanage.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.finalp.moim.teampage.common.model.vo.JoinWaiting;
import com.finalp.moim.teampage.common.model.vo.Team;
import com.finalp.moim.teampage.common.model.vo.TeamMember;
import com.finalp.moim.teampage.teammanage.model.service.TPmanageService;

@Controller
public class TPmanageController {
	
	private static final Logger logger = LoggerFactory.getLogger(TPmanageController.class);
	
	@Autowired
	private TPmanageService tpmanageService;
	
	@RequestMapping("moveTeamSetting.do")
	public String moveTeamSetting(@RequestParam("team_num") int team_num, Model model) {
		Team team = tpmanageService.selectTeamSetting(team_num);
		
		if (team != null) {
			model.addAttribute("team", team);
			return "teampage/teammanage/team_setting";
		} else {
			model.addAttribute("message", team_num + "팀 정보 조회 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping("moveTeamMember.do")
	public String moveTeamMember(@RequestParam("team_num") int team_num, Model model) {
		ArrayList<JoinWaiting> joinlist = tpmanageService.selectJoinMemberList(team_num);
		ArrayList<TeamMember> memberlist = tpmanageService.selectTeamMemberList(team_num);
		
		if (memberlist != null) {
			model.addAttribute("joinlist", joinlist);
			model.addAttribute("memberlist", memberlist);
			model.addAttribute("team_num", team_num);
			return "teampage/teammanage/team_member";  //내보낼 뷰파일명 리턴
		} else {
			model.addAttribute("message", team_num + "팀원 정보 조회 실패.");
			return "common/error";
		}
		
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

		if (tpmanageService.updateTeamSetting(team) > 0) {
			model.addAttribute("team_num", team.getTeam_num());
			return "redirect:moveTeamSetting.do";
		} else {
			model.addAttribute("message", team.getTeam_name() + "의 정보 수정 실패.");
			return "common/error";
		}
		
	}
	
	@RequestMapping(value="tjselect.do", method=RequestMethod.POST)
	@ResponseBody
	public String selectJoinMember(@RequestParam("join_num") int join_num) {
		JoinWaiting joinmember = tpmanageService.selectJoinMember(join_num);
		
		logger.info("joinmember : " + joinmember);
		
		// 전송용 json 객체 준비
		JSONObject sendJson = new JSONObject();
		// list 옮길 json 배열 준비
		JSONArray jarr = new JSONArray();
		
		JSONObject job = new JSONObject();
		
		job.put("user_no", joinmember.getUserVO().getUser_no());
		job.put("user_id", joinmember.getUserVO().getUser_id());
		job.put("user_nn", joinmember.getUserVO().getUser_nn());
		job.put("age", joinmember.getUserVO().getAge());
		job.put("gender", joinmember.getUserVO().getGender());
		job.put("email", joinmember.getUserVO().getEmail());
		job.put("join_num", joinmember.getJoin_num());
		job.put("join_intro", joinmember.getJoin_intro());
		job.put("join_original_filename", joinmember.getJoin_original_filename());
		job.put("join_rename_filename", joinmember.getJoin_rename_filename());
		
		// job 를 jarr 에 저장
		jarr.add(job);
		
		// 전송용 json 객체에 jarr 담음
		sendJson.put("list", jarr);
		
		return sendJson.toJSONString();	// jsonView 가 리턴됨
	}
	
	@RequestMapping(value="tminsert.do", method = RequestMethod.POST)
	public String insertTeamMember(JoinWaiting joinmember, @RequestParam("team_num") int team_num, Model model) {
		int result = tpmanageService.deleteJoinMember(joinmember.getJoin_num());
		
		if (tpmanageService.insertTeamMember(joinmember) > 0 && result > 0) {
			model.addAttribute("team_num", team_num);
			return "redirect:moveTeamMember.do";
		} else {
			model.addAttribute("message", joinmember.getUserVO().getUser_id() + "님의 팀원 등록 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping("tjdelete.do")
	public String deleteJoinWaiting(@RequestParam("join_num") int join_num,
			@RequestParam("team_num") int team_num, Model model) {
		if(tpmanageService.deleteJoinMember(join_num) > 0) {
			model.addAttribute("team_num", team_num);
			return "redirect:moveTeamMember.do";
		} else {
			model.addAttribute("message", join_num + " 번 신청 정보 삭제 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping(value="tmselect.do", method=RequestMethod.POST)
	@ResponseBody
	public String selectTeamMember(@RequestParam("team_member_no") int team_member_no) {
		TeamMember teammember = tpmanageService.selectTeamMember(team_member_no);
		
		logger.info("teammember : " + teammember);
		
		// 전송용 json 객체 준비
		JSONObject sendJson = new JSONObject();
		// list 옮길 json 배열 준비
		JSONArray jarr = new JSONArray();
		
		JSONObject job = new JSONObject();
		
		job.put("user_no", teammember.getUserVO().getUser_no());
		job.put("user_id", teammember.getUserVO().getUser_id());
		job.put("user_nn", teammember.getUserVO().getUser_nn());
		job.put("age", teammember.getUserVO().getAge());
		job.put("gender", teammember.getUserVO().getGender());
		job.put("email", teammember.getUserVO().getEmail());
		job.put("team_member_no", teammember.getTeam_member_no());
		job.put("team_member_leader", teammember.getTeam_member_leader());
		job.put("team_member_date", teammember.getTeam_member_date().toString());
		
		// job 를 jarr 에 저장
		jarr.add(job);
		
		// 전송용 json 객체에 jarr 담음
		sendJson.put("list", jarr);
		
		return sendJson.toJSONString();	// jsonView 가 리턴됨
	}
	
	@RequestMapping(value="tmrankupdate.do", method=RequestMethod.POST)
	public String updateTeamMemberRank(@RequestParam("team_num") int team_num, TeamMember teammember, Model model) {
		TeamMember teamleader = tpmanageService.selectTeamLeader(team_num);
		tpmanageService.updateTeamMemberRankDown(teamleader);
		
		if(tpmanageService.updateTeamMemberRankUp(teammember) > 0) {
			return "redirect:moveTPindex.do";
		} else {
			model.addAttribute("message", teammember.getUserVO().getUser_id() + " 회원 팀장 위임 실패.");
			return "common/error";
		}
	}
	
	@RequestMapping(value="tmdelete.do", method=RequestMethod.POST)
	public String deleteTeamMember(@RequestParam("team_num") int team_num, TeamMember teammember, Model model) {
		if(tpmanageService.deleteTeamMember(teammember.getTeam_member_no()) > 0) {
			model.addAttribute("team_num", team_num);
			return "redirect:moveTeamMember.do";
		} else {
			model.addAttribute("message", teammember.getUserVO().getUser_id() + " 회원 강퇴 실패.");
			return "common/error";
		}
	}

}
