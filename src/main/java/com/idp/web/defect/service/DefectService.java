package com.idp.web.defect.service;
import com.idp.web.defect.entity.Defect;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 缺陷管理service接口
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
public interface DefectService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param defect
	 * @param page
	 * @return
	 */
	public Page<Defect> findByPage(Defect defect,Page<Defect> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param defect
	 * @return
	 */
	public List<Defect> findBySearch(Defect defect);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Defect
	 * @return
	 */
	public Defect getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param defect
	 */
	public void add(Defect defect);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-07 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param defect
	 */
	public void update(Defect defect);
	
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
