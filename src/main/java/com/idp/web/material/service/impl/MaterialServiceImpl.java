package com.idp.web.material.service.impl;
import com.idp.web.material.service.MaterialService;
import com.idp.web.material.dao.MaterialDao;
import com.idp.web.material.entity.Material;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 原材料管理service实现类
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
@Service("materialService")
public class MaterialServiceImpl implements MaterialService {

	@Resource
	private MaterialDao materialDao;
	
	@Override
	public Page<Material> findByPage(Material material, Page<Material> page) {
		page.setResult(materialDao.find(material, page));
		return page;
	}
	
	@Override
	public List<Material> findBySearch(Material material) {
		return materialDao.find(material);
	}
	
	@Override
	public Material getById(String id) {
		return materialDao.getById(id);
	}

	@Override
	public void add(Material material) {
		material.setId(ResourceUtils.getUUID());
		materialDao.add(material);
	}
	
	@Override
	public void update(Material material) {
		materialDao.updateNotNull(material);
	}

	@Override
	public void delete(String id) {
		materialDao.delete(id);
	}
 	
}