package com.idp.web.constant.service;
import com.idp.web.constant.entity.Constant;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 系统常量service接口
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
public interface ConstantService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param constant
	 * @param page
	 * @return
	 */
	public Page<Constant> findByPage(Constant constant,Page<Constant> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param constant
	 * @return
	 */
	public List<Constant> findBySearch(Constant constant);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Constant
	 * @return
	 */
	public Constant getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param constant
	 */
	public void add(Constant constant);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-06 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param constant
	 */
	public void update(Constant constant);
	
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
