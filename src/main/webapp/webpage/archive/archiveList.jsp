<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<div class="table-scrollable">
	<table class="table table-striped table-hover table-success">
		<thead>
			<tr>
				<th>#</th>
								<th>工艺编码</th>
				<th>工艺名称</th>
				<th>拼音缩写</th>
				<th>操作人</th>
				<th>操作时间</th>
				<th>状态</th>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${page.result}" var="archive" varStatus="vs">
			<tr>
				<td>${vs.count + page.offset}</td>
					<td>${archive.arCode}</td>
					<td>${archive.arName}</td>
					<td>${archive.arPinyin}</td>
				<td>${archive.updateUser}</td>
				<td><fmt:formatDate value="${archive.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
				<td>
					<sys:constantTag type="status" value="${archive.status}" function="V" />
				</td>
				<td>
					<a href="javascript:;" class="btn btn-sm blue" onclick="update('/archive/archive?id=${archive.id}')">
						<i class="fa fa-edit"></i>编辑
					</a>
					<a href="javascript:;" class="btn btn-sm red" onclick="del('/archive/delete?id=${archive.id}')">
						<i class="fa fa-trash"></i>删除
					</a>
				</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
<div class="pageination-panel">${page}</div>