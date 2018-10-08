package com.idp.web.item.controller;
import com.idp.web.item.entity.Item;
import com.idp.web.item.service.ItemService;
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
 * 生产项目controller
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
@RequestMapping("/item")
public class ItemController extends BaseController {

	private Logger logger = Logger.getLogger(ItemController.class);

	@Resource
	private ItemService itemService;
	
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
		return "item/itemSearch";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param item
	 * @param page
	 * @param request
	 * @return
	 */
	@RequestMapping("/list")
	public String list(Item item,Page<Item> page,HttpServletRequest request){
		try {
			request.setAttribute("page", itemService.findByPage(item, page));
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "item/itemList";
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
	@RequestMapping("/item")
	public String item(String id,HttpServletRequest request){
		try {
			if(ValidateUtils.isNotEmpty(id)){
				Item item = itemService.getById(id);
				request.setAttribute("item", item);
			}
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
		}
		return "item/item";
	}
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	保存
	 * </pre>
	 * 
	 * @param item
	 * @return
	 */
	@RequestMapping("/save")
	@ResponseBody
	public String save(Item item){
		JSONObject json = new JSONObject();
		try {
			// 修改
			if(ValidateUtils.isNotEmpty(item.getId())){
				item.setUpdateUser(getCurrentUser().getUsername());
				item.setUpdateDate(new Date());
				itemService.update(item);
			}
			// 新增
			else{
				item.setUpdateUser(getCurrentUser().getUsername());
				item.setUpdateDate(new Date());
				item.setCreateUser(getCurrentUser().getUsername());
				item.setCreateDate(new Date());
				itemService.add(item);
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
			itemService.delete(id);
			json.put("result", "delete_success");
		} catch (Exception e) {
			logger.error(e.getMessage(), e);
			json.put("result", "delete_fail");
		}
		return json.toString();
	}
}
