<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="table-scrollable">
    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>#</th>
            <th>原材料编码</th>
            <th>原材料名称</th>
            <th>单价</th>
            <th>原材料类型</th>
            <th>单位</th>
            <th>操作人</th>
            <th>操作时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.result}" var="material" varStatus="vs">
            <tr>
                <td>${vs.count + page.offset}</td>
                <td>${material.materialCode}</td>
                <td>${material.materialName}</td>
                <td>${material.materialPrice}</td>
                <td><sys:constantTag type="MATERIAL_TYPE" value="${material.materialType}" function="V"/></td>
                <td><sys:constantTag type="unit" value="${material.materialUnit}" function="V"/></td>
                <td>${material.updateUser}</td>
                <td><fmt:formatDate value="${material.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>
                    <sys:constantTag type="status" value="${material.status}" function="V"/>
                </td>
                <td>
                    <a href="javascript:;" class="btn btn-sm blue"
                       onclick="update('/material/material?id=${material.id}')">
                        <i class="fa fa-edit"></i>编辑
                    </a>
                    <a href="javascript:;" class="btn btn-sm red" onclick="del('/material/delete?id=${material.id}')">
                        <i class="fa fa-trash"></i>删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="pageination-panel">${page}</div>