package com.idp.common.tag;

import com.idp.common.base.BaseDao;
import com.idp.common.base.BaseEntity;
import com.idp.common.util.ApplicationContextUtil;


import com.idp.web.system.entity.SysOrg;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;


/***
 * 数字转中文名称
 * @author duming
 */
public class SysOptionsTag extends SimpleTagSupport {

    private String table;
    private String fieldName;
    private String value;
    private String function;

    /**
     * 标签操作 转换
     */
    private static final String TAG_FUNCTION_V = "V";

    /**
     * 标签操作 生成options
     */
    private static final String TAG_FUNCTION_O = "O";


    @Override
    public void doTag() throws IOException {
        String message = "";
        //显示值转换描述
        if (TAG_FUNCTION_V.equalsIgnoreCase(function)) {
            message = generatorName();
        }
        //生成options
        else if (TAG_FUNCTION_O.equals(function)) {
            message = generatorOptions();
        }
        JspWriter out = getJspContext().getOut();
        out.println(message);
    }

    /**
     * 根据常量类型 转换数字对应中文
     *
     * @return 中文名称
     */
    private String generatorName() {
        String name = "";
        BaseDao<? extends BaseEntity, String> dao = (BaseDao) ApplicationContextUtil.getBean(table + "Dao");
        BaseEntity entity = dao.getById(value);
        if (entity != null) {
            name = getFieldValue(entity);
        }
        return name;
    }

    /**
     * 构建某一类型的options
     *
     * @return options 列表
     */
    private String generatorOptions() {
        StringBuilder stringBuilder = new StringBuilder();
        BaseDao<? extends BaseEntity, String> dao = (BaseDao) ApplicationContextUtil.getBean(table + "Dao");
        List<? extends BaseEntity> entityList = dao.find(null);
        String name = "";
        if (entityList != null && !entityList.isEmpty()) {
            for (BaseEntity entity : entityList) {
                name = getFieldValue(entity);
                stringBuilder.append("<option value=\"" + entity.getId() + "\">" + name + "</option>");
            }
        }
        return stringBuilder.toString();
    }

    private String getFieldValue(BaseEntity entity) {
        fieldName = fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
        Method method = null;
        Object obj = null;
        try {
            method = entity.getClass().getMethod("get" + fieldName);
            obj = method.invoke(entity);
        } catch (NoSuchMethodException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }

        return obj.toString();
    }


    public String getTable() {
        return table;
    }

    public void setTable(String table) {
        this.table = table;
    }


    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getFieldName() {
        return fieldName;
    }

    public void setFieldName(String fieldName) {
        this.fieldName = fieldName;
    }
}