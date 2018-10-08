package com.idp.web.sysseq.service;
import com.idp.web.sysseq.entity.SysSeq;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 序列管理service接口
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
public interface SysSeqService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param sysSeq
	 * @param page
	 * @return
	 */
	public Page<SysSeq> findByPage(SysSeq sysSeq,Page<SysSeq> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param sysSeq
	 * @return
	 */
	public List<SysSeq> findBySearch(SysSeq sysSeq);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param SysSeq
	 * @return
	 */
	public SysSeq getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param sysSeq
	 */
	public void add(SysSeq sysSeq);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param sysSeq
	 */
	public void update(SysSeq sysSeq);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	删除
	 * </pre>
	 * 
	 * @param id
	 */
	public void delete(String id);
}
