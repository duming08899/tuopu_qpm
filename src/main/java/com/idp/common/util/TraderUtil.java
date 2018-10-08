package com.idp.common.util;

import com.opslab.util.DateUtil;

public class TraderUtil {

    public static String generatorCode(String type) {
        return type + DateUtil.currentTime();
    }
}
