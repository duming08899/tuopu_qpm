package com.idp.web.material.controller;
import com.idp.web.material.entity.Material;
import com.idp.web.material.service.MaterialService;
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
 * 原材料管理controller
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
@RequestMapping("/material")
public class MaterialController extends BaseController {

	private Logger logger = Logger.getLogger(MaterialController.class);

	@Resource
	private MaterialService materialService;
	
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
		return "material/materialSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param material
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Material material,Page<Material> page,HttpServletRequest request){
		try {
			request.setAttribute("page", materialService.findByPage(material, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "material/materialList";
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
	@RequestMapping("/material")
	public String material(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Material material = materialService.getById(id);
				request.setAttribute("material", material);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "material/material";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param material
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Material material){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(material.getId())){
				material.setUpdateUser(getCurrentUser().getUsername());
				material.setUpdateDate(new Date());
				materialService.update(material);
			}
			// 新增
			else{
				material.setUpdateUser(getCurrentUser().getUsername());
				material.setUpdateDate(new Date());
				material.setCreateUser(getCurrentUser().getUsername());
				material.setCreateDate(new Date());
				materialService.add(material);
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
			materialService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
