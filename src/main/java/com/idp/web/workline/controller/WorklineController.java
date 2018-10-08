package com.idp.web.workline.controller;
import com.idp.web.workline.entity.Workline;
import com.idp.web.workline.service.WorklineService;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.common.base.BaseController;
import com.idp.common.persistence.Page;
import com.idp.common.util.ValidateUtils;

import net.sf.json.JSONObject;
import java.util.Date;

/**
 * 
 * 生产线controller
 * 
 * <pre>
 * 	历史记录：
 * 	2018-10-07 duming
 * 	新建文件
 * </pre>
 * 
 * @author 
 * <pre>
 * SD
 * 	duming
 * PG
 *	duming
 * UT
 *
 * MA
 * </pre>
 * @version $Rev$
 *
 * <p/> $Id$
 *
 */
@Controller
@RequestMapping("/workline")
public class WorklineController extends BaseController {

	private Logger logger = Logger.getLogger(WorklineController.class);

	@Resource
	private WorklineService worklineService;
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	初始化查询页面
	 * </pre>
	 * 
	 * @return
	 */
	@RequestMapping("/init")
	public String init(){
		return "workline/worklineSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param workline
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Workline workline,Page<Workline> page,HttpServletRequest request){
		try {
			request.setAttribute("page", worklineService.findByPage(workline, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "workline/worklineList";
	}

	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	新增修改页面初始化
	 * </pre>
	 * 
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/workline")
	public String workline(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Workline workline = worklineService.getById(id);
				request.setAttribute("workline", workline);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "workline/workline";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param workline
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Workline workline){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(workline.getId())){
				workline.setUpdateUser(getCurrentUser().getUsername());
				workline.setUpdateDate(new Date());
				worklineService.update(workline);
			}
			// 新增
			else{
				workline.setUpdateUser(getCurrentUser().getUsername());
				workline.setUpdateDate(new Date());
				workline.setCreateUser(getCurrentUser().getUsername());
				workline.setCreateDate(new Date());
				worklineService.add(workline);
			}
			json.put("result", "save_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "save_fail");
		}
		return json.toString();
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	删除
	 * </pre>
	 * 
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(String id){
		JSONObject json = new JSONObject();
		try {
			worklineService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
