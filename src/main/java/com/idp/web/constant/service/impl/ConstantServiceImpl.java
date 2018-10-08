package com.idp.web.constant.service.impl;
import com.idp.web.constant.service.ConstantService;
import com.idp.web.constant.dao.ConstantDao;
import com.idp.web.constant.entity.Constant;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 系统常量service实现类
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
@Service("constantService")
public class ConstantServiceImpl implements ConstantService {

	@Resource
	private ConstantDao constantDao;
	
	@Override
	public Page<Constant> findByPage(Constant constant, Page<Constant> page) {
		page.setResult(constantDao.find(constant, page));
		return page;
	}
	
	@Override
	public List<Constant> findBySearch(Constant constant) {
		return constantDao.find(constant);
	}
	
	@Override
	public Constant getById(String id) {
		return constantDao.getById(id);
	}

	@Override
	public void add(Constant constant) {
		constant.setId(ResourceUtils.getUUID());
		constantDao.add(constant);
	}
	
	@Override
	public void update(Constant constant) {
		constantDao.updateNotNull(constant);
	}

	@Override
	public void delete(String id) {
		constantDao.delete(id);
	}
 	
}