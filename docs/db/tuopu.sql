/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50722
 Source Host           : localhost:3306
 Source Schema         : tuopu

 Target Server Type    : MySQL
 Target Server Version : 50722
 File Encoding         : 65001

 Date: 08/10/2018 10:04:50
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for bs_archive
-- ----------------------------
DROP TABLE IF EXISTS `bs_archive`;
CREATE TABLE `bs_archive` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `ar_code` varchar(20) DEFAULT NULL COMMENT '工艺编码',
  `ar_name` varchar(20) DEFAULT NULL COMMENT '工艺名称',
  `ar_pinyin` varchar(40) DEFAULT NULL COMMENT '拼音缩写',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_archive
-- ----------------------------
BEGIN;
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460001', '0', '未规定', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460002', '1', '下料', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460003', '2', '打磨、修磨', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460011', '10', '铸造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460012', '11', '砂型铸造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460013', '12', '压力铸造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460014', '13', '熔模铸造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460015', '14', '金属模铸造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460019', '18', '木模制造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460020', '19', '砂、泥芯制造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460021', '20', '锻压', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460022', '21', '锻造', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460023', '22', '热冲压', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460024', '23', '冷冲压', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460025', '24', '旋压成形', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460026', '25', '压合', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460027', '26', '粉末冶金', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460028', '27', '塑料零件注射', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460029', '28', '塑料零件压制', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460031', '30', '焊接', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460032', '31', '电弧焊与电渣焊', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460033', '32', '电阻焊', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460034', '33', '激光焊', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460035', '34', '离子焊', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460037', '36', '磨擦焊', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460038', '37', '气焊与气割', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460039', '38', '钎焊', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460041', '40', '机械加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460042', '41', '单轴自动车床加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460043', '42', '多轴自动车床加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460044', '43', '齿轮机床加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460045', '44', '自动线加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460046', '45', '数控机床加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460048', '47', '光学加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460049', '48', '典型加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460050', '49', '成组加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460051', '50', '电加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460052', '51', '电火花加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460053', '52', '电解加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460054', '53', '线切割加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460055', '54', '激光加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460056', '55', '超声波加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460057', '56', '电子束加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460058', '57', '离子束加工', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460061', '60', '热处理', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460062', '61', '感应热处理', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460063', '62', '高频热处理', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460066', '65', '化学热处理', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460067', '66', '磁粉探伤', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460069', '68', '防锈', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460070', '69', '工具热处理', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460071', '70', '表面处理', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460072', '71', '电镀', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460073', '72', '金属喷镀', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460074', '73', '磷化', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460075', '74', '发蓝', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460077', '76', '喷丸强化', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460078', '77', '涂胶', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460079', '78', '油漆', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460080', '79', '清洗', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460091', '90', '冷作、装配、包装', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460092', '91', '冷作', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460093', '92', '装配', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460096', '95', '电气安装', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460098', '97', '包装', NULL, NULL, NULL, 'admin', '2018-10-07 17:08:10', 0, 0);
INSERT INTO `bs_archive` VALUES ('f3e461a670f449148278470e7a460cdb', '98', '下料', '', 'admin', '2018-10-07 00:16:19', 'admin', '2018-10-07 17:08:10', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for bs_defect
-- ----------------------------
DROP TABLE IF EXISTS `bs_defect`;
CREATE TABLE `bs_defect` (
  `id` varchar(32) NOT NULL,
  `defect_name` varchar(50) DEFAULT NULL COMMENT '缺陷名称',
  `defect_name_en` varchar(50) DEFAULT NULL COMMENT '缺陷名称(英文)',
  `defect_type_id` varchar(32) DEFAULT NULL COMMENT '缺陷分类',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_defect
-- ----------------------------
BEGIN;
INSERT INTO `bs_defect` VALUES ('5599cca4f9cc46f994aa7deca31e027b', '损坏', '损坏', '1', 'admin', '2018-10-07 22:46:22', 'admin', '2018-10-07 22:46:22', NULL, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for bs_item
-- ----------------------------
DROP TABLE IF EXISTS `bs_item`;
CREATE TABLE `bs_item` (
  `id` varchar(32) NOT NULL,
  `item_name` varchar(50) DEFAULT NULL COMMENT '项目号',
  `workline_id` varchar(32) DEFAULT NULL COMMENT '生产线',
  `workshop_id` varchar(32) DEFAULT NULL COMMENT '生产车间',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  `remark` varchar(200) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_item
-- ----------------------------
BEGIN;
INSERT INTO `bs_item` VALUES ('1f50c50dfb5a485084c05ed8017ef6cf', 'VOLVO', '148de1e21399494e8fbd7828d92b8863', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:56:42', 'admin', '2018-10-07 21:56:42', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('230697e01df64440aa4c67fff8eed7d7', 'F52', 'bede05a968614878a02e4ad2802e4a86', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:57:01', 'admin', '2018-10-07 21:57:01', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('30698ef7b37442c0ad647bb57590a78f', 'F49', '6b3a3c304a574bf18fc0fa4b9827df66', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:54:13', 'admin', '2018-10-07 21:54:13', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('3acdda035cca4913ac2721f5f9a4b42a', 'BASE', '62f422a9bce443959c8b1de10f1aa1ae', '1b5bc6af046b4b01969a6b1fa731bdb5', 'admin', '2018-10-07 21:57:21', 'admin', '2018-10-07 21:57:21', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('49cda98d3186490fac1b65563782fb6b', 'F52', '148de1e21399494e8fbd7828d92b8863', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:55:49', 'admin', '2018-10-07 21:55:49', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('96a38c4604884444999092f3afc72457', 'MFS Lower', '62f422a9bce443959c8b1de10f1aa1ae', '1b5bc6af046b4b01969a6b1fa731bdb5', 'admin', '2018-10-07 22:19:06', 'admin', '2018-10-07 22:19:21', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('99d35c3842db47c78bb5579487f6253f', 'G08', 'bede05a968614878a02e4ad2802e4a86', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:56:20', 'admin', '2018-10-07 21:56:20', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('bca41ca5011c4c4d8b2130405e3d25dd', 'G01', 'bede05a968614878a02e4ad2802e4a86', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:56:05', 'admin', '2018-10-07 21:56:05', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('bf76c26391a64e498e6f67937bc86d29', 'F45', '148de1e21399494e8fbd7828d92b8863', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:39:09', 'admin', '2018-10-07 21:39:09', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('dd3bba3b09594c628603415561a66358', 'F49', '60a25000dea34f78ac79a1cd21582c9f', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:55:25', 'admin', '2018-10-07 21:55:25', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('de02f81507494822ad991ce86b802abf', 'MFS Upper', '62f422a9bce443959c8b1de10f1aa1ae', '1b5bc6af046b4b01969a6b1fa731bdb5', 'admin', '2018-10-07 21:57:38', 'admin', '2018-10-07 22:18:45', NULL, 0, '');
INSERT INTO `bs_item` VALUES ('ea571f18ad784b4f8509159582fcbc23', 'F49', '148de1e21399494e8fbd7828d92b8863', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:53:58', 'admin', '2018-10-07 21:53:58', NULL, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for bs_material
-- ----------------------------
DROP TABLE IF EXISTS `bs_material`;
CREATE TABLE `bs_material` (
  `id` varchar(32) NOT NULL COMMENT '主键',
  `material_code` varchar(14) NOT NULL COMMENT '原材料编码',
  `material_name` varchar(50) NOT NULL COMMENT '原材料名称',
  `material_price` decimal(6,2) NOT NULL COMMENT '单价',
  `material_type` varchar(32) DEFAULT NULL COMMENT '原材料类型',
  `material_ts` varchar(50) DEFAULT NULL COMMENT '型号规格',
  `material_unit` varchar(32) DEFAULT NULL COMMENT '单位',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp(6) NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp(6) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '启用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_material
-- ----------------------------
BEGIN;
INSERT INTO `bs_material` VALUES ('8541bbf6cd0242e6adb48d5fb6516562', '', '钢板', 20.00, '4', '20mm', '1', 'admin', '2018-10-07 17:29:31.598000', 'admin', '2018-10-07 17:29:31.598000', NULL, 0);
INSERT INTO `bs_material` VALUES ('d953ea37ce1548e0ab87f6e0c984a2f8', '', 'PVC', 20.00, '4', '8mm', '1', 'admin', '2018-10-07 17:28:48.107000', 'admin', '2018-10-07 17:28:48.107000', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for bs_shift
-- ----------------------------
DROP TABLE IF EXISTS `bs_shift`;
CREATE TABLE `bs_shift` (
  `id` varchar(32) NOT NULL,
  `shift_name` varchar(50) DEFAULT NULL COMMENT '班次名称',
  `shift_manager` varchar(50) DEFAULT NULL COMMENT '班组长',
  `workshop_id` varchar(32) DEFAULT NULL COMMENT '生产车间',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_shift
-- ----------------------------
BEGIN;
INSERT INTO `bs_shift` VALUES ('3f49f73174814a7db4c61688b05202d5', 'LU-B', '杜明', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 22:04:09', 'admin', '2018-10-07 22:04:09', NULL, 0, '');
INSERT INTO `bs_shift` VALUES ('4811d96968274029b7c1e5ea64c1c532', 'G38-A', '杜明', '1b5bc6af046b4b01969a6b1fa731bdb5', 'admin', '2018-10-07 21:33:49', 'admin', '2018-10-07 21:33:49', NULL, 0, '');
INSERT INTO `bs_shift` VALUES ('cc163e5a618a4ca7995d88ba25fe7a7c', 'G38-B', '杜明', '1b5bc6af046b4b01969a6b1fa731bdb5', 'admin', '2018-10-07 22:00:46', 'admin', '2018-10-07 22:00:46', NULL, 0, '');
INSERT INTO `bs_shift` VALUES ('d23e04da06184766aa9ae64dcf6255e4', 'LU-A', '杜明', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 22:03:58', 'admin', '2018-10-07 22:03:58', NULL, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for bs_workline
-- ----------------------------
DROP TABLE IF EXISTS `bs_workline`;
CREATE TABLE `bs_workline` (
  `id` varchar(32) NOT NULL,
  `workline_name` varchar(50) DEFAULT NULL COMMENT '生产线名称',
  `workshop_id` varchar(32) DEFAULT NULL COMMENT '生产车间',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_workline
-- ----------------------------
BEGIN;
INSERT INTO `bs_workline` VALUES ('148de1e21399494e8fbd7828d92b8863', 'WHL', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 19:54:26', 'admin', '2018-10-07 19:54:26', NULL, 0, '');
INSERT INTO `bs_workline` VALUES ('60a25000dea34f78ac79a1cd21582c9f', 'PHEV', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:51:49', 'admin', '2018-10-07 21:51:49', NULL, 0, '');
INSERT INTO `bs_workline` VALUES ('62f422a9bce443959c8b1de10f1aa1ae', 'G38', '1b5bc6af046b4b01969a6b1fa731bdb5', 'admin', '2018-10-07 21:50:27', 'admin', '2018-10-07 21:50:27', NULL, 0, '');
INSERT INTO `bs_workline` VALUES ('6b3a3c304a574bf18fc0fa4b9827df66', 'UBV', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:50:59', 'admin', '2018-10-07 21:50:59', NULL, 0, '');
INSERT INTO `bs_workline` VALUES ('bac552dde15e4251a11c6593edf053e9', 'M13', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:52:09', 'admin', '2018-10-07 21:52:09', NULL, 0, '');
INSERT INTO `bs_workline` VALUES ('bede05a968614878a02e4ad2802e4a86', 'RSC', '1e413f34ab1144eca2714a736a0bfc4a', 'admin', '2018-10-07 21:51:26', 'admin', '2018-10-07 21:51:26', NULL, 0, '');
COMMIT;

-- ----------------------------
-- Table structure for bs_workshop
-- ----------------------------
DROP TABLE IF EXISTS `bs_workshop`;
CREATE TABLE `bs_workshop` (
  `id` varchar(32) NOT NULL,
  `workshop_name` varchar(50) DEFAULT NULL COMMENT '车间名称',
  `workshop_manager` varchar(50) DEFAULT NULL COMMENT '负责人',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bs_workshop
-- ----------------------------
BEGIN;
INSERT INTO `bs_workshop` VALUES ('1b5bc6af046b4b01969a6b1fa731bdb5', 'G38', '杜明', 'admin', '2018-10-07 17:53:06', 'admin', '2018-10-07 17:53:06', NULL, 0, NULL);
INSERT INTO `bs_workshop` VALUES ('1e413f34ab1144eca2714a736a0bfc4a', 'LU', '杜明', 'admin', '2018-10-07 17:53:23', 'admin', '2018-10-07 17:53:23', NULL, 0, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cg_column_config
-- ----------------------------
DROP TABLE IF EXISTS `cg_column_config`;
CREATE TABLE `cg_column_config` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `table_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '表ID',
  `column_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列名',
  `column_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列类型',
  `column_length` int(11) DEFAULT NULL COMMENT '列长度',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `field_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字段名',
  `field_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '字段类型',
  `nullable` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `relation_table` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联表名',
  `relation_column_id` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联表关联ID',
  `relation_column_text` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '关联表显示字段',
  `sort` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '排序',
  `is_key` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否主键',
  `show_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '页面显示类型',
  `is_query` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否查询',
  `query_model` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '查询模式',
  `query_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '查询类型',
  `is_show_list` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '列表是否显示',
  `is_show_form` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表单是否显示',
  `form_valid_type` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表单验证类型',
  `order_num` int(11) DEFAULT NULL COMMENT '字段顺序',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人员',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人员',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cg_column_config
-- ----------------------------
BEGIN;
INSERT INTO `cg_column_config` VALUES ('04b5529be6d24fc78db19bad6815f158', '457050b52f294e90a8bf1f3b163a86a1', 'material_code', 'varchar', 50, '原材料编码', 'materialCode', 'String', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0651012d7d72454da091ce5bfb8ef811', 'cc5851e69a174907a503dde1afd57945', 'item_name', 'varchar', 50, '项目号', 'itemName', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0a91144895eb443a9ba55f471ad63673', 'c11f55773a684afb8d8ac09b109d3c94', 'defect_name', 'varchar', 50, '缺陷名称', 'defectName', 'String', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0b1015eebb944418885a62afa7fa2b7c', 'd779e698aa864c08895a69ada9bc8734', 'shift_manager', 'varchar', 50, '班组长', 'shiftManager', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0cf1954b42174a409a6f6c80b939c7d4', 'c11f55773a684afb8d8ac09b109d3c94', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0ed4cdc50c2d4f8192c075d1319ee958', 'c11f55773a684afb8d8ac09b109d3c94', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0eed889e2d0742a79d5b856f01f2ff9a', 'c11f55773a684afb8d8ac09b109d3c94', 'id', 'varchar', 32, 'id', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0fb963c8c4c343a9b40ae282dfcb3be2', '26d66d0b1b00444281e31deb79db2f5a', 'ar_pinyin', 'varchar', 40, '拼音缩写', 'arPinyin', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0fcc9a0b29ed4027847366a9017baf7a', '26d66d0b1b00444281e31deb79db2f5a', 'id', 'varchar', 32, '主键', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('0ffbd23e2cbc48559f3bb6a33b269a4f', '4bf195d2c4bf4c12b5da69280380e2b9', 'age', 'int', 10, '年龄', 'age', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'group', 'between', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('108b85f4857e4379985edb53e46ddabd', 'cc5851e69a174907a503dde1afd57945', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('1138120368aa4ba792a81232cb8d821d', '51cd6cae372c46e396b0ab0a56dd1d87', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('130119444a4e4eca905f3f3d34a6b699', '51cd6cae372c46e396b0ab0a56dd1d87', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('1515545cb85e4778ad9304b8e1924dd7', '457050b52f294e90a8bf1f3b163a86a1', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 13, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('15af243ba9c7460f86119c2ef0718b3f', 'c11f55773a684afb8d8ac09b109d3c94', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('165dc50363784acdaa7c168de1bb03af', '51cd6cae372c46e396b0ab0a56dd1d87', 'remark', 'varchar', 255, '备注', 'remark', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'textarea', 'N', 'single', '=', 'N', 'Y', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('17445670d9334cea99d3581ab70e3267', '457050b52f294e90a8bf1f3b163a86a1', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('1d260455efaf45f2b57bbbf0bb898283', '9f0724dbe6844a248e987a368a2399c1', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('1f8db9b9bb2d4aa8999d6d00fd2d665f', 'cc5851e69a174907a503dde1afd57945', 'workline_id', 'varchar', 32, '生产线', 'worklineId', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('21f510e912af4c8986497d721956629d', 'cc5851e69a174907a503dde1afd57945', 'id', 'varchar', 32, 'id', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('28af6d42e58d4861acada2228a817fed', 'c11f55773a684afb8d8ac09b109d3c94', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('2945bf5762354bfeb9388eeee35fa9e4', '457050b52f294e90a8bf1f3b163a86a1', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('2a01b9aa358341e4aea1b3a6821eaddb', '26d66d0b1b00444281e31deb79db2f5a', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('2c5fd09ed6f1428dad47e1ab65a3d546', '4bf195d2c4bf4c12b5da69280380e2b9', 'demo_id', 'varchar', 32, '主键', 'demoId', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('320620c5ccf74eb4b53c8fecae82f495', '9f0724dbe6844a248e987a368a2399c1', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('346de82d033244678066dc1fa478a179', 'd779e698aa864c08895a69ada9bc8734', 'workshop_id', 'varchar', 32, '生产车间', 'workshopId', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('35029f3ad92c4ee6b3c2340d278d8cbf', '457050b52f294e90a8bf1f3b163a86a1', 'material_name', 'varchar', 50, '原材料名称', 'materialName', 'String', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('39db534647f24d82a6c074f3b9667b4f', '9f0724dbe6844a248e987a368a2399c1', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('410173fb3881479ab4e93b2f8a7dbefe', '457050b52f294e90a8bf1f3b163a86a1', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 12, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('4186c881338b4029abef030ce91e73a6', 'a0b449fc8ea640ddac69f323b23908ac', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 12, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('4620c7f33a3748029ea81d0b47074504', 'a0b449fc8ea640ddac69f323b23908ac', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('48c10d0f311a454298af15d72eaee01a', 'c11f55773a684afb8d8ac09b109d3c94', 'remark', 'varchar', 200, '备注', 'remark', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'Y', '', 11, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('53ee6da9fbd44dfdbfdc583755e641ce', '51cd6cae372c46e396b0ab0a56dd1d87', 'workline_name', 'varchar', 50, '生产线名称', 'worklineName', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('54afbaee27004d48bfb0ae75ffaae2f1', '457050b52f294e90a8bf1f3b163a86a1', 'material_ts', 'varchar', 50, '型号规格', 'materialTs', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'textarea', 'N', 'single', '=', 'Y', 'Y', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('55d8c37ceb4e430b8df2174918fab425', '51cd6cae372c46e396b0ab0a56dd1d87', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('57cf584e9f464bed933d906248f6bbea', 'cc5851e69a174907a503dde1afd57945', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('58cd1991c7b04d87acb2048b921d3ad8', '26d66d0b1b00444281e31deb79db2f5a', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('59d170163b4a4ae1a36c5cf959c7f7a0', '51cd6cae372c46e396b0ab0a56dd1d87', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('615c04c106924dca902d7b4863458eac', 'a0b449fc8ea640ddac69f323b23908ac', 'type', 'int', 10, '类型', 'type', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('69f05a20726e4c5bbd3b1470eec92516', '9f0724dbe6844a248e987a368a2399c1', 'id', 'varchar', 32, 'id', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('6b77eb80c2a3457f87ee2fe41fe986ba', '51cd6cae372c46e396b0ab0a56dd1d87', 'id', 'varchar', 32, 'id', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('6dbe36bf01c346ada7fef03dc66790f2', 'a0b449fc8ea640ddac69f323b23908ac', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('6e6d6240056644e8944276d8fa332ed9', 'cc5851e69a174907a503dde1afd57945', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('6fa8e9437ee64ab0a749f15d41a78d97', '9f0724dbe6844a248e987a368a2399c1', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('78abdf83cdfa4c27966cfa8a0363ebb7', 'a0b449fc8ea640ddac69f323b23908ac', 'name_cn', 'varchar', 30, '中文名称', 'nameCn', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('7bd584b5b6494f79a03c24787bfc6621', 'a0b449fc8ea640ddac69f323b23908ac', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 11, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('7cbafc1adf5744e1927f9549efbd4a96', '9f0724dbe6844a248e987a368a2399c1', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('8065c3aec45d48aa9d1a37ffcd989240', '26d66d0b1b00444281e31deb79db2f5a', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('867ba163ab4b4a5dbefdc80e89548408', 'd779e698aa864c08895a69ada9bc8734', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('8a7915d19c84487292bdaabb7e659f56', 'd779e698aa864c08895a69ada9bc8734', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('8e2b2e52cd5547e5b9b78cad5e6cef5a', 'd779e698aa864c08895a69ada9bc8734', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('90158b4e58c84d2c8ccf89fceef57ad6', 'a0b449fc8ea640ddac69f323b23908ac', 'name_en', 'varchar', 30, '英文名称', 'nameEn', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('919934090a53411ca9f07ebf462c3f21', 'a0b449fc8ea640ddac69f323b23908ac', 'type_decr', 'varchar', 40, '类型描述', 'typeDecr', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('94d0d8cae18c475284992bd030e684d3', '26d66d0b1b00444281e31deb79db2f5a', 'ar_code', 'varchar', 20, '工艺编码', 'arCode', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('95b82927888f461fb5bf7fd5c3ef9913', 'cc5851e69a174907a503dde1afd57945', 'remark', 'varchar', 200, '备注', 'remark', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'textarea', 'N', 'single', '=', 'N', 'Y', '', 11, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('95d38c041bb343739775221f98885b28', '4bf195d2c4bf4c12b5da69280380e2b9', 'birthday', 'datetime', NULL, '生日', 'birthday', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'date', 'Y', 'group', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('95feeb50e6d5422e84ca5bd701c3d612', '26d66d0b1b00444281e31deb79db2f5a', 'ar_name', 'varchar', 20, '工艺名称', 'arName', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('9656572d798c4b5da863320de7f1c89f', '4bf195d2c4bf4c12b5da69280380e2b9', 'sex', 'char', 1, '性别', 'sex', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'radio', 'N', 'single', '=', 'Y', 'Y', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('9e75731a610140abb915e1e111d399a4', 'a0b449fc8ea640ddac69f323b23908ac', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('a4c8faa5086b4063bc04589cf3a46397', '9f0724dbe6844a248e987a368a2399c1', 'remark', 'varchar', 255, '备注', 'remark', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'textarea', 'N', 'single', '=', 'Y', 'Y', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('aa3037b3c7424ad2ae65081bccf738b3', '9f0724dbe6844a248e987a368a2399c1', 'workshop_manager', 'varchar', 50, '负责人', 'workshopManager', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('adb7bc1ba2c2495db17190851f47bef8', 'cc5851e69a174907a503dde1afd57945', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('aefa2d4081cf4cbd9e880a14cb6ceb6e', '9f0724dbe6844a248e987a368a2399c1', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('b1fbcfae06c74ef38b47fb129cb0c856', '4bf195d2c4bf4c12b5da69280380e2b9', 'hobby', 'varchar', 100, '爱好', 'hobby', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'checkbox', 'N', 'single', '=', 'N', 'Y', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('b9ec329145964996bad204775945ba3e', '51cd6cae372c46e396b0ab0a56dd1d87', 'is_deleted', 'int', 10, '逻辑删除 0 正常 1已删除', 'isDeleted', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('ba60247b55c3402f8238d2b13e6d6634', 'd779e698aa864c08895a69ada9bc8734', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('c45eb7b454a044d882581b4c4f9437a2', 'c11f55773a684afb8d8ac09b109d3c94', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('c5a511501b624d5fad570a59fe79c69b', '9f0724dbe6844a248e987a368a2399c1', 'workshop_name', 'varchar', 50, '车间名称', 'workshopName', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('c5c61a2962ef43158f32520480d27f7c', '457050b52f294e90a8bf1f3b163a86a1', 'material_type', 'int', 10, '原材料类型', 'materialType', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('c6520ec03a3746e5a8c49363ffcf68a3', '26d66d0b1b00444281e31deb79db2f5a', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('c811be3c90624ba8a77e6f6b6726d9d7', '51cd6cae372c46e396b0ab0a56dd1d87', 'workshop_id', 'varchar', 32, '生产车间', 'workshopId', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('c95eaad7cc464e69a89f7c0bd110cc98', '457050b52f294e90a8bf1f3b163a86a1', 'id', 'varchar', 32, '主键', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('cdc7856f19e94cc5b8c643cb66d70c30', '4bf195d2c4bf4c12b5da69280380e2b9', 'dept_id', 'varchar', 32, '部门', 'deptId', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('ce271044da2f44e39c4f25150a9e58a7', 'c11f55773a684afb8d8ac09b109d3c94', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('d13289e8159a478792b0d1f079b4284d', '457050b52f294e90a8bf1f3b163a86a1', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 11, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('d211d9a07717493680b4fa533d0532e7', 'cc5851e69a174907a503dde1afd57945', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('d98e181a8c1647438a191b2ee5ec01e0', '51cd6cae372c46e396b0ab0a56dd1d87', 'status', 'int', 10, '启用状态', 'status', 'Integer', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 9, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('da19045daa374411ba1f05c36c7aa3bb', 'a0b449fc8ea640ddac69f323b23908ac', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('db7960881c184faa991a39bd32453679', 'd779e698aa864c08895a69ada9bc8734', 'remark', 'varchar', 255, '备注', 'remark', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'textarea', 'N', 'single', '=', 'N', 'Y', '', 11, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('dc05b72561b3485fa068dfc0f9b4853d', 'a0b449fc8ea640ddac69f323b23908ac', 'value', 'varchar', 30, '值', 'value', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('de5752145fb64cf69bca043095c788bd', 'd779e698aa864c08895a69ada9bc8734', 'create_user', 'varchar', 32, '创建人ID', 'createUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 5, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('e0455022d8e346b7aa9cbe9ce0b30f19', 'c11f55773a684afb8d8ac09b109d3c94', 'defect_type_id', 'varchar', 32, '缺陷分类', 'defectTypeId', 'String', 'N', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('e0af41afe98240f1af4454f3b63fdf87', '26d66d0b1b00444281e31deb79db2f5a', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 6, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('e21114490fe849f6a0c0bc0c7ceca355', 'cc5851e69a174907a503dde1afd57945', 'workshop_id', 'varchar', 32, '生产车间', 'workshopId', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'Y', 'single', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('e4418eb7f92046688281b6c40afc966f', '4bf195d2c4bf4c12b5da69280380e2b9', 'remark', 'text', 65535, '备注', 'remark', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'textarea', 'N', 'single', '=', 'N', 'Y', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('ebb643a2f1ac43c4afc92b71705038dc', 'd779e698aa864c08895a69ada9bc8734', 'id', 'varchar', 32, 'id', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('ef00802876074b8e9a4fdb683142bcaf', 'd779e698aa864c08895a69ada9bc8734', 'shift_name', 'varchar', 50, '班次名称', 'shiftName', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('f0ca1f3bf6e442ad8b10806f9112d0d5', '457050b52f294e90a8bf1f3b163a86a1', 'material_unit', 'int', 10, '单位', 'materialUnit', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'select', 'N', 'single', '=', 'Y', 'Y', '', 7, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('f35ae33b1d9a4c84b23de1d6b394f84c', '4bf195d2c4bf4c12b5da69280380e2b9', 'name', 'varchar', 100, '姓名', 'name', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', 'like', 'Y', 'Y', 'required', 2, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('f50b686136e94cb483510ec9f07084da', '457050b52f294e90a8bf1f3b163a86a1', 'material_price', 'decimal', 6, '单价', 'materialPrice', 'BigDecimal', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'Y', 'Y', '', 4, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('f59fc041cbc64e5fbf33750f0b16da05', 'a0b449fc8ea640ddac69f323b23908ac', 'id', 'bigint', 20, 'id', 'id', 'String', 'N', NULL, NULL, NULL, 'N', 'Y', 'text', 'N', 'single', '=', 'N', 'N', '', 1, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('f6f03260fefc42cdb56697f40b7735ba', '457050b52f294e90a8bf1f3b163a86a1', 'update_user', 'varchar', 32, '更新人ID', 'updateUser', 'String', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 10, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('f87b073004ef43989f8d9c1aef1a0314', 'd779e698aa864c08895a69ada9bc8734', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('fa8ba44ac2e044baab372c02e207d3c9', 'c11f55773a684afb8d8ac09b109d3c94', 'defect_name_en', 'varchar', 50, '缺陷名称(英文)', 'defectNameEn', 'String', 'N', NULL, NULL, NULL, 'N', 'N', 'text', 'Y', 'single', '=', 'Y', 'Y', '', 3, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('fda22603182d46c196b1587924ff7555', '26d66d0b1b00444281e31deb79db2f5a', 'update_date', 'timestamp', NULL, '更新时间', 'updateDate', 'Date', 'Y', NULL, NULL, NULL, 'Y', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 8, NULL, NULL, NULL, NULL);
INSERT INTO `cg_column_config` VALUES ('ff10585e764d4edc90ef28989c8bf49b', 'cc5851e69a174907a503dde1afd57945', 'create_date', 'timestamp', NULL, '创建日期', 'createDate', 'Date', 'Y', NULL, NULL, NULL, 'N', 'N', 'text', 'N', 'single', '=', 'N', 'N', '', 6, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cg_data_source
-- ----------------------------
DROP TABLE IF EXISTS `cg_data_source`;
CREATE TABLE `cg_data_source` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `database_type` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据库类型',
  `database_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '数据库名称',
  `server` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '服务器IP',
  `port` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '端口号',
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '密码',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人员',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人员',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cg_data_source
-- ----------------------------
BEGIN;
INSERT INTO `cg_data_source` VALUES ('37039a75098c4e7eb4020f5b29e46d9a', '当前数据库', 'mysql', 'tuopu', 'localhost', '3306', 'root', '123456', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for cg_table_config
-- ----------------------------
DROP TABLE IF EXISTS `cg_table_config`;
CREATE TABLE `cg_table_config` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '主键ID',
  `table_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '表名',
  `class_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '类名',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `is_checkbox` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否多选框',
  `is_page` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否分页',
  `is_tree` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '是否树',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人员',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人员',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of cg_table_config
-- ----------------------------
BEGIN;
INSERT INTO `cg_table_config` VALUES ('26d66d0b1b00444281e31deb79db2f5a', 'bs_archive', 'Archive', '工艺描述', 'Y', 'Y', NULL, '1', '2018-10-06 23:57:10', '1', '2018-10-06 23:58:28');
INSERT INTO `cg_table_config` VALUES ('457050b52f294e90a8bf1f3b163a86a1', 'bs_material', 'Material', '原材料管理', 'Y', 'Y', NULL, '1', '2018-10-07 16:07:47', '1', '2018-10-07 16:10:28');
INSERT INTO `cg_table_config` VALUES ('4bf195d2c4bf4c12b5da69280380e2b9', 'demo_test', 'DemoTest', '测试功能', 'N', 'Y', NULL, '1', '2017-01-19 23:14:33', '1', '2017-01-19 23:22:22');
INSERT INTO `cg_table_config` VALUES ('51cd6cae372c46e396b0ab0a56dd1d87', 'bs_workline', 'Workline', '生产线', 'Y', 'Y', NULL, '1', '2018-10-07 18:07:45', '1', '2018-10-07 18:08:35');
INSERT INTO `cg_table_config` VALUES ('9f0724dbe6844a248e987a368a2399c1', 'bs_workshop', 'Workshop', '生产车间', 'Y', 'Y', NULL, '1', '2018-10-07 18:06:33', '1', '2018-10-07 18:07:31');
INSERT INTO `cg_table_config` VALUES ('a0b449fc8ea640ddac69f323b23908ac', 'sys_constant', 'Constant', '系统常量', 'Y', 'Y', NULL, '1', '2018-10-06 23:15:30', '1', '2018-10-06 23:36:32');
INSERT INTO `cg_table_config` VALUES ('c11f55773a684afb8d8ac09b109d3c94', 'bs_defect', 'Defect', '缺陷管理', 'Y', 'Y', NULL, '1', '2018-10-07 22:28:31', '1', '2018-10-07 22:33:24');
INSERT INTO `cg_table_config` VALUES ('cc5851e69a174907a503dde1afd57945', 'bs_item', 'Item', '生产项目', 'N', 'Y', NULL, '1', '2018-10-07 18:08:48', '1', '2018-10-07 18:09:37');
INSERT INTO `cg_table_config` VALUES ('d779e698aa864c08895a69ada9bc8734', 'bs_shift', 'Shift', '班次', 'Y', 'Y', NULL, '1', '2018-10-07 18:09:49', '1', '2018-10-07 18:10:36');
COMMIT;

-- ----------------------------
-- Table structure for demo_test
-- ----------------------------
DROP TABLE IF EXISTS `demo_test`;
CREATE TABLE `demo_test` (
  `demo_id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(10) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `dept_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sex` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hobby` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remark` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`demo_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of demo_test
-- ----------------------------
BEGIN;
INSERT INTO `demo_test` VALUES ('9de57040b5604d06af5b24b5cf931324', '22', 22, '2017-01-19 00:00:00', '1', '1', '1,2', '22');
COMMIT;

-- ----------------------------
-- Table structure for sys_constant
-- ----------------------------
DROP TABLE IF EXISTS `sys_constant`;
CREATE TABLE `sys_constant` (
  `id` varchar(32) NOT NULL,
  `name_cn` varchar(30) DEFAULT NULL COMMENT '中文名称',
  `name_en` varchar(30) DEFAULT NULL COMMENT '英文名称',
  `value` varchar(30) DEFAULT NULL COMMENT '值',
  `type` int(2) DEFAULT NULL COMMENT '类型',
  `type_decr` varchar(40) DEFAULT NULL COMMENT '类型描述',
  `create_user` varchar(32) DEFAULT NULL COMMENT '创建人ID',
  `create_date` timestamp(6) NULL DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) DEFAULT NULL COMMENT '更新人ID',
  `update_date` timestamp(6) NULL DEFAULT NULL COMMENT '更新时间',
  `is_deleted` int(2) DEFAULT '0' COMMENT '逻辑删除 0 正常 1已删除',
  `status` int(2) DEFAULT '0' COMMENT '启用状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_constant
-- ----------------------------
BEGIN;
INSERT INTO `sys_constant` VALUES ('052eb1d0907f4f0a90ca86f0409e4b1c', '禁用', 'close', '1', 10, '启用状态 0正常 1禁用', 'admin', '2018-10-06 23:47:28.788000', 'admin', '2018-10-06 23:47:28.788000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('32b53a5980c54387916d4dd19f0f88b0', '启用', 'open', '0', 10, '启用状态 0启用 1禁用', 'admin', '2018-10-06 23:25:15.437000', 'admin', '2018-10-06 23:53:35.423000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('3dee8ebb8e9d4f8c9f2d0ea7dc75fd2e', '辅助材料', '', '4', 30, '', 'admin', '2018-10-07 16:54:40.201000', 'admin', '2018-10-07 16:54:40.201000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('6455c3870e0f4292b6747339caae6823', '产成品', 'product', '1', 30, '', 'admin', '2018-10-07 16:26:55.212000', 'admin', '2018-10-07 16:54:03.479000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('6b6b44f4286f41828b3326a48fef764c', '半成品', '', '2', 30, '', 'admin', '2018-10-07 16:53:47.309000', 'admin', '2018-10-07 16:53:47.309000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('950be0d396da41198d62ef952927b555', '生产', 'Production', '1', 40, '', 'admin', '2018-10-07 22:40:37.474000', 'admin', '2018-10-07 22:40:37.474000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('a2e4f34529304a89b172afd2113f0811', '立方', 'm³', '1', 20, '223', 'admin', '2018-10-07 16:18:43.337000', 'admin', '2018-10-07 16:18:43.337000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('e29788d355e94a9cb411f8127a52a556', '零部件', '', '3', 30, '', 'admin', '2018-10-07 16:54:23.470000', 'admin', '2018-10-07 16:54:23.470000', NULL, 0);
INSERT INTO `sys_constant` VALUES ('f5f2e72ddd96415dabb267622ae82817', '其他', '', '', 30, '', 'admin', '2018-10-07 16:55:06.976000', 'admin', '2018-10-07 16:55:06.976000', NULL, 0);
COMMIT;

-- ----------------------------
-- Table structure for sys_dictionary
-- ----------------------------
DROP TABLE IF EXISTS `sys_dictionary`;
CREATE TABLE `sys_dictionary` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '编码',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '名称',
  `group_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分组id',
  `sort` int(2) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_dictionary
-- ----------------------------
BEGIN;
INSERT INTO `sys_dictionary` VALUES ('40', '1', '男', '9', 1);
INSERT INTO `sys_dictionary` VALUES ('41', '0', '女', '9', 2);
INSERT INTO `sys_dictionary` VALUES ('42', 'test', '测试', NULL, NULL);
INSERT INTO `sys_dictionary` VALUES ('43', '1', '测试1', '42', 1);
INSERT INTO `sys_dictionary` VALUES ('44', '2', '测试2', '42', 2);
INSERT INTO `sys_dictionary` VALUES ('45', '3', '测试3', '42', 3);
INSERT INTO `sys_dictionary` VALUES ('9', 'sex', '性别', NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '菜单ID',
  `menu_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单名称',
  `menu_url` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单路径',
  `menu_icon` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单图标',
  `parent_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父级菜单ID',
  `sort` int(8) DEFAULT NULL COMMENT '排序',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_menu` VALUES ('03efa2176e914e748d954d83dd8642c2', '生产线管理', '/workline/init', 'icon-grid', 'e53817133d4c4bf1a641792152c70a80', 4);
INSERT INTO `sys_menu` VALUES ('11', '系统管理', '', 'icon-settings', '0', 4);
INSERT INTO `sys_menu` VALUES ('12', '用户管理', '/user/init', 'icon-users', '11', 1);
INSERT INTO `sys_menu` VALUES ('13', '角色管理', '/sysRole/init', 'icon-user', '11', 2);
INSERT INTO `sys_menu` VALUES ('14', '菜单管理', '/menu/init', 'icon-notebook', '11', 3);
INSERT INTO `sys_menu` VALUES ('1435b35fc58046f5a996066310309b6e', '生产车间管理', '/workshop/init', 'icon-users', 'e53817133d4c4bf1a641792152c70a80', 3);
INSERT INTO `sys_menu` VALUES ('15', '代码生成器', '', 'icon-printer', '0', 3);
INSERT INTO `sys_menu` VALUES ('16', '数据库连接', '/dataSource/init', 'icon-link', '15', 1);
INSERT INTO `sys_menu` VALUES ('17', '表单配置', '/tableConfig/init', 'icon-film', '15', 2);
INSERT INTO `sys_menu` VALUES ('19', '组织管理', '/org/init', 'icon-vector', '11', 4);
INSERT INTO `sys_menu` VALUES ('20', '图标管理', '/index/icon', 'icon-support', '11', 6);
INSERT INTO `sys_menu` VALUES ('21', '数据字典', '/sysDictionary/init', 'icon-book-open', '11', 5);
INSERT INTO `sys_menu` VALUES ('3d10481eaa08426186ba5fb41045e99e', '原材料管理', '/material/init', 'icon-grid', 'e53817133d4c4bf1a641792152c70a80', 1);
INSERT INTO `sys_menu` VALUES ('53699d39851245a68c5a50613ce9cb13', '系统常量', '/constant/init', 'icon-folder', '11', 1);
INSERT INTO `sys_menu` VALUES ('6daf8cbabf274a1ebfcb868d3e1b6417', '生产管理', '', 'icon-grid', '0', 2);
INSERT INTO `sys_menu` VALUES ('8b7c52e9d0504a50ba30511fd3b5f777', '工艺档案管理', '/archive/init', 'icon-folder', 'e53817133d4c4bf1a641792152c70a80', 2);
INSERT INTO `sys_menu` VALUES ('be2822aa4ebf407cb1672e78d56cbb0e', '生产班次管理', '/shift/init', 'icon-home', 'e53817133d4c4bf1a641792152c70a80', 5);
INSERT INTO `sys_menu` VALUES ('e3829e019596414bace631235c90439a', '零件管理', '/part/init', 'icon-grid', '6daf8cbabf274a1ebfcb868d3e1b6417', 1);
INSERT INTO `sys_menu` VALUES ('e53817133d4c4bf1a641792152c70a80', '基础数据管理', '', ' icon-list', '0', 1);
INSERT INTO `sys_menu` VALUES ('ef65a1b3bfa24c2d834ceebcac693364', '生产项目管理', '/item/init', 'icon-grid', 'e53817133d4c4bf1a641792152c70a80', 6);
INSERT INTO `sys_menu` VALUES ('f522f54ddd09409b972edfa4e8981061', '缺陷管理', '/defect/init', 'icon-grid', 'e53817133d4c4bf1a641792152c70a80', 2);
COMMIT;

-- ----------------------------
-- Table structure for sys_org
-- ----------------------------
DROP TABLE IF EXISTS `sys_org`;
CREATE TABLE `sys_org` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID',
  `org_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组织编码',
  `org_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组织名称',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `parent_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '父级菜单ID',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_org
-- ----------------------------
BEGIN;
INSERT INTO `sys_org` VALUES ('1', '001', '济南分公司', '济南', '0', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('2', '002', '北京分公司', '北京', '0', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('3', '003', '上海分公司', '上海', '0', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('4', '001001', '行政部', '行政', '1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('5', '001002', '技术部', '技术', '1', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('6', '003002', '人事部', '人事', '3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('7', '003001', '行政部', '行政', '3', NULL, NULL, NULL, NULL);
INSERT INTO `sys_org` VALUES ('8', '004', '杭州分公司', '杭州', '0', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_code` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色编码',
  `role_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色名称',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '描述',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建日期',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_role` VALUES ('1', '001', '系统管理员', '所有权限', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  `menu_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
BEGIN;
INSERT INTO `sys_role_menu` VALUES ('01d4f26a7d8948ae86418e313b9fd559', '1', '13');
INSERT INTO `sys_role_menu` VALUES ('074f184fe3c144c08dc85f25e1813099', '1', 'e3829e019596414bace631235c90439a');
INSERT INTO `sys_role_menu` VALUES ('0bf3fda31f424c47b40391ff598e63bb', '1', '6daf8cbabf274a1ebfcb868d3e1b6417');
INSERT INTO `sys_role_menu` VALUES ('0cdcc20c822448d2aaccc1727ea488d4', '1', '1435b35fc58046f5a996066310309b6e');
INSERT INTO `sys_role_menu` VALUES ('101', '6', '11');
INSERT INTO `sys_role_menu` VALUES ('102', '6', '12');
INSERT INTO `sys_role_menu` VALUES ('103', '5', '11');
INSERT INTO `sys_role_menu` VALUES ('104', '5', '13');
INSERT INTO `sys_role_menu` VALUES ('1cb7b18f349a4676a733610a6b3fbb78', '1', '03efa2176e914e748d954d83dd8642c2');
INSERT INTO `sys_role_menu` VALUES ('229a97457abb4e3883d26b42976ee6f8', '1', '15');
INSERT INTO `sys_role_menu` VALUES ('23c0d93a353242ed98e49334cae3f9b0', '1', '16');
INSERT INTO `sys_role_menu` VALUES ('2d8025287619423eb750f6641e19b581', '1', '17');
INSERT INTO `sys_role_menu` VALUES ('2e6548ef459e4fc2a331cd3158fed489', '1', '8b7c52e9d0504a50ba30511fd3b5f777');
INSERT INTO `sys_role_menu` VALUES ('34851f3551c24fc6839a85556fcf6f5d', '1', 'e53817133d4c4bf1a641792152c70a80');
INSERT INTO `sys_role_menu` VALUES ('3722530f88e74080b3107dfc4e812eb8', '1', '20');
INSERT INTO `sys_role_menu` VALUES ('3d3608a3be8542a9a3a01ed5d8154c87', '1', '11');
INSERT INTO `sys_role_menu` VALUES ('4b27d9c72cb2447cb1248470c85726b7', '1', '21');
INSERT INTO `sys_role_menu` VALUES ('51d30be97f304ea086e36e60b0814e36', '1', 'f522f54ddd09409b972edfa4e8981061');
INSERT INTO `sys_role_menu` VALUES ('68aa2faf9fb74299894b492ceb0e45ed', '1', '53699d39851245a68c5a50613ce9cb13');
INSERT INTO `sys_role_menu` VALUES ('82', '4', '11');
INSERT INTO `sys_role_menu` VALUES ('83', '4', '12');
INSERT INTO `sys_role_menu` VALUES ('84', '4', '13');
INSERT INTO `sys_role_menu` VALUES ('85', '4', '14');
INSERT INTO `sys_role_menu` VALUES ('86', '4', '19');
INSERT INTO `sys_role_menu` VALUES ('87', '4', '20');
INSERT INTO `sys_role_menu` VALUES ('abc0d5b6f4574c029043d7f7965fce9f', '1', '14');
INSERT INTO `sys_role_menu` VALUES ('c4099afb92a44a6c8c5c6514ac9a5fd0', '1', 'be2822aa4ebf407cb1672e78d56cbb0e');
INSERT INTO `sys_role_menu` VALUES ('d056696772064d8a91a3408c64ef6221', '1', '3d10481eaa08426186ba5fb41045e99e');
INSERT INTO `sys_role_menu` VALUES ('d645ca89e18f491e810c2f421d7676b8', '1', '19');
INSERT INTO `sys_role_menu` VALUES ('db132a1e0c694459993b25b8cb0006a0', '1', '12');
INSERT INTO `sys_role_menu` VALUES ('fc708a78f62d406cb638133b88eeab17', '1', 'ef65a1b3bfa24c2d834ceebcac693364');
COMMIT;

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT 'ID',
  `username` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '姓名',
  `org_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '组织',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `phone` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '电话',
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '邮箱',
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '备注',
  `user_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户头像',
  `del_flag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '删除标识',
  `create_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建人',
  `create_date` datetime DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '修改人',
  `update_date` datetime DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
BEGIN;
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '管理员', '5', '2016-08-07', '15912341234', 'test@test.com', '系统管理员', '20160807/20160807001237253e0729415245869bc90e7e4d239f7c.jpg', '0', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '用户ID',
  `role_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
BEGIN;
INSERT INTO `sys_user_role` VALUES ('21a19c666e3849eb8a3f1e5ccfa53859', '1', '2');
INSERT INTO `sys_user_role` VALUES ('bbf1fe27e945402f8bdba893f42abac6', '1', '1');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
