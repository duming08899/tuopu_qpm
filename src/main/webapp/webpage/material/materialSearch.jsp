<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="col-md-12">
    <div class="panel-search">
        <form class="form-inline" action="/material/list">
            <div class="form-group">
                <label for="materialCode" class="control-label">原材料编码：</label>
                <input type="text" name="materialCode" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="materialName" class="control-label">原材料名称：</label>
                <input type="text" name="materialName" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="materialType" class="control-label">原材料类型：</label>
                <select name="materialType" class="form-control">
                    <option value="">全部</option>
                    <sys:constantTag type="MATERIAL_TYPE" value="" function="O"/>

                </select>
            </div>
        </form>
        <div class="btn-div">
            <div class="div-left">
                <button type="button" class="btn btn-warning" onclick="add('/material/material')">
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