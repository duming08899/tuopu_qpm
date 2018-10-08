<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>生产项目
        </div>
    </div>
    <div class="portlet-body form">
        <form id="itemForm" class="form-horizontal form-bordered" action="/item/save" method="post">
            <div class="form-group">
                <label class="col-md-3 control-label">生产车间:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select id="workshopId" name="workshopId" class="form-control">
                            <option value="">请选择</option>
                            <sys:optionsTag table="workshop" fieldName="workshopName" function="O"/>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">生产线:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select id="worklineId" name="worklineId" class="form-control">
                            <option value="">请选择</option>
                            <sys:optionsTag table="workline" fieldName="worklineName" function="O"/>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">项目名称:</label>
                <div class="col-md-4">
                    <input type="text" name="itemName" class="form-control" value="${item.itemName}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">备注:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <textarea name="remark" rows="5" class="form-control" maxlength="500">${item.remark}</textarea>
                    </div>
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
            <input type="hidden" name="id" value="${item.id}">
        </form>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
    $(function () {
        $('#itemForm').validate();
        $('#status').val(${item.status});
        $("#workshopId").val('${item.workshopId}')
        $("#worklineId").val('${item.worklineId}')
    })
</script>