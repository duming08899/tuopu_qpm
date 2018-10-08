package com.idp.web.archive.controller;

import com.idp.web.archive.entity.Archive;
import com.idp.web.archive.service.ArchiveService;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.idp.common.base.BaseController;
import com.idp.common.persistence.Page;
import com.idp.common.util.ValidateUtils;

import net.sf.json.JSONObject;

import java.util.Date;

/**
 * 工艺描述controller
 *
 * <pre>
 * 	历史记录：
 * 	2018-10-06 duming
 * 	新建文件
 * </pre>
 *
 * @author <pre>
 * SD
 * 	duming
 * PG
 * 	duming
 * UT
 *
 * MA
 * </pre>
 * @version $Rev$
 * <p>
 * <p/> $Id$
 */
@Controller
@RequestMapping("/archive")
public class ArchiveController extends BaseController {

    private Logger logger = Logger.getLogger(ArchiveController.class);

    @Resource
    private ArchiveService archiveService;

    /**
     * <pre>
     * 	2018-10-06 duming
     * 	初始化查询页面
     * </pre>
     *
     * @return
     */
    @RequestMapping("/init")
    public String init() {
        return "archive/archiveSearch";
    }

    /**
     * <pre>
     * 	2018-10-06 duming
     * 	分页查询
     * </pre>
     *
     * @param archive
     * @param page
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(Archive archive, Page<Archive> page, HttpServletRequest request) {
        try {
            request.setAttribute("page", archiveService.findByPage(archive, page));
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return "archive/archiveList";
    }

    /**
     * <pre>
     * 	2018-10-06 duming
     * 	新增修改页面初始化
     * </pre>
     *
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/archive")
    public String archive(String id, HttpServletRequest request) {
        try {
            if (ValidateUtils.isNotEmpty(id)) {
                Archive archive = archiveService.getById(id);
                request.setAttribute("archive", archive);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return "archive/archive";
    }

    /**
     * <pre>
     * 	2018-10-06 duming
     * 	保存
     * </pre>
     *
     * @param archive
     * @return
     */
    @RequestMapping("/save")
    @ResponseBody
    public String save(Archive archive) {
        JSONObject json = new JSONObject();
        try {
            // 修改
            if (ValidateUtils.isNotEmpty(archive.getId())) {
                archive.setUpdateUser(getCurrentUser().getUsername());
                archive.setUpdateDate(new Date());
                archiveService.update(archive);
            }
            // 新增
            else {
                archive.setUpdateUser(getCurrentUser().getUsername());
                archive.setUpdateDate(new Date());
                archive.setCreateUser(getCurrentUser().getUsername());
                archive.setCreateDate(new Date());
                archiveService.add(archive);
            }
            json.put("result", "save_success");
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            json.put("result", "save_fail");
        }
        return json.toString();
    }

    /**
     * <pre>
     * 	2018-10-06 duming
     * 	删除
     * </pre>
     *
     * @param id
     * @return
     */
    @RequestMapping("/delete")
    @ResponseBody
    public String delete(String id) {
        JSONObject json = new JSONObject();
        try {
            archiveService.delete(id);
            json.put("result", "delete_success");
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            json.put("result", "delete_fail");
        }
        return json.toString();
    }
}
