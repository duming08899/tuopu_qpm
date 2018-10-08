package com.idp.web.archive.service;
import com.idp.web.archive.entity.Archive;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 工艺描述service接口
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
public interface ArchiveService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param archive
	 * @param page
	 * @return
	 */
	public Page<Archive> findByPage(Archive archive,Page<Archive> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param archive
	 * @return
	 */
	public List<Archive> findBySearch(Archive archive);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Archive
	 * @return
	 */
	public Archive getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param archive
	 */
	public void add(Archive archive);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param archive
	 */
	public void update(Archive archive);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	删除
	 * </pre>
	 * 
	 * @param id
	 */
	public void delete(String id);
}
