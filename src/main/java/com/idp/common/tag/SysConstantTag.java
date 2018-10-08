package com.idp.common.tag;

import com.idp.common.util.ApplicationContextUtil;

import com.idp.web.constant.dao.ConstantDao;
import com.idp.web.constant.entity.Constant;
import org.apache.commons.lang.StringUtils;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/***
 * 数字转中文名称
 * @author duming
 */
public class SysConstantTag extends SimpleTagSupport {


    /**
     * unit 单位,status 启用状态
     */
    private String type;
    /**
     * 常量值
     */
    private String value;
    /**
     * 显示方式 V转换值 O生成Options
     */
    private String function;

    /**
     * 常量类型 单位
     **/
    private static final String TAG_TYPE_UNIT = "UNIT";
    /**
     * 常量类型 启用状态
     */
    private static final String TAG_TYPE_STATUS = "STATUS";

    /**
     * 常量类型 启用状态
     */
    private static final String TAG_MATERIAL_TYPE = "MATERIAL_TYPE";


    /**
     * 常量类型 启用状态
     */
    private static final String TAG_DEFECT_TYPE = "DEFECT_TYPE";

    /**
     * 标签操作 转换
     */
    private static final String TAG_FUNCTION_V = "V";

    /**
     * 标签操作 生成options
     */
    private static final String TAG_FUNCTION_O = "O";

    /**
     * 显示标签
     */
    private static final String SHOW_VALUE_SPAN_DEFAULT = "<span class=\"project-status label label-sm label-default\">";
    private static final String SHOW_VALUE_SPAN_SUCCESS = "<span class=\"project-status label label-sm label-success\">";
    public static final String SHOW_VALUE_SPAN = "</span>";

    private ConstantDao constantDao = (ConstantDao) ApplicationContextUtil.getBean("constantDao");

    private static final Map<String, Integer> constantMap = new HashMap<>();

    static {
        //原材料单位
        constantMap.put(TAG_DEFECT_TYPE, 40);
        //原材料单位
        constantMap.put(TAG_MATERIAL_TYPE, 30);
        //原材料单位
        constantMap.put(TAG_TYPE_UNIT, 20);
        //状态
        constantMap.put(TAG_TYPE_STATUS, 10);
    }


    @Override
    public void doTag() throws IOException {
        String message = "";
        //显示值转换描述
        if (TAG_FUNCTION_V.equalsIgnoreCase(function)) {
            message = generatorValue(type, value);
            //状态显示格式特殊处理
            if (TAG_TYPE_STATUS.equalsIgnoreCase(type)) {
                if ("1".equals(value)) {
                    message = SHOW_VALUE_SPAN_DEFAULT + message + SHOW_VALUE_SPAN;
                } else {
                    message = SHOW_VALUE_SPAN_SUCCESS + message + SHOW_VALUE_SPAN;
                }
            }

        }
        //生成options
        else if (TAG_FUNCTION_O.equalsIgnoreCase(function)) {
            message = generatorOptions(type, value);
        }
        JspWriter out = getJspContext().getOut();
        out.println(message);

    }


    /**
     * 根据常量类型 转换数字对应中文
     *
     * @return 中文名称
     */
    private String generatorValue(String type, String value) {
        String name = "";
        Constant constant = new Constant();
        constant.setType(constantMap.get(type.toUpperCase()));
        constant.setValue(value);
        List<Constant> constantList = constantDao.find(constant);
        if (constantList != null && !constantList.isEmpty()) {
            name = constantList.get(0).getNameCn();
        }
        return name;
    }


    /**
     * 构建某一类型的options
     *
     * @return options 列表
     */
    private String generatorOptions(String type, String value) {
        Constant constantQuery = new Constant();
        constantQuery.setType(constantMap.get(type.toUpperCase()));
        if (StringUtils.isNotEmpty(value)) {
            constantQuery.setValue(value);
        }
        List<Constant> constantList = constantDao.find(constantQuery);
        StringBuilder stringBuilder = new StringBuilder();
        for (Constant constant : constantList) {
            stringBuilder.append("<option value=\"" + constant.getValue() + "\">" + constant.getNameCn() + "</option>");
        }
        return stringBuilder.toString();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getValue() {
        return value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String getFunction() {
        return function;
    }

    public void setFunction(String function) {
        this.function = function;
    }
}