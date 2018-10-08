package com.idp.web.constant.controller;
import com.idp.web.constant.entity.Constant;
import com.idp.web.constant.service.ConstantService;
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
 * 系统常量controller
 * 
 * <pre>
 * 	历史记录：
 * 	2018-10-06 duming
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
@RequestMapping("/constant")
public class ConstantController extends BaseController {

	private Logger logger = Logger.getLogger(ConstantController.class);

	@Resource
	private ConstantService constantService;
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	初始化查询页面
	 * </pre>
	 * 
	 * @return
	 */
	@RequestMapping("/init")
	public String init(){
		return "constant/constantSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param constant
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Constant constant,Page<Constant> page,HttpServletRequest request){
		try {
			request.setAttribute("page", constantService.findByPage(constant, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "constant/constantList";
	}

	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	新增修改页面初始化
	 * </pre>
	 * 
	 * @param id
	 * @param request
	 * @return
	 */
	@RequestMapping("/constant")
	public String constant(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Constant constant = constantService.getById(id);
				request.setAttribute("constant", constant);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "constant/constant";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param constant
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Constant constant){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(constant.getId())){
				constant.setUpdateUser(getCurrentUser().getUsername());
				constant.setUpdateDate(new Date());
				constantService.update(constant);
			}
			// 新增
			else{
				constant.setUpdateUser(getCurrentUser().getUsername());
				constant.setUpdateDate(new Date());
				constant.setCreateUser(getCurrentUser().getUsername());
				constant.setCreateDate(new Date());
				constantService.add(constant);
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
	 * 	2018-10-06 duming
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
			constantService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
