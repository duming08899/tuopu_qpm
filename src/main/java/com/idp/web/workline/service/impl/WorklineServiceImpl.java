package com.idp.web.workline.service.impl;
import com.idp.web.workline.service.WorklineService;
import com.idp.web.workline.dao.WorklineDao;
import com.idp.web.workline.entity.Workline;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 生产线service实现类
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
@Service("worklineService")
public class WorklineServiceImpl implements WorklineService {

	@Resource
	private WorklineDao worklineDao;
	
	@Override
	public Page<Workline> findByPage(Workline workline, Page<Workline> page) {
		page.setResult(worklineDao.find(workline, page));
		return page;
	}
	
	@Override
	public List<Workline> findBySearch(Workline workline) {
		return worklineDao.find(workline);
	}
	
	@Override
	public Workline getById(String id) {
		return worklineDao.getById(id);
	}

	@Override
	public void add(Workline workline) {
		workline.setId(ResourceUtils.getUUID());
		worklineDao.add(workline);
	}
	
	@Override
	public void update(Workline workline) {
		worklineDao.updateNotNull(workline);
	}

	@Override
	public void delete(String id) {
		worklineDao.delete(id);
	}
 	
}