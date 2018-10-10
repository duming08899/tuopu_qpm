<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="col-md-12">
    <div class="panel-search">
        <form class="form-inline" action="/constant/list">
            <div class="form-group">
                <label for="nameCn" class="control-label">中文名称：</label>
                <input type="text" name="nameCn" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="nameEn" class="control-label">英文名称：</label>
                <input type="text" name="nameEn" class="form-control"/>
            </div>
            <div class="form-group">
                <label for="type" class="control-label">类型：</label>
                <select name="type" class="form-control">
                    <option value="">全部</option>
                    <option value="10">启用状态</option>
                    <option value="20">计量单位</option>
                    <option value="30">商品类型</option>
                </select>
            </div>
        </form>
        <div class="btn-div">
            <div class="div-left">
                <button type="button" class="btn btn-warning" onclick="add('/constant/constant')">
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