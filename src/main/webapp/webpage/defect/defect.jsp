<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>缺陷管理
        </div>
    </div>
    <div class="portlet-body form">
        <form id="defectForm" class="form-horizontal form-bordered" action="/defect/save" method="post">
            <div class="form-group">
                <label class="col-md-3 control-label">缺陷名称:</label>
                <div class="col-md-4">
                    <input type="text" name="defectName" class="form-control" value="${defect.defectName}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">缺陷名称(英文):</label>
                <div class="col-md-4">
                    <input type="text" name="defectNameEn" class="form-control" value="${defect.defectNameEn}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">缺陷分类:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select id="defectTypeId" name="defectTypeId" class="form-control">
                            <option value="">请选择</option>
                            <sys:constantTag type="DEFECT_TYPE" value="" function="O"/>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">备注:</label>
                <div class="col-md-4">
                    <input type="text" name="remark" class="form-control" value="${defect.remark}" maxlength="200"/>
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
            <input type="hidden" name="id" value="${defect.id}">
        </form>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
    $(function () {
        $('#defectForm').validate();
        $('#status').val(${defect.status});
        $("#defectTypeId").val('${defect.defectTypeId}')
    })
</script>