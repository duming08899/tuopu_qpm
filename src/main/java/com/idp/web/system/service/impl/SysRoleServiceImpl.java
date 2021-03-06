package com.idp.web.system.service.impl;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;

import com.idp.common.persistence.Page;
import com.idp.common.util.ResourceUtils;
import com.idp.web.system.dao.SysRoleDao;
import com.idp.web.system.dao.SysRoleMenuDao;
import com.idp.web.system.entity.SysRole;
import com.idp.web.system.entity.SysRoleMenu;
import com.idp.web.system.service.SysRoleService;

/**
 * 
 * 角色管理service实现类
 * 
 * <pre>
 * 	历史记录：
 * 	2016-08-01 22:42 King
 * 	新建文件
 * </pre>
 * 
 * @author 
 * <pre>
 * SD
 * 	King
 * PG
 *	King
 * UT
 *
 * MA
 * </pre>
 * @version $Rev$
 *
 * <p/> $Id$
 *
 */
@Service("sysRoleService")
public class SysRoleServiceImpl implements SysRoleService {

	@Resource
	private SysRoleDao sysRoleDao;
	@Resource
	private SysRoleMenuDao sysRoleMenuDao;
	
	@Override
	public Page<SysRole> findByPage(SysRole sysRole, Page<SysRole> page) {

		page.setResult(sysRoleDao.find(sysRole, page));
		
		return page;
	}
	
	@Override
	public List<SysRole> findBySearch(SysRole sysRole) {

		return sysRoleDao.find(sysRole);
	}
	
	@Override
	public SysRole getById(String id) {

		return sysRoleDao.getById(id);
	}

	@Override
	public void add(SysRole sysRole) {

		sysRole.setId(ResourceUtils.getUUID());
		sysRoleDao.add(sysRole);
		
		if(StringUtils.isNotEmpty(sysRole.getMenuIds())){
			List<SysRoleMenu> roleMenuList = new ArrayList<SysRoleMenu>();
			for(String menuId : sysRole.getMenuIds().split(",")){
				if(StringUtils.isNotEmpty(menuId)){
					SysRoleMenu roleMenu = new SysRoleMenu();
					roleMenu.setId(ResourceUtils.getUUID());
					roleMenu.setMenuId(menuId);
					roleMenu.setRoleId(sysRole.getId());
					roleMenuList.add(roleMenu);
				}
			}
			if(roleMenuList.size() > 0){
				sysRoleMenuDao.batchAdd(roleMenuList);
			}
		}
	}
	
	@Override
	public void update(SysRole sysRole) {
		
		sysRoleDao.update(sysRole);
		
		// 删除旧数据
		sysRoleMenuDao.deleteByRoleId(sysRole.getId());
		
		if(StringUtils.isNotEmpty(sysRole.getMenuIds())){
			List<SysRoleMenu> roleMenuList = new ArrayList<SysRoleMenu>();
			for(String menuId : sysRole.getMenuIds().split(",")){
				if(StringUtils.isNotEmpty(menuId)){
					SysRoleMenu roleMenu = new SysRoleMenu();
					roleMenu.setId(ResourceUtils.getUUID());
					roleMenu.setMenuId(menuId);
					roleMenu.setRoleId(sysRole.getId());
					roleMenuList.add(roleMenu);
				}
			}
			if(roleMenuList.size() > 0){
				sysRoleMenuDao.batchAdd(roleMenuList);
			}
		}
	}

	@Override
	public void delete(String id) {

		sysRoleDao.delete(id);
		// 删除旧数据
		sysRoleMenuDao.deleteByRoleId(id);
	}

	@Override
	public List<String> findByRoleId(String roleId) {
		
		return sysRoleMenuDao.findByRoleId(roleId);
	}
 	
}