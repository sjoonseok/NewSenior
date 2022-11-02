package kr.or.admin.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import common.FileRename;
import kr.or.activity.model.service.ActivityService;
import kr.or.activity.model.vo.Activity;
import kr.or.activity.model.vo.ActivityPageData;
import kr.or.member.model.service.MemberService;
import kr.or.member.model.vo.Member;

@Controller
public class AdminActivityController {

	@Autowired
	private ActivityService service;
	@Autowired
	private MemberService mService;
	@Autowired 
	private FileRename fileRename;
	
	@RequestMapping(value="/activityEnroll.do")
	public String activityEnroll(Model model) {
		ArrayList<Member> list = mService.getAllAdmin();
		model.addAttribute("list",list);
		return "admin/activityEnroll";
	}
	
	@RequestMapping(value="/insertActivity.do")
	public String insertActivity(Activity activity,MultipartFile[] files, 
			HttpServletRequest request) {

		String filepaths ="";
		if(!files[0].isEmpty()) {
			String savePath = request.getSession().getServletContext().getRealPath("/resources/upload/activity/");
			for(MultipartFile file: files) {
				String filename = file.getOriginalFilename();
				filepaths = fileRename.fileRename(savePath,filename);
				
				FileOutputStream fos;
				try {
					fos = new FileOutputStream(new File(savePath+filepaths));
					BufferedOutputStream bos = new BufferedOutputStream(fos);
					byte[] bytes = file.getBytes();
					bos.write(bytes);
					bos.close();
				} catch (FileNotFoundException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				}
				//파일업로드 끝(파일1개 업로드)
				
				
			}
		}
		activity.setFilepath(filepaths);
		int result = service.insertActivity(activity);
		if(result>0) {
			return "admin/adminMgrClass";
		}else {
			return "admin/adminMgrClass";
	
		}	
	}
	
	@RequestMapping(value="/activityMgrAdmin.do")
	public String activityMgrAdmin(int reqPage,Model model) {
		ActivityPageData apd = service.getAllActivity(reqPage);
		model.addAttribute("list",apd.getList());
		model.addAttribute("pageNavi",apd.getPageNavi());
		model.addAttribute("reqPage",apd.getReqPage());
		model.addAttribute("numPerPage",apd.getNumPerPage());
		return "admin/activityMgrAdmin";
	}
}
