package com.idp.web.material.entity;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 
 * 原材料管理实体类.
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
public class Material extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**主键*/
	private String id;
	/**原材料编码*/
	private String materialCode;
	/**原材料名称*/
	private String materialName;
	/**单价*/
	private BigDecimal materialPrice;
	/**原材料类型*/
	private String materialType;
	/**型号规格*/
	private String materialTs;
	/**单位*/
	private String materialUnit;
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
	 *@return: String  原材料编码
	 */
	public String getMaterialCode(){
		return this.materialCode;
	}

	/**
	 *方法: 设置String
	 *@param: String  原材料编码
	 */
	public void setMaterialCode(String materialCode){
		this.materialCode = materialCode;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  原材料名称
	 */
	public String getMaterialName(){
		return this.materialName;
	}

	/**
	 *方法: 设置String
	 *@param: String  原材料名称
	 */
	public void setMaterialName(String materialName){
		this.materialName = materialName;
	}
	
	/**
	 *方法: 取得BigDecimal
	 *@return: BigDecimal  单价
	 */
	public BigDecimal getMaterialPrice(){
		return this.materialPrice;
	}

	/**
	 *方法: 设置BigDecimal
	 *@param: BigDecimal  单价
	 */
	public void setMaterialPrice(BigDecimal materialPrice){
		this.materialPrice = materialPrice;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  原材料类型
	 */
	public String getMaterialType(){
		return this.materialType;
	}

	/**
	 *方法: 设置String
	 *@param: String  原材料类型
	 */
	public void setMaterialType(String materialType){
		this.materialType = materialType;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  型号规格
	 */
	public String getMaterialTs(){
		return this.materialTs;
	}

	/**
	 *方法: 设置String
	 *@param: String  型号规格
	 */
	public void setMaterialTs(String materialTs){
		this.materialTs = materialTs;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  单位
	 */
	public String getMaterialUnit(){
		return this.materialUnit;
	}

	/**
	 *方法: 设置String
	 *@param: String  单位
	 */
	public void setMaterialUnit(String materialUnit){
		this.materialUnit = materialUnit;
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
