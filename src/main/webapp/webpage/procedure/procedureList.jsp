<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="table-scrollable">
    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>#</th>
            <th>工序编号</th>
            <th>工序名称</th>
            <th>工艺名称英文</th>
            <th>负责人</th>
            <th>生产车间</th>
            <th>操作人</th>
            <th>操作时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.result}" var="procedure" varStatus="vs">
            <tr>
                <td>${vs.count + page.offset}</td>
                <td>${procedure.procedureCode}</td>
                <td>${procedure.procedureName}</td>
                <td>${procedure.procedureNameEn}</td>
                <td>${procedure.procedureLeader}</td>
                <td><sys:optionsTag table="workshop" fieldName="workshopName" value="${procedure.workshopId}" function="V"/></td>
                <td>${procedure.updateUser}</td>
                <td><fmt:formatDate value="${procedure.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>
                    <sys:constantTag type="status" value="${procedure.status}" function="V"/>
                </td>
                <td>
                    <a href="javascript:;" class="btn btn-sm blue" onclick="update('/procedure/procedure?id=${procedure.id}')">
                        <i class="fa fa-edit"></i>编辑
                    </a>
                    <a href="javascript:;" class="btn btn-sm red" onclick="del('/procedure/delete?id=${procedure.id}')">
                        <i class="fa fa-trash"></i>删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="pageination-panel">${page}</div>