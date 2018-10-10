<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="table-scrollable">
    <table class="table table-striped table-hover table-success">
        <thead>
        <tr>
            <th>#</th>
            <th>商品编号</th>
            <th>商品类型</th>
            <th>商品名称</th>
            <th>计量单位</th>
            <th>价格</th>
            <th>来源</th>
            <th>BOM</th>
            <th>操作人</th>
            <th>操作时间</th>
            <th>状态</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${page.result}" var="product" varStatus="vs">
            <tr>
                <td>${vs.count + page.offset}</td>
                <td>${product.productCode}</td>
                <td><sys:constantTag type="P_TYPE" value="${product.productType}" function="V"/></td>
                <td>${product.productName}</td>
                <td><sys:constantTag type="UNIT" value="${product.productUnit}" function="V"/></td>
                <td>${product.productPrice}</td>
                <td>${product.productSource}</td>
                <td>${product.isBom}</td>
                <td>${product.updateUser}</td>
                <td><fmt:formatDate value="${product.updateDate}" pattern="yyyy-MM-dd HH:mm:ss"/></td>
                <td>
                    <sys:constantTag type="status" value="${product.status}" function="V"/>
                </td>
                <td>
                    <a href="javascript:;" class="btn btn-sm blue" onclick="update('/product/product?id=${product.id}')">
                        <i class="fa fa-edit"></i>编辑
                    </a>
                    <a href="javascript:;" class="btn btn-sm red" onclick="del('/product/delete?id=${product.id}')">
                        <i class="fa fa-trash"></i>删除
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
<div class="pageination-panel">${page}</div>