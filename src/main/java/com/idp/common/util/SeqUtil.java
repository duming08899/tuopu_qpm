package com.idp.common.util;

import com.idp.web.sysseq.entity.SysSeq;
import com.idp.web.sysseq.service.SysSeqService;

import java.util.List;

public class SeqUtil {

    private static SysSeqService sysSeqService = (SysSeqService) ApplicationContextUtil.getBean("sysSeqService");

    public static Long getSeq(String type) {
        Long seq = 0L;
        SysSeq sysSeq = new SysSeq();
        sysSeq.setTypeCode(type);
        List<SysSeq> sysSeqList = sysSeqService.findBySearch(sysSeq);
        if (sysSeqList != null && sysSeqList.size() > 0) {
            seq = sysSeqList.get(0).getTypeSeq();
            sysSeq = sysSeqList.get(0);
            sysSeq.setTypeSeq(sysSeq.getTypeSeq() + 1);
            sysSeqService.update(sysSeq);
        }
        return seq;
    }
}
