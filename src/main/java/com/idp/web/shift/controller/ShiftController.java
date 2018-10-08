package com.idp.web.shift.controller;
import com.idp.web.shift.entity.Shift;
import com.idp.web.shift.service.ShiftService;
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
 * 班次controller
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
@RequestMapping("/shift")
public class ShiftController extends BaseController {

	private Logger logger = Logger.getLogger(ShiftController.class);

	@Resource
	private ShiftService shiftService;
	
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
		return "shift/shiftSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param shift
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Shift shift,Page<Shift> page,HttpServletRequest request){
		try {
			request.setAttribute("page", shiftService.findByPage(shift, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "shift/shiftList";
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
	@RequestMapping("/shift")
	public String shift(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Shift shift = shiftService.getById(id);
				request.setAttribute("shift", shift);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "shift/shift";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param shift
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Shift shift){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(shift.getId())){
				shift.setUpdateUser(getCurrentUser().getUsername());
				shift.setUpdateDate(new Date());
				shiftService.update(shift);
			}
			// 新增
			else{
				shift.setUpdateUser(getCurrentUser().getUsername());
				shift.setUpdateDate(new Date());
				shift.setCreateUser(getCurrentUser().getUsername());
				shift.setCreateDate(new Date());
				shiftService.add(shift);
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
			shiftService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
