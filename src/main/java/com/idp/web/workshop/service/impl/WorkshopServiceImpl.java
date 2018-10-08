package com.idp.web.workshop.service.impl;
import com.idp.web.workshop.service.WorkshopService;
import com.idp.web.workshop.dao.WorkshopDao;
import com.idp.web.workshop.entity.Workshop;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 生产车间service实现类
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
@Service("workshopService")
public class WorkshopServiceImpl implements WorkshopService {

	@Resource
	private WorkshopDao workshopDao;
	
	@Override
	public Page<Workshop> findByPage(Workshop workshop, Page<Workshop> page) {
		page.setResult(workshopDao.find(workshop, page));
		return page;
	}
	
	@Override
	public List<Workshop> findBySearch(Workshop workshop) {
		return workshopDao.find(workshop);
	}
	
	@Override
	public Workshop getById(String id) {
		return workshopDao.getById(id);
	}

	@Override
	public void add(Workshop workshop) {
		workshop.setId(ResourceUtils.getUUID());
		workshopDao.add(workshop);
	}
	
	@Override
	public void update(Workshop workshop) {
		workshopDao.updateNotNull(workshop);
	}

	@Override
	public void delete(String id) {
		workshopDao.delete(id);
	}
 	
}