package com.idp.web.sysseq.entity;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.idp.common.base.BaseEntity;

/**
 * 
 * 序列管理实体类.
 * 
 * <pre>
 * 	历史记录：
 * 	2018-10-08 duming
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
public class SysSeq extends BaseEntity implements Serializable {
	
	private static final long serialVersionUID = 1L;
	
	/**id*/
	private String id;
	/**typeCode*/
	private String typeCode;
	/**typeSeq*/
	private Long typeSeq;
	
	
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
	 *@return: String  typeCode
	 */
	public String getTypeCode(){
		return this.typeCode;
	}

	/**
	 *方法: 设置String
	 *@param: String  typeCode
	 */
	public void setTypeCode(String typeCode){
		this.typeCode = typeCode;
	}
	
	/**
	 *方法: 取得Long
	 *@return: Long  typeSeq
	 */
	public Long getTypeSeq(){
		return this.typeSeq;
	}

	/**
	 *方法: 设置Long
	 *@param: Long  typeSeq
	 */
	public void setTypeSeq(Long typeSeq){
		this.typeSeq = typeSeq;
	}
	
	
}
