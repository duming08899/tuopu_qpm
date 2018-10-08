package com.idp.web.item.service.impl;
import com.idp.web.item.service.ItemService;
import com.idp.web.item.dao.ItemDao;
import com.idp.web.item.entity.Item;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 生产项目service实现类
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
@Service("itemService")
public class ItemServiceImpl implements ItemService {

	@Resource
	private ItemDao itemDao;
	
	@Override
	public Page<Item> findByPage(Item item, Page<Item> page) {
		page.setResult(itemDao.find(item, page));
		return page;
	}
	
	@Override
	public List<Item> findBySearch(Item item) {
		return itemDao.find(item);
	}
	
	@Override
	public Item getById(String id) {
		return itemDao.getById(id);
	}

	@Override
	public void add(Item item) {
		item.setId(ResourceUtils.getUUID());
		itemDao.add(item);
	}
	
	@Override
	public void update(Item item) {
		itemDao.updateNotNull(item);
	}

	@Override
	public void delete(String id) {
		itemDao.delete(id);
	}
 	
}