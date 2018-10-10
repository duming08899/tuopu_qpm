package com.idp.web.product.entity;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 
 * 商品实体类.
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
public class Product extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**id*/
	private String id;
	/**商品编号*/
	private String productCode;
	/**商品类型*/
	private Integer productType;
	/**商品名称*/
	private String productName;
	/**计量单位*/
	private Integer productUnit;
	/**规格*/
	private String productStandard;
	/**产地*/
	private String productPlace;
	/**品牌*/
	private String productBrand;
	/**颜色*/
	private String productColor;
	/**价格*/
	private BigDecimal productPrice;
	/**来源*/
	private Integer productSource;
	/**是否完成bom*/
	private Integer isBom;
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
	 *@return: String  商品编号
	 */
	public String getProductCode(){
		return this.productCode;
	}

	/**
	 *方法: 设置String
	 *@param: String  商品编号
	 */
	public void setProductCode(String productCode){
		this.productCode = productCode;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  商品类型
	 */
	public Integer getProductType(){
		return this.productType;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  商品类型
	 */
	public void setProductType(Integer productType){
		this.productType = productType;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  商品名称
	 */
	public String getProductName(){
		return this.productName;
	}

	/**
	 *方法: 设置String
	 *@param: String  商品名称
	 */
	public void setProductName(String productName){
		this.productName = productName;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  计量单位
	 */
	public Integer getProductUnit(){
		return this.productUnit;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  计量单位
	 */
	public void setProductUnit(Integer productUnit){
		this.productUnit = productUnit;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  规格
	 */
	public String getProductStandard(){
		return this.productStandard;
	}

	/**
	 *方法: 设置String
	 *@param: String  规格
	 */
	public void setProductStandard(String productStandard){
		this.productStandard = productStandard;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  产地
	 */
	public String getProductPlace(){
		return this.productPlace;
	}

	/**
	 *方法: 设置String
	 *@param: String  产地
	 */
	public void setProductPlace(String productPlace){
		this.productPlace = productPlace;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  品牌
	 */
	public String getProductBrand(){
		return this.productBrand;
	}

	/**
	 *方法: 设置String
	 *@param: String  品牌
	 */
	public void setProductBrand(String productBrand){
		this.productBrand = productBrand;
	}
	
	/**
	 *方法: 取得String
	 *@return: String  颜色
	 */
	public String getProductColor(){
		return this.productColor;
	}

	/**
	 *方法: 设置String
	 *@param: String  颜色
	 */
	public void setProductColor(String productColor){
		this.productColor = productColor;
	}
	
	/**
	 *方法: 取得BigDecimal
	 *@return: BigDecimal  价格
	 */
	public BigDecimal getProductPrice(){
		return this.productPrice;
	}

	/**
	 *方法: 设置BigDecimal
	 *@param: BigDecimal  价格
	 */
	public void setProductPrice(BigDecimal productPrice){
		this.productPrice = productPrice;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  来源
	 */
	public Integer getProductSource(){
		return this.productSource;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  来源
	 */
	public void setProductSource(Integer productSource){
		this.productSource = productSource;
	}
	
	/**
	 *方法: 取得Integer
	 *@return: Integer  是否完成bom
	 */
	public Integer getIsBom(){
		return this.isBom;
	}

	/**
	 *方法: 设置Integer
	 *@param: Integer  是否完成bom
	 */
	public void setIsBom(Integer isBom){
		this.isBom = isBom;
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
