package com.idp.web.product.service;
import com.idp.web.product.entity.Product;
import java.util.List;

import com.idp.common.persistence.Page;

/**
 * 
 * 商品service接口
 * 
 * <pre>
 * 	历史记录：
 * 	2018-10-10 duming
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
public interface ProductService{
	
 	/**
	 * 
	 * <pre>
	 * 	2018-10-10 duming
	 * 	分页查询
	 * </pre>
	 * 
	 * @param product
	 * @param page
	 * @return
	 */
	public Page<Product> findByPage(Product product,Page<Product> page);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-10 duming
	 * 	查询
	 * </pre>
	 * 
	 * @param product
	 * @return
	 */
	public List<Product> findBySearch(Product product);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-10 duming
	 * 	通过ID查询
	 * </pre>
	 * 
	 * @param Product
	 * @return
	 */
	public Product getById(String id);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-10 duming
	 * 	新增
	 * </pre>
	 * 
	 * @param product
	 */
	public void add(Product product);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-10 duming
	 * 	修改
	 * </pre>
	 * 
	 * @param product
	 */
	public void update(Product product);
	
	/**
	 * 
	 * <pre>
	 * 	2018-10-10 duming
	 * 	删除
	 * </pre>
	 * 
	 * @param id
	 */
	public void delete(String id);
}
