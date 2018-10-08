package com.idp.web.procedure.service.impl;
import com.idp.web.procedure.service.ProcedureService;
import com.idp.web.procedure.dao.ProcedureDao;
import com.idp.web.procedure.entity.Procedure;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 工序管理service实现类
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
@Service("procedureService")
public class ProcedureServiceImpl implements ProcedureService {

	@Resource
	private ProcedureDao procedureDao;
	
	@Override
	public Page<Procedure> findByPage(Procedure procedure, Page<Procedure> page) {
		page.setResult(procedureDao.find(procedure, page));
		return page;
	}
	
	@Override
	public List<Procedure> findBySearch(Procedure procedure) {
		return procedureDao.find(procedure);
	}
	
	@Override
	public Procedure getById(String id) {
		return procedureDao.getById(id);
	}

	@Override
	public void add(Procedure procedure) {
		procedure.setId(ResourceUtils.getUUID());
		procedureDao.add(procedure);
	}
	
	@Override
	public void update(Procedure procedure) {
		procedureDao.updateNotNull(procedure);
	}

	@Override
	public void delete(String id) {
		procedureDao.delete(id);
	}
 	
}