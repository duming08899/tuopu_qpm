package com.idp.web.workshop.controller;
import com.idp.web.workshop.entity.Workshop;
import com.idp.web.workshop.service.WorkshopService;
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
 * 生产车间controller
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
@RequestMapping("/workshop")
public class WorkshopController extends BaseController {

	private Logger logger = Logger.getLogger(WorkshopController.class);

	@Resource
	private WorkshopService workshopService;
	
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
		return "workshop/workshopSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param workshop
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Workshop workshop,Page<Workshop> page,HttpServletRequest request){
		try {
			request.setAttribute("page", workshopService.findByPage(workshop, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "workshop/workshopList";
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
	@RequestMapping("/workshop")
	public String workshop(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Workshop workshop = workshopService.getById(id);
				request.setAttribute("workshop", workshop);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "workshop/workshop";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param workshop
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Workshop workshop){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(workshop.getId())){
				workshop.setUpdateUser(getCurrentUser().getUsername());
				workshop.setUpdateDate(new Date());
				workshopService.update(workshop);
			}
			// 新增
			else{
				workshop.setUpdateUser(getCurrentUser().getUsername());
				workshop.setUpdateDate(new Date());
				workshop.setCreateUser(getCurrentUser().getUsername());
				workshop.setCreateDate(new Date());
				workshopService.add(workshop);
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
			workshopService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
