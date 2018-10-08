package com.idp.web.material.service;
import com.idp.web.material.entity.Material;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 原材料管理service接口
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
public interface MaterialService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param material
	 * @param page
	 * @return
	 */
	public Page<Material> findByPage(Material material,Page<Material> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param material
	 * @return
	 */
	public List<Material> findBySearch(Material material);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Material
	 * @return
	 */
	public Material getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param material
	 */
	public void add(Material material);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param material
	 */
	public void update(Material material);
	
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
