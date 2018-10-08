<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="/context/mytags.jsp" %>
<div class="portlet box green">
    <div class="portlet-title">
        <div class="caption">
            <i class="fa fa-gift"></i>原材料管理
        </div>
    </div>
    <div class="portlet-body form">
        <form id="materialForm" class="form-horizontal form-bordered" action="/material/save" method="post">
            <div class="form-group">
                <label class="col-md-3 control-label">原材料编码:</label>
                <div class="col-md-4">
                    <input type="text" name="materialCode" class="form-control" value="${material.materialCode}"
                           maxlength="14"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">原材料名称:</label>
                <div class="col-md-4">
                    <input type="text" name="materialName" class="form-control" value="${material.materialName}"
                           maxlength="50"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">单价:</label>
                <div class="col-md-4">
                    <input type="text" name="materialPrice" class="form-control" value="${material.materialPrice}"
                           maxlength="6"/>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">原材料类型:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select id="materialType" name="materialType" class="form-control">
                            <option value="">请选择</option>
                            <sys:constantTag type="MATERIAL_TYPE" value="" function="O"/>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">型号规格:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <textarea name="materialTs" rows="5" class="form-control"
                                  maxlength="500">${material.materialTs}</textarea>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-md-3 control-label">单位:</label>
                <div class="col-md-4">
                    <div class="input-icon right">
                        <i class="fa"></i>
                        <select id="materialUnit" name="materialUnit" class="form-control">
                            <option value="">请选择</option>
                            <sys:constantTag type="unit" value="" function="O"/>
                        </select>
                    </div>
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
            <input type="hidden" name="id" value="${material.id}">
        </form>
    </div>
</div>
<script type="text/javascript" src="<c:url value="/static/custom/datepicker-util.js"></c:url>"></script>
<script type="text/javascript">
    $(function () {
        $('#materialForm').validate();
        $('#status').val(${material.status});
        $("#materialUnit").val(${material.materialUnit});
        $("#materialType").val(${material.materialType});
    })
</script>