package com.idp.web.archive.service.impl;
import com.idp.web.archive.service.ArchiveService;
import com.idp.web.archive.dao.ArchiveDao;
import com.idp.web.archive.entity.Archive;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 工艺描述service实现类
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
@Service("archiveService")
public class ArchiveServiceImpl implements ArchiveService {

	@Resource
	private ArchiveDao archiveDao;
	
	@Override
	public Page<Archive> findByPage(Archive archive, Page<Archive> page) {
		page.setResult(archiveDao.find(archive, page));
		return page;
	}
	
	@Override
	public List<Archive> findBySearch(Archive archive) {
		return archiveDao.find(archive);
	}
	
	@Override
	public Archive getById(String id) {
		return archiveDao.getById(id);
	}

	@Override
	public void add(Archive archive) {
		archive.setId(ResourceUtils.getUUID());
		archiveDao.add(archive);
	}
	
	@Override
	public void update(Archive archive) {
		archiveDao.updateNotNull(archive);
	}

	@Override
	public void delete(String id) {
		archiveDao.delete(id);
	}
 	
}