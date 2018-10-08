<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="col-md-12">
	<div class="panel-search">
	  <form class="form-inline" action="/archive/list">
      <div class="form-group">
          <label for="arCode" class="control-label">工艺编码：</label>
          <input type="text" name="arCode" class="form-control" />
      </div>
      <div class="form-group">
          <label for="arName" class="control-label">工艺名称：</label>
          <input type="text" name="arName" class="form-control" />
      </div>
      <div class="form-group">
          <label for="arPinyin" class="control-label">拼音缩写：</label>
          <input type="text" name="arPinyin" class="form-control" />
      </div>
	  </form>
	  <div class="btn-div">
			<div class="div-left">
				<button type="button" class="btn btn-warning" onclick="add('/archive/archive')">
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