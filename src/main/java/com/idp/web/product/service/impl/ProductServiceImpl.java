package com.idp.web.product.service.impl;
import com.idp.web.product.service.ProductService;
import com.idp.web.product.dao.ProductDao;
import com.idp.web.product.entity.Product;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 商品service实现类
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
@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Resource
	private ProductDao productDao;
	
	@Override
	public Page<Product> findByPage(Product product, Page<Product> page) {
		page.setResult(productDao.find(product, page));
		return page;
	}
	
	@Override
	public List<Product> findBySearch(Product product) {
		return productDao.find(product);
	}
	
	@Override
	public Product getById(String id) {
		return productDao.getById(id);
	}

	@Override
	public void add(Product product) {
		product.setId(ResourceUtils.getUUID());
		productDao.add(product);
	}
	
	@Override
	public void update(Product product) {
		productDao.updateNotNull(product);
	}

	@Override
	public void delete(String id) {
		productDao.delete(id);
	}
 	
}