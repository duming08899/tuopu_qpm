package com.idp.web.archive.entity;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 
 * 工艺描述实体类.
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
public class Archive extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**主键*/
	private String id;
	/**工艺编码*/
	private String arCode;
	/**工艺名称*/
	private String arName;
	/**拼音缩写*/
	private String arPinyin;
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
	 *@return: String  主键
	 */
	public String getId(){
		return this.id;
	}

	/**
	 *方法: 设置String
	 *@param: String  主键
	 */
	public void setId(String id){
		this.id = id;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  工艺编码
	 */
	public String getArCode(){
		return this.arCode;
	}

	/**
	 *方法: 设置String
	 *@param: String  工艺编码
	 */
	public void setArCode(String arCode){
		this.arCode = arCode;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  工艺名称
	 */
	public String getArName(){
		return this.arName;
	}

	/**
	 *方法: 设置String
	 *@param: String  工艺名称
	 */
	public void setArName(String arName){
		this.arName = arName;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  拼音缩写
	 */
	public String getArPinyin(){
		return this.arPinyin;
	}

	/**
	 *方法: 设置String
	 *@param: String  拼音缩写
	 */
	public void setArPinyin(String arPinyin){
		this.arPinyin = arPinyin;
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
