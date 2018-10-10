<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="table-scrollable">
    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>#</th>
            <th>typeCode</th>
            <th>typeSeq</th>
            <th>操作人</th>
            <th>操作时间</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.result}" var="sysSeq" varStatus="vs">
            <tr>
                <td>${vs.count + page.offset}</td>
                <td>${sysSeq.typeCode}</td>
                <td>${sysSeq.typeSeq}</td>
                <td>${sysSeq.updateUser}</td>
                <td><fmt:formatDate value="${sysSeq.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>
                    <a href="javascript:;" class="btn btn-sm blue" onclick="update('/sysSeq/sysSeq?id=${sysSeq.id}')">
                        <i class="fa fa-edit"></i>编辑
                    </a>
                    <a href="javascript:;" class="btn btn-sm red" onclick="del('/sysSeq/delete?id=${sysSeq.id}')">
                        <i class="fa fa-trash"></i>删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="pageination-panel">${page}</div>