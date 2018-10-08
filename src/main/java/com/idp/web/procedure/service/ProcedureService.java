package com.idp.web.procedure.service;
import com.idp.web.procedure.entity.Procedure;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 工序管理service接口
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
public interface ProcedureService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param procedure
	 * @param page
	 * @return
	 */
	public Page<Procedure> findByPage(Procedure procedure,Page<Procedure> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param procedure
	 * @return
	 */
	public List<Procedure> findBySearch(Procedure procedure);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Procedure
	 * @return
	 */
	public Procedure getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param procedure
	 */
	public void add(Procedure procedure);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-08 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param procedure
	 */
	public void update(Procedure procedure);
	
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
