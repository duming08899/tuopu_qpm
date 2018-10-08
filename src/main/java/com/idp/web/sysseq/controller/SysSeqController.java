package com.idp.web.sysseq.controller;
import com.idp.web.sysseq.entity.SysSeq;
import com.idp.web.sysseq.service.SysSeqService;
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
 * 序列管理controller
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
@RequestMapping("/sysSeq")
public class SysSeqController extends BaseController {

	private Logger logger = Logger.getLogger(SysSeqController.class);

	@Resource
	private SysSeqService sysSeqService;
	
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
		return "sysseq/sysSeqSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param sysSeq
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(SysSeq sysSeq,Page<SysSeq> page,HttpServletRequest request){
		try {
			request.setAttribute("page", sysSeqService.findByPage(sysSeq, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "sysseq/sysSeqList";
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
	@RequestMapping("/sysSeq")
	public String sysSeq(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				SysSeq sysSeq = sysSeqService.getById(id);
				request.setAttribute("sysSeq", sysSeq);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "sysseq/sysSeq";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param sysSeq
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(SysSeq sysSeq){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(sysSeq.getId())){
				sysSeq.setUpdateUser(getCurrentUser().getUsername());
				sysSeq.setUpdateDate(new Date());
				sysSeqService.update(sysSeq);
			}
			// 新增
			else{
				sysSeq.setUpdateUser(getCurrentUser().getUsername());
				sysSeq.setUpdateDate(new Date());
				sysSeq.setCreateUser(getCurrentUser().getUsername());
				sysSeq.setCreateDate(new Date());
				sysSeqService.add(sysSeq);
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
			sysSeqService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
