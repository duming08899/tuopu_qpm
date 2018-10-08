package com.idp.common.constant;

/**
 * session属性
 *
 * @author King
 */
public enum SeqTypeAttr {

    YLGL("YLGL");


    private SeqTypeAttr(String name) {
        this.name = name;
    }

    private String name;

    public String getValue() {

        return this.name;
    }


}
