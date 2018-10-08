package com.idp.web.defect.service.impl;
import com.idp.web.defect.service.DefectService;
import com.idp.web.defect.dao.DefectDao;
import com.idp.web.defect.entity.Defect;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 缺陷管理service实现类
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
@Service("defectService")
public class DefectServiceImpl implements DefectService {

	@Resource
	private DefectDao defectDao;
	
	@Override
	public Page<Defect> findByPage(Defect defect, Page<Defect> page) {
		page.setResult(defectDao.find(defect, page));
		return page;
	}
	
	@Override
	public List<Defect> findBySearch(Defect defect) {
		return defectDao.find(defect);
	}
	
	@Override
	public Defect getById(String id) {
		return defectDao.getById(id);
	}

	@Override
	public void add(Defect defect) {
		defect.setId(ResourceUtils.getUUID());
		defectDao.add(defect);
	}
	
	@Override
	public void update(Defect defect) {
		defectDao.updateNotNull(defect);
	}

	@Override
	public void delete(String id) {
		defectDao.delete(id);
	}
 	
}