package com.idp.web.shift.service.impl;
import com.idp.web.shift.service.ShiftService;
import com.idp.web.shift.dao.ShiftDao;
import com.idp.web.shift.entity.Shift;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;

/**
 * 
 * 班次service实现类
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
@Service("shiftService")
public class ShiftServiceImpl implements ShiftService {

	@Resource
	private ShiftDao shiftDao;
	
	@Override
	public Page<Shift> findByPage(Shift shift, Page<Shift> page) {
		page.setResult(shiftDao.find(shift, page));
		return page;
	}
	
	@Override
	public List<Shift> findBySearch(Shift shift) {
		return shiftDao.find(shift);
	}
	
	@Override
	public Shift getById(String id) {
		return shiftDao.getById(id);
	}

	@Override
	public void add(Shift shift) {
		shift.setId(ResourceUtils.getUUID());
		shiftDao.add(shift);
	}
	
	@Override
	public void update(Shift shift) {
		shiftDao.updateNotNull(shift);
	}

	@Override
	public void delete(String id) {
		shiftDao.delete(id);
	}
 	
}