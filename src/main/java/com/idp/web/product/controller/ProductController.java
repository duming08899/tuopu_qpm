package com.idp.web.product.controller;

import com.idp.common.constant.SeqTypeAttr;
import com.idp.common.util.SeqUtil;
import com.idp.web.product.entity.Product;
import com.idp.web.product.service.ProductService;

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
 * 商品controller
 *
 * <pre>
 * 	历史记录：
 * 	2018-10-10 duming
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
@RequestMapping("/product")
public class ProductController extends BaseController {

    private Logger logger = Logger.getLogger(ProductController.class);

    @Resource
    private ProductService productService;

    /**
     * <pre>
     * 	2018-10-10 duming
     * 	初始化查询页面
     * </pre>
     *
     * @return
     */
    @RequestMapping("/init")
    public String init() {
        return "product/productSearch";
    }

    /**
     * <pre>
     * 	2018-10-10 duming
     * 	分页查询
     * </pre>
     *
     * @param product
     * @param page
     * @param request
     * @return
     */
    @RequestMapping("/list")
    public String list(Product product, Page<Product> page, HttpServletRequest request) {
        try {
            request.setAttribute("page", productService.findByPage(product, page));
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return "product/productList";
    }

    /**
     * <pre>
     * 	2018-10-10 duming
     * 	新增修改页面初始化
     * </pre>
     *
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/product")
    public String product(String id, HttpServletRequest request) {
        try {
            if (ValidateUtils.isNotEmpty(id)) {
                Product product = productService.getById(id);
                request.setAttribute("product", product);
            } else {
                setAttributeSeq(SeqTypeAttr.SP, request);
            }
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        return "product/product";
    }

    /**
     * <pre>
     * 	2018-10-10 duming
     * 	保存
     * </pre>
     *
     * @param product
     * @return
     */
    @RequestMapping("/save")
    @ResponseBody
    public String save(Product product) {
        JSONObject json = new JSONObject();
        try {
            // 修改
            if (ValidateUtils.isNotEmpty(product.getId())) {
                product.setUpdateUser(getCurrentUser().getUsername());
                product.setUpdateDate(new Date());
                productService.update(product);
            }
            // 新增
            else {
                product.setUpdateUser(getCurrentUser().getUsername());
                product.setUpdateDate(new Date());
                product.setCreateUser(getCurrentUser().getUsername());
                product.setCreateDate(new Date());
                productService.add(product);
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
     * 	2018-10-10 duming
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
            productService.delete(id);
            json.put("result", "delete_success");
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
            json.put("result", "delete_fail");
        }
        return json.toString();
    }
}
