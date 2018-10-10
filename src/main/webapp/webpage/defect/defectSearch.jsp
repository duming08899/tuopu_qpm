<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="col-md-12">
    <div class="panel-search">
        <form class="form-inline" action="/defect/list">
            <div class="form-group">
                <label for="defectName" class="control-label">缺陷名称：</label>
                <input type="text" name="defectName" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="defectNameEn" class="control-label">缺陷名称(英文)：</label>
                <input type="text" name="defectNameEn" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="defectTypeId" class="control-label">缺陷分类：</label>
                <select name="defectTypeId" class="form-control">
                    <option value="">全部</option>
                    <td><sys:optionsTag table="sysOrg" fieldName="orgName" function="O"/></td>
                </select>
            </div>
        </form>
        <div class="btn-div">
            <div class="div-left">
                <button type="button" class="btn btn-warning" onclick="add('/defect/defect')">
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
    $(function () {
        search();
    });
</script>