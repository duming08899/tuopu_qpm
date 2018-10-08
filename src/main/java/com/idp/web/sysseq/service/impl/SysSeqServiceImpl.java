package com.idp.web.sysseq.service.impl;
import com.idp.web.sysseq.service.SysSeqService;
import com.idp.web.sysseq.dao.SysSeqDao;
import com.idp.web.sysseq.entity.SysSeq;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 序列管理service实现类
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
@Service("sysSeqService")
public class SysSeqServiceImpl implements SysSeqService {

	@Resource
	private SysSeqDao sysSeqDao;
	
	@Override
	public Page<SysSeq> findByPage(SysSeq sysSeq, Page<SysSeq> page) {
		page.setResult(sysSeqDao.find(sysSeq, page));
		return page;
	}
	
	@Override
	public List<SysSeq> findBySearch(SysSeq sysSeq) {
		return sysSeqDao.find(sysSeq);
	}
	
	@Override
	public SysSeq getById(String id) {
		return sysSeqDao.getById(id);
	}

	@Override
	public void add(SysSeq sysSeq) {
		sysSeq.setId(ResourceUtils.getUUID());
		sysSeqDao.add(sysSeq);
	}
	
	@Override
	public void update(SysSeq sysSeq) {
		sysSeqDao.updateNotNull(sysSeq);
	}

	@Override
	public void delete(String id) {
		sysSeqDao.delete(id);
	}
 	
}