<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="col-md-12">
	<div class="panel-search">
	  <form class="form-inline" action="/product/list">
      <div class="form-group">
          <label for="productCode" class="control-label">商品编号：</label>
          <input type="text" name="productCode" class="form-control" />
      </div>
      <div class="form-group">
          <label for="productType" class="control-label">商品类型：</label>
          <input type="text" name="productType" class="form-control" />
      </div>
      <div class="form-group">
          <label for="productName" class="control-label">商品名称：</label>
          <input type="text" name="productName" class="form-control" />
      </div>
      <div class="form-group">
          <label for="productSource" class="control-label">来源：</label>
          <select name="productSource" class="form-control">
          	<option value="">全部</option>
          	<option value="1">Option 1</option>
						<option value="2">Option 2</option>
          </select>
      </div>
	  </form>
	  <div class="btn-div">
			<div class="div-left">
				<button type="button" class="btn btn-warning" onclick="add('/product/product')">
					<i class="fa fa-plus"></i> <spring:message code="btn.add"></spring:message>
				</button>
			</div>
			<div class="div-right">
				<button type="button" class="btn btn-primary" onclick="search()">
					<i class="fa fa-search"></i> <spring:message code="btn.search"></spring:message>
				</button>
		    <button type="button" class="btn btn-default" onclick="reset()">
		    	<i class="fa fa-repeat"></i> <spring:message code="btn.reset"></spring:message>	
		    </button>
			</div>
		</div>
	</div>
	<div class="panel-content"></div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
	$(function(){
		search();
	});
</script>