<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="col-md-12">
	<div class="panel-search">
	  <form class="form-inline" action="/shift/list">
      <div class="form-group">
          <label for="shiftName" class="control-label">班次名称：</label>
          <input type="text" name="shiftName" class="form-control" />
      </div>
      <div class="form-group">
          <label for="shiftManager" class="control-label">班组长：</label>
          <input type="text" name="shiftManager" class="form-control" />
      </div>
      <div class="form-group">
          <label for="workshopId" class="control-label">生产车间：</label>
          <select name="workshopId" class="form-control">
          	<option value="">全部</option>
          	<option value="1">Option 1</option>
						<option value="2">Option 2</option>
          </select>
      </div>
	  </form>
	  <div class="btn-div">
			<div class="div-left">
				<button type="button" class="btn btn-warning" onclick="add('/shift/shift')">
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