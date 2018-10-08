package com.idp.web.defect.controller;
import com.idp.web.defect.entity.Defect;
import com.idp.web.defect.service.DefectService;
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
 * 缺陷管理controller
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
@RequestMapping("/defect")
public class DefectController extends BaseController {

	private Logger logger = Logger.getLogger(DefectController.class);

	@Resource
	private DefectService defectService;
	
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
		return "defect/defectSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param defect
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Defect defect,Page<Defect> page,HttpServletRequest request){
		try {
			request.setAttribute("page", defectService.findByPage(defect, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "defect/defectList";
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
	@RequestMapping("/defect")
	public String defect(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Defect defect = defectService.getById(id);
				request.setAttribute("defect", defect);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "defect/defect";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param defect
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Defect defect){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(defect.getId())){
				defect.setUpdateUser(getCurrentUser().getUsername());
				defect.setUpdateDate(new Date());
				defectService.update(defect);
			}
			// 新增
			else{
				defect.setUpdateUser(getCurrentUser().getUsername());
				defect.setUpdateDate(new Date());
				defect.setCreateUser(getCurrentUser().getUsername());
				defect.setCreateDate(new Date());
				defectService.add(defect);
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
			defectService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
