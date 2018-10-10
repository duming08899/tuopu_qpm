<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>系统常量
        </div>
    </div>
    <div class="portlet-body form">
        <form id="constantForm" class="form-horizontal form-bordered" action="/constant/save" method="post">
            <div class="form-group">
                <label class="col-md-3 control-label">中文名称:</label>
                <div class="col-md-4">
                    <input type="text" name="nameCn" class="form-control" value="${constant.nameCn}" maxlength="30"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">英文名称:</label>
                <div class="col-md-4">
                    <input type="text" name="nameEn" class="form-control" value="${constant.nameEn}" maxlength="30"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">值:</label>
                <div class="col-md-4">
                    <input type="text" name="value" class="form-control" value="${constant.value}" maxlength="30"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">类型:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select id="type" name="type" class="form-control">
                            <option value="">请选择</option>
                            <option value="10">启用状态</option>
                            <option value="20">计量单位</option>
                            <option value="30">商品类型</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">类型描述:</label>
                <div class="col-md-4">
                    <input type="text" name="typeDecr" class="form-control" value="${constant.typeDecr}"
                           maxlength="40"/>
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
            <input type="hidden" name="id" value="${constant.id}">
        </form>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
    $(function () {
        $('#constantForm').validate();
        $('#status').val(${constant.status});
        $("#type").val(${constant.type});
    })
</script>