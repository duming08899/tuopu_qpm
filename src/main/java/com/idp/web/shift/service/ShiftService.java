package com.idp.web.shift.service;
import com.idp.web.shift.entity.Shift;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 班次service接口
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
public interface ShiftService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param shift
	 * @param page
	 * @return
	 */
	public Page<Shift> findByPage(Shift shift,Page<Shift> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param shift
	 * @return
	 */
	public List<Shift> findBySearch(Shift shift);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Shift
	 * @return
	 */
	public Shift getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param shift
	 */
	public void add(Shift shift);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param shift
	 */
	public void update(Shift shift);
	
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
