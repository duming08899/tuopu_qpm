<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="table-scrollable">
    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>#</th>
            <th>常量类型</th>
            <th>中文名称</th>
            <th>英文名称</th>
            <th>常量值</th>
            <th>操作人</th>
            <th>操作时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.result}" var="constant" varStatus="vs">
            <tr>
                <td>${vs.count + page.offset}</td>
                <td>
                    <c:if test="${constant.type==10}">启用状态</c:if>
                    <c:if test="${constant.type==20}">原材料单位</c:if>
                    <c:if test="${constant.type==30}">原材料类型</c:if>
                    <c:if test="${constant.type==40}">缺陷类型</c:if>
                </td>
                <td>${constant.nameCn}</td>
                <td>${constant.nameEn}</td>
                <td>${constant.value}</td>
                <td>${constant.updateUser}</td>
                <td><fmt:formatDate value="${constant.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><sys:constantTag type="status" value="${constant.status}" function="V"/></td>
                <td>
                    <a href="javascript:;" class="btn btn-sm blue"
                       onclick="update('/constant/constant?id=${constant.id}')">
                        <i class="fa fa-edit"></i>编辑
                    </a>
                    <a href="javascript:;" class="btn btn-sm red" onclick="del('/constant/delete?id=${constant.id}')">
                        <i class="fa fa-trash"></i>删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="pageination-panel">${page}</div>