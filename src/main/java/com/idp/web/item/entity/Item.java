package com.idp.web.item.entity;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 
 * 生产项目实体类.
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
public class Item extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**id*/
	private String id;
	/**项目号*/
	private String itemName;
	/**生产线*/
	private String worklineId;
	/**生产车间*/
	private String workshopId;
	/**创建人ID*/
	private String createUser;
	/**创建日期*/
	private Date createDate;
	/**更新人ID*/
	private String updateUser;
	/**更新时间*/
	private Date updateDate;
	/**逻辑删除 0 正常 1已删除*/
	private Integer isDeleted;
	/**启用状态*/
	private Integer status;
	/**备注*/
	private String remark;
	
	
	/**
	 *方法: 取得String
	 *@return: String  id
	 */
	public String getId(){
		return this.id;
	}

	/**
	 *方法: 设置String
	 *@param: String  id
	 */
	public void setId(String id){
		this.id = id;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  项目号
	 */
	public String getItemName(){
		return this.itemName;
	}

	/**
	 *方法: 设置String
	 *@param: String  项目号
	 */
	public void setItemName(String itemName){
		this.itemName = itemName;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  生产线
	 */
	public String getWorklineId(){
		return this.worklineId;
	}

	/**
	 *方法: 设置String
	 *@param: String  生产线
	 */
	public void setWorklineId(String worklineId){
		this.worklineId = worklineId;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  生产车间
	 */
	public String getWorkshopId(){
		return this.workshopId;
	}

	/**
	 *方法: 设置String
	 *@param: String  生产车间
	 */
	public void setWorkshopId(String workshopId){
		this.workshopId = workshopId;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  创建人ID
	 */
	public String getCreateUser(){
		return this.createUser;
	}

	/**
	 *方法: 设置String
	 *@param: String  创建人ID
	 */
	public void setCreateUser(String createUser){
		this.createUser = createUser;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  创建日期
	 */
	public Date getCreateDate(){
		return this.createDate;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  创建日期
	 */
	public void setCreateDate(Date createDate){
		this.createDate = createDate;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  更新人ID
	 */
	public String getUpdateUser(){
		return this.updateUser;
	}

	/**
	 *方法: 设置String
	 *@param: String  更新人ID
	 */
	public void setUpdateUser(String updateUser){
		this.updateUser = updateUser;
	}
	
	/**
	 *方法: 取得Date
	 *@return: Date  更新时间
	 */
	public Date getUpdateDate(){
		return this.updateDate;
	}

	/**
	 *方法: 设置Date
	 *@param: Date  更新时间
	 */
	public void setUpdateDate(Date updateDate){
		this.updateDate = updateDate;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  逻辑删除 0 正常 1已删除
	 */
	public Integer getIsDeleted(){
		return this.isDeleted;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  逻辑删除 0 正常 1已删除
	 */
	public void setIsDeleted(Integer isDeleted){
		this.isDeleted = isDeleted;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  启用状态
	 */
	public Integer getStatus(){
		return this.status;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  启用状态
	 */
	public void setStatus(Integer status){
		this.status = status;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  备注
	 */
	public String getRemark(){
		return this.remark;
	}

	/**
	 *方法: 设置String
	 *@param: String  备注
	 */
	public void setRemark(String remark){
		this.remark = remark;
	}
	
	
}
