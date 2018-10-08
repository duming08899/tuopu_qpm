package com.idp.web.procedure.controller;
import com.idp.web.procedure.entity.Procedure;
import com.idp.web.procedure.service.ProcedureService;
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
 * 工序管理controller
 * 
 * <pre>
 * 	历史记录：
 * 	2018-10-08 duming
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
@RequestMapping("/procedure")
public class ProcedureController extends BaseController {

	private Logger logger = Logger.getLogger(ProcedureController.class);

	@Resource
	private ProcedureService procedureService;
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	初始化查询页面
	 * </pre>
	 * 
	 * @return
	 */
	@RequestMapping("/init")
	public String init(){
		return "procedure/procedureSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param procedure
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Procedure procedure,Page<Procedure> page,HttpServletRequest request){
		try {
			request.setAttribute("page", procedureService.findByPage(procedure, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "procedure/procedureList";
	}

	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	新增修改页面初始化
	 * </pre>
	 * 
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/procedure")
	public String procedure(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Procedure procedure = procedureService.getById(id);
				request.setAttribute("procedure", procedure);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "procedure/procedure";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param procedure
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Procedure procedure){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(procedure.getId())){
				procedure.setUpdateUser(getCurrentUser().getUsername());
				procedure.setUpdateDate(new Date());
				procedureService.update(procedure);
			}
			// 新增
			else{
				procedure.setUpdateUser(getCurrentUser().getUsername());
				procedure.setUpdateDate(new Date());
				procedure.setCreateUser(getCurrentUser().getUsername());
				procedure.setCreateDate(new Date());
				procedureService.add(procedure);
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
	 * 	2018-10-08 duming
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
			procedureService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
