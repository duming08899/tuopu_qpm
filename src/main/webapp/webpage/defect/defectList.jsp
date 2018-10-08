<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="table-scrollable">
    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>#</th>
            <th>缺陷名称</th>
            <th>缺陷名称(英文)</th>
            <th>缺陷分类</th>
            <th>操作人</th>
            <th>操作时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.result}" var="defect" varStatus="vs">
            <tr>
                <td>${vs.count + page.offset}</td>
                <td>${defect.defectName}</td>
                <td>${defect.defectNameEn}</td>
                <td><sys:constantTag type="DEFECT_TYPE" value="${defect.defectTypeId}" function="V"/></td>
                <td>${defect.updateUser}</td>
                <td><fmt:formatDate value="${defect.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td><sys:constantTag type="status" value="${defect.status}" function="V"/></td>
                <td>
                    <a href="javascript:;" class="btn btn-sm blue" onclick="update('/defect/defect?id=${defect.id}')">
                        <i class="fa fa-edit"></i>编辑
                    </a>
                    <a href="javascript:;" class="btn btn-sm red" onclick="del('/defect/delete?id=${defect.id}')">
                        <i class="fa fa-trash"></i>删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="pageination-panel">${page}</div>