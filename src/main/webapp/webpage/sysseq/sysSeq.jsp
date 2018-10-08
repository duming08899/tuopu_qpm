<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="portlet box green">
	<div class="portlet-title">
		<div class="caption">
			<i class="fa fa-gift"></i>序列管理
		</div>
  </div>
  <div class="portlet-body form">
  	<form id="sysSeqForm" class="form-horizontal form-bordered" action="/sysSeq/save" method="post">
  		<div class="form-group">
        <label class="col-md-3 control-label">typeCode:</label>
        <div class="col-md-4">
	          <input type="text" name="typeCode" class="form-control" value="${sysSeq.typeCode}"  maxlength="20"/>
        </div>
      </div>
  		<div class="form-group">
        <label class="col-md-3 control-label">typeSeq:</label>
        <div class="col-md-4">
	          <input type="text" name="typeSeq" class="form-control" value="${sysSeq.typeSeq}"  maxlength="19"/>
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
      <input type="hidden" name="id" value="${sysSeq.id}">
  	</form>
  </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
	$(function(){
		$('#sysSeqForm').validate();
		$('#status').val(${sysSeq.status});
	})
</script>