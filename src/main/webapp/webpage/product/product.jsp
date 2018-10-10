<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>商品
        </div>
    </div>
    <div class="portlet-body form">
        <form id="productForm" class="form-horizontal form-bordered" action="/product/save" method="post">
            <div class="form-group">
                <label class="col-md-3 control-label">商品编号:</label>
                <div class="col-md-4">
                    <c:if test="${product==null}">
                        <input type="text" name="productCode" class="form-control" value="${code}" maxlength="30"/>
                    </c:if>
                    <c:if test="${product!=null}">
                        <input type="text" name="productCode" class="form-control" value="${product.productCode}" maxlength="30"/>
                    </c:if>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">商品类型:</label>
                <div class="col-md-4">
                    <select id="productType" name="productType" class="form-control">
                        <option value="">请选择</option>
                        <sys:constantTag type="P_TYPE" value="" function="O"/>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">商品名称:</label>
                <div class="col-md-4">
                    <input type="text" name="productName" class="form-control" value="${product.productName}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">计量单位:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select name="productUnit" class="form-control">
                            <option value="">请选择</option>
                            <sys:constantTag type="UNIT" value="" function="O"/>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">规格:</label>
                <div class="col-md-4">
                    <input type="text" name="productStandard" class="form-control" value="${product.productStandard}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">产地:</label>
                <div class="col-md-4">
                    <input type="text" name="productPlace" class="form-control" value="${product.productPlace}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">品牌:</label>
                <div class="col-md-4">
                    <input type="text" name="productBrand" class="form-control" value="${product.productBrand}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">颜色:</label>
                <div class="col-md-4">
                    <input type="text" name="productColor" class="form-control" value="${product.productColor}" maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">价格:</label>
                <div class="col-md-4">
                    <input type="text" name="productPrice" class="form-control" value="${product.productPrice}" maxlength="6"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">来源:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select name="productSource" class="form-control">
                            <option value="">请选择</option>
                            <option value="1">Option 1</option>
                            <option value="2">Option 2</option>
                            <option value="3">Option 3</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">是否完成bom:</label>
                <div class="col-md-4">
                    <input type="text" name="isBom" class="form-control" value="${product.isBom}" maxlength="10"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">备注:</label>
                <div class="col-md-4">
                    <input type="text" name="remark" class="form-control" value="${product.remark}" maxlength="200"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">启用状态:</label>
                <div class="col-md-4">
                    <select id="status" name="status" class="form-control" required>
                        <option value="0">启用</option>
                        <option value="1">停用</option>
                    </select>
                </div>
            </div>
            <div class="form-actions">
                <div class="col-md-9 col-md-offset-3">
                    <button type="button" class="btn btn-primary" onclick="save(this)">
                        <spring:message code="btn.save"></spring:message>
                    </button>
                    <button type="reset" class="btn btn-default" onclick="cancel()">
                        <spring:message code="btn.return"></spring:message>
                    </button>
                </div>
            </div>
            <input type="hidden" name="id" value="${product.id}">
        </form>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
    $(function () {
        $('#productForm').validate();
        $('#status').val(${product.status});
        $("#productType").val('${product.productType}');
    })
</script>