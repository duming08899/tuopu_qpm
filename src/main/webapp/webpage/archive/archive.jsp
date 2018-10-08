<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="portlet box green">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-gift"></i>工艺描述
		</div>
  </div>
  <div class="portlet-body form">
  	<form id="archiveForm" class="form-horizontal form-bordered" action="/archive/save" method="post">
  		<div class="form-group">
        <label class="col-md-3 control-label">工艺编码:</label>
        <div class="col-md-4">
	          <input type="text" name="arCode" class="form-control" value="${archive.arCode}"  maxlength="20"/>
        </div>
      </div>
  		<div class="form-group">
        <label class="col-md-3 control-label">工艺名称:</label>
        <div class="col-md-4">
	          <input type="text" name="arName" class="form-control" value="${archive.arName}"  maxlength="20"/>
        </div>
      </div>
  		<div class="form-group">
        <label class="col-md-3 control-label">拼音缩写:</label>
        <div class="col-md-4">
	          <input type="text" name="arPinyin" class="form-control" value="${archive.arPinyin}"  maxlength="40"/>
        </div>
      </div>
	  <div class="form-group">
		<label class="col-md-3 control-label">启用状态:</label>
		<div class="col-md-4">
            <select id="status" name="status" class="form-control" required>
                <option value="0">启用</option>
                <option value="1">停用</option>
            </select>
		</div>
      </div>
      <div class="form-actions">
        <div class="col-md-9 col-md-offset-3">
          <button type="button" class="btn btn-primary" onclick="save(this)">
          	<spring:message code="btn.save"></spring:message>
          </button>
          <button type="reset" class="btn btn-default" onclick="cancel()">
          	<spring:message code="btn.return"></spring:message>
          </button>
        </div>
      </div>
      <input type="hidden" name="id" value="${archive.id}">
  	</form>
  </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
	$(function(){
		$('#archiveForm').validate();
		$('#status').val(${archive.status});
	})
</script>