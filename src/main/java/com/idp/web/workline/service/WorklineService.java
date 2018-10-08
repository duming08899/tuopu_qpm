package com.idp.web.workline.service;
import com.idp.web.workline.entity.Workline;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 生产线service接口
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
public interface WorklineService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param workline
	 * @param page
	 * @return
	 */
	public Page<Workline> findByPage(Workline workline,Page<Workline> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param workline
	 * @return
	 */
	public List<Workline> findBySearch(Workline workline);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Workline
	 * @return
	 */
	public Workline getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param workline
	 */
	public void add(Workline workline);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param workline
	 */
	public void update(Workline workline);
	
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
