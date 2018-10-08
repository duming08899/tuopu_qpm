package com.idp.web.workshop.service;
import com.idp.web.workshop.entity.Workshop;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 生产车间service接口
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
public interface WorkshopService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param workshop
	 * @param page
	 * @return
	 */
	public Page<Workshop> findByPage(Workshop workshop,Page<Workshop> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param workshop
	 * @return
	 */
	public List<Workshop> findBySearch(Workshop workshop);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Workshop
	 * @return
	 */
	public Workshop getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param workshop
	 */
	public void add(Workshop workshop);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param workshop
	 */
	public void update(Workshop workshop);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	删除
	 * </pre>
	 * 
	 * @param id
	 */
	public void delete(String id);
}
