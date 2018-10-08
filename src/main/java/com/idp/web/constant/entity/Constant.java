package com.idp.web.constant.entity;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 
 * 系统常量实体类.
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
public class Constant extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**id*/
	private String id;
	/**中文名称*/
	private String nameCn;
	/**英文名称*/
	private String nameEn;
	/**值*/
	private String value;
	/**类型*/
	private Integer type;
	/**类型描述*/
	private String typeDecr;
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
	 *@return: String  中文名称
	 */
	public String getNameCn(){
		return this.nameCn;
	}

	/**
	 *方法: 设置String
	 *@param: String  中文名称
	 */
	public void setNameCn(String nameCn){
		this.nameCn = nameCn;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  英文名称
	 */
	public String getNameEn(){
		return this.nameEn;
	}

	/**
	 *方法: 设置String
	 *@param: String  英文名称
	 */
	public void setNameEn(String nameEn){
		this.nameEn = nameEn;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  值
	 */
	public String getValue(){
		return this.value;
	}

	/**
	 *方法: 设置String
	 *@param: String  值
	 */
	public void setValue(String value){
		this.value = value;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  类型
	 */
	public Integer getType(){
		return this.type;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  类型
	 */
	public void setType(Integer type){
		this.type = type;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  类型描述
	 */
	public String getTypeDecr(){
		return this.typeDecr;
	}

	/**
	 *方法: 设置String
	 *@param: String  类型描述
	 */
	public void setTypeDecr(String typeDecr){
		this.typeDecr = typeDecr;
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
	
	
}
