/*
 Navicat Premium Data Transfer

 Source Server         : ci3vue
 Source Server Type    : MySQL
 Source Server Version : 50722 (5.7.22)
 Source Host           : localhost:8989
 Source Schema         : appcal

 Target Server Type    : MySQL
 Target Server Version : 50722 (5.7.22)
 File Encoding         : 65001

 Date: 06/01/2024 18:35:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agent
-- ----------------------------
DROP TABLE IF EXISTS `agent`;
CREATE TABLE `agent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `contactName` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactTel1` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactTel2` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactEmail` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactFax` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactPosition` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contactReceiveNews` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statusMain` tinyint(4) NOT NULL DEFAULT 0,
  `dateStart` timestamp NULL DEFAULT NULL,
  `dateUpdate` timestamp NULL DEFAULT NULL,
  `userStart` int(11) NOT NULL,
  `userUpdate` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 116 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agent
-- ----------------------------
INSERT INTO `agent` VALUES (37, 5, 0, 'สยามลูบริแค้นท์อินดัสทรี่', '0105521023304', '0105521023304', 'dev.saifah8953@gmail.com', '66-2-2800690, 66-2-282-7917', 'VIP', 'Y', 1, '2021-02-26 09:57:13', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (38, 6, 0, 'บริษัท ทิพยประกันภัย', '0107538000533', '0107538000533', 'saifah1928@gmail.com', '66-2-2800690, 66-2-282-7917', '', 'Y', 1, '2021-02-26 10:01:48', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (39, 7, 0, 'บริษัท ทิพยประกันภัย', '0107538000533', '0107538000533', 'saifah1928@gmail.com', '66-2-2800690, 66-2-282-7917', '', 'Y', 1, '2021-02-26 10:05:43', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (55, 2, 0, 'อรอุมา ศรีวง', '', '0958865165156', 'admin@gmail.com', '0958865165156', '', 'Y', 0, '2021-03-03 13:29:50', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (56, 2, 0, 'วิภาวดี คงวัย', '095869584654', '095869584654', 'saifah1928@gmail.com', '66-2-2800690, 66-2-282-7917', 'VIP', 'Y', 1, '2021-03-03 13:29:50', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (63, 3, 0, 'สยามลูบริแค้นท์อินดัสทรี่', '022800202', '022800202', 'info@siampangroup.com', '66-2-2800690, 66-2-282-7917', 'VIP สยามลูบริแค้นท์อินดัสทรี่', 'Y', 1, '2021-04-20 17:11:52', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (64, 3, 0, 'admin test', '022800202,0956458888', '022800202,0956458888', 'info@siampangroup.com,adminTest@gmail.com', '66-2-2800690, 66-2-282-7917', '', 'Y', 0, '2021-04-20 17:11:52', NULL, 1, 0, 1);
INSERT INTO `agent` VALUES (93, 1, 0, 'สายฟ้า ไพรวรรณ์', '0959086456', '0959086456', 'saifah1928@gmail.com,dev.saifah1928@gmail.com', '1122-321', '', 'Y', 1, '2022-01-11 13:33:24', NULL, 2, 0, 1);
INSERT INTO `agent` VALUES (94, 1, 0, 'admin Vip001', '0864562315', '0864562315', 'admin@gmail.com,vip@vip.com', '9956-665', '', 'Y', 0, '2022-01-11 13:33:24', NULL, 2, 0, 1);
INSERT INTO `agent` VALUES (99, 8, 0, 'อินดัสทรี่', '0107538000533', '0107538000533', 'saifah1928@gmail.com', '66-2-2800690, 66-2-282-7917', 'VIP', 'Y', 1, '2022-01-17 10:07:35', NULL, 2, 0, 1);
INSERT INTO `agent` VALUES (100, 8, 0, 'สายฟ้า ไพรวรรณ์', '0107538000533', '098653254,0107538000533', 'saifah1928@gmail.com', '66-2-2800690, 66-2-282-7917', 'VIP', 'Y', 0, '2022-01-17 10:07:35', NULL, 2, 0, 1);
INSERT INTO `agent` VALUES (102, 9, 0, 'ยุทธพงค์  นาพิกุล', '64545,ได้หลายเบอร์,ตามสบาย', '8888888', 'email@email.com,หลายอีเมล์', '021114454', 'เจ้าหน้าที่โปรแกรมเมอร์', 'Y', 0, NULL, '2022-01-18 14:08:40', 0, 2, 1);
INSERT INTO `agent` VALUES (103, 9, 0, 'มานะ ใจเย็น', 'dddd,cccccc,eeeee', '0881455478956', 'email@email.com', '', 'เจ้าหน้าที่จัดซื้อ', 'Y', 0, NULL, '2022-01-18 13:36:40', 0, 2, 0);
INSERT INTO `agent` VALUES (104, 9, 0, '', '', '', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (105, 9, 0, '', '', '', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (106, 9, 0, 'พาสกร ในเถา', '', '021454478', 'pasakorn@naithao.com', '', '', 'Y', 1, NULL, '2022-01-18 14:12:35', 0, 2, 1);
INSERT INTO `agent` VALUES (107, 9, 0, 'จรินทร์ คำชมพู', '', '021454478', '่jarin@email.com', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (108, 9, 0, 'จรินทร์ คำชมพู', '', '021454478', '่jarin@email.com', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (109, 9, 0, 'จรินทร์ คำชมพู', '', '021454478', '่jarin@email.com', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (110, 9, 0, '', '', '', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (111, 9, 0, '', '', '', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (112, 9, 0, '', '', '', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (113, 9, 0, '', '', '', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);
INSERT INTO `agent` VALUES (114, 9, 0, 'ssssssssss', '', '', '', '', '', 'N', 0, NULL, '2022-01-17 15:37:39', 0, 2, 2);
INSERT INTO `agent` VALUES (115, 9, 0, 'sssssssssssssssssssssssssssssss', 'sdsdsd', 'sssssss,ssssssssss', '', '', '', 'N', 0, NULL, NULL, 0, 0, 2);

-- ----------------------------
-- Table structure for agent_img
-- ----------------------------
DROP TABLE IF EXISTS `agent_img`;
CREATE TABLE `agent_img`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent_id` int(11) NULL DEFAULT 0,
  `imgName` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statusType` tinyint(4) NOT NULL DEFAULT 0,
  `dateStart` timestamp NULL DEFAULT NULL,
  `dateUpdate` timestamp NULL DEFAULT NULL,
  `userStart` int(11) NOT NULL,
  `userUpdate` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of agent_img
-- ----------------------------
INSERT INTO `agent_img` VALUES (1, 9, '61e5520463efa-cables_wires_lights_130357_1280x720.jpg', 0, '2022-01-17 18:24:52', NULL, 2, 0, 1);
INSERT INTO `agent_img` VALUES (3, 9, '61e5521f3c72d-wolf_silhouette_building_188820_3840x2160.jpg', 0, '2022-01-17 18:25:19', NULL, 2, 0, 1);
INSERT INTO `agent_img` VALUES (5, 9, '61e552728e3a3-eyes_black_dark_130416_1600x1200.jpg', 0, '2022-01-17 18:26:42', NULL, 2, 0, 1);
INSERT INTO `agent_img` VALUES (6, 9, '61e668747409a-S__7856165.jpg', 0, '2022-01-18 14:12:52', NULL, 2, 0, 1);

-- ----------------------------
-- Table structure for bank
-- ----------------------------
DROP TABLE IF EXISTS `bank`;
CREATE TABLE `bank`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ชื่อย่อ',
  `NAME_TH` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'remark delete',
  `HISTORY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ประวัติการแก้ไข คั่นด้วย,',
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  FULLTEXT INDEX `CODE`(`CODE`)
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bank
-- ----------------------------
INSERT INTO `bank` VALUES (1, NULL, 'ธนาคารไทยพาณิชย์ ', 'scb bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (2, NULL, 'ธนาคารกรุงไทย', 'krungthai bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (3, NULL, 'ธนาคารกรุงศรี', 'krungsri bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (4, NULL, 'ธนาคารกสิกรไทย', 'kasikorn bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (5, NULL, 'ธนาคารกรุงเทพ', 'bangkok bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (6, NULL, 'ธนาคารเกียรตินาคิน', 'kiatnakin bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (7, NULL, 'ธนาคารซีไอเอ็มบี ไทย', 'cimb thai bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (8, NULL, 'ธนาคารออมสิน', 'gsb bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (9, NULL, 'ธนาคารอาคารสงเคราะห์', 'ghb bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (10, NULL, 'ธนาคารทหารไทย', 'tmb bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (11, NULL, 'ธนาคารอิสลามแห่งประเทศไทย', 'ibank bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (12, NULL, 'ธนาคารทิสโก้', 'tisco bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (13, NULL, 'ธนาคารธนชาต', 'thanachart bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (14, NULL, 'ธนาคารยูโอบี', 'uob bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (15, NULL, 'ธนาคารสแตนดาร์ดชาร์เตอร์ด', 'standard chartered bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);
INSERT INTO `bank` VALUES (16, NULL, 'ธนาคารไอซีบีซี', 'icbc bank', NULL, NULL, '2021-07-05 11:01:24', NULL, 's0001', NULL, 1);

-- ----------------------------
-- Table structure for bill
-- ----------------------------
DROP TABLE IF EXISTS `bill`;
CREATE TABLE `bill`  (
  `approver_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `approver_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_alias` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `document_date` date NULL DEFAULT NULL COMMENT 'วันที่เอกสาร',
  `code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `revise_seq` int(10) NOT NULL DEFAULT 0 COMMENT 'จำนวนครั้ง revise',
  `revise_code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `revise_by` int(20) NULL DEFAULT 0,
  `revise_at` datetime NULL DEFAULT NULL,
  `revise_note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  `customertype_id` int(11) NULL DEFAULT NULL,
  `bill_type` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agent_id` int(11) NULL DEFAULT NULL,
  `agent_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender_department` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender_tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit_day` int(10) NULL DEFAULT 0,
  `credit_id` int(11) NULL DEFAULT NULL,
  `statusservice_id` int(11) NULL DEFAULT NULL,
  `receive_member_id` int(11) NULL DEFAULT NULL COMMENT 'พนักงานที่รับ',
  `note_customers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Note ลูกค้า',
  `company_cert_id` int(11) NULL DEFAULT NULL COMMENT 'บริษัท (Cert)',
  `parent_id` int(11) NULL DEFAULT 0 COMMENT 'อ้างอิงใบก่อนหน้า',
  `request_quotation_id` int(11) NULL DEFAULT NULL COMMENT 'เลขที่ขอใบเสนอราคาอ้างอิง',
  `cash_id` int(11) NULL DEFAULT NULL,
  `checkbox` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `user_start` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `cert_address_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_address_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cert_address_zipcode` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_address_phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_address_province` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address_province` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_map` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `vat_cal` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'no',
  `vat_percent` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.00',
  `vat_total` float(15, 2) NULL DEFAULT 0.00,
  `total_price` decimal(15, 2) NULL DEFAULT 0.00,
  `total_qty` float(10, 2) NULL DEFAULT 1.00,
  `grand_total` decimal(15, 2) NULL DEFAULT 0.00,
  `request_quotation_code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'เลขที่ขอใบเสนอราคาอ้างอิง',
  `bill_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'pending' COMMENT 'สถานะใบเสนอราคา',
  `approve_user` int(11) NULL DEFAULT 0,
  `approve_time` int(20) NULL DEFAULT 0,
  `approve_status` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_discount` decimal(15, 2) NULL DEFAULT 0.00,
  `cancel_remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `discount_other` decimal(15, 2) NULL DEFAULT 0.00,
  `revise_active` tinyint(1) NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `discount_promotion` decimal(15, 2) NULL DEFAULT 0.00,
  `progress_status` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `has_tracking` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill
-- ----------------------------
INSERT INTO `bill` VALUES ('นายอนุมัติ มีมานะ', 'ผู้จัดการฝ่ายไอที', 1, 'request_service', '2022-05-26', '2205-0001DSN', 0, NULL, 0, NULL, '', 8, 1, 'DSN', 99, 'อินดัสทรี่', 'อินดัสทรี่', '', '', '0107538000533', 0, 0, NULL, 2, '', 53, 0, NULL, 1, '', '2022-05-26 06:23:48', '2023-11-06 09:13:46', 2, 2, 1, 'xxxx', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', '12130', '', 'ปทุมธานี', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 1.00, 9700.00, 1.00, 10379.00, NULL, '1', 0, 0, 'draft', 0.00, NULL, 0.00, 1, '', 0.00, '15', 'yes');
INSERT INTO `bill` VALUES ('', '', 2, 'request_service', '2022-08-20', '2208-0001DSC', 0, NULL, 0, NULL, '', 9, 1, 'DSC', 106, 'พาสกร ในเถา', 'พาสกร ในเถา', '', '', '021454478', 0, 0, NULL, 2, '', 0, 0, NULL, 1, '', '2022-08-20 06:14:42', NULL, 2, 0, 1, '', '', '', '', '', 'test', 'test', 'จังหวัด', '1111111', 'โทรศัพท์', 'map', 'yes', '7', 231.00, 3300.00, 1.00, 3531.00, NULL, 'pending', 0, 0, 'draft', 0.00, NULL, 0.00, 1, '', 0.00, NULL, 'yes');

-- ----------------------------
-- Table structure for bill_items
-- ----------------------------
DROP TABLE IF EXISTS `bill_items`;
CREATE TABLE `bill_items`  (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `calid` int(11) NOT NULL DEFAULT 0,
  `item_code` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bill_id` int(11) NOT NULL,
  `instument_status` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'อุปกรณ์',
  `product_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barcode_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufaturer_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufaturer_id` int(11) NULL DEFAULT 0,
  `model` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'รุ่น/แบบ',
  `serialnumber` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_point` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `lab_id` int(11) NULL DEFAULT NULL,
  `sublab_id` int(11) NULL DEFAULT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `point_price` decimal(10, 2) NULL DEFAULT NULL,
  `hour` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range_value` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range_price` decimal(15, 2) NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pickup_date` date NULL DEFAULT NULL COMMENT 'วันที่ให้ไปรับ',
  `pono` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quotation_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'เลขที่ใบเสนอราคา',
  `days_cer` date NULL DEFAULT NULL,
  `ems_date` date NULL DEFAULT NULL,
  `ems_receive` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `user_start` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `requestservice_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maker_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT 1 COMMENT 'จำนวนรายการ',
  `price` decimal(15, 2) NULL DEFAULT 0.00,
  `discount` float(15, 2) NULL DEFAULT 0.00,
  `total` decimal(15, 2) NULL DEFAULT 0.00,
  `qty_day` int(11) NULL DEFAULT NULL COMMENT 'จำนวนวันในการสอบเทียบ',
  `has_tracking` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'no',
  `sorter` int(5) NULL DEFAULT 0,
  PRIMARY KEY (`item_id`, `calid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill_items
-- ----------------------------

-- ----------------------------
-- Table structure for bill_items_del
-- ----------------------------
DROP TABLE IF EXISTS `bill_items_del`;
CREATE TABLE `bill_items_del`  (
  `item_id` int(11) NOT NULL,
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `item_code` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `bill_id` int(11) NOT NULL,
  `instument_status` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'อุปกรณ์',
  `product_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barcode_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufaturer_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufaturer_id` int(11) NULL DEFAULT 0,
  `model` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'รุ่น/แบบ',
  `serialnumber` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_point` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `lab_id` int(11) NULL DEFAULT NULL,
  `sublab_id` int(11) NULL DEFAULT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `point_price` decimal(10, 2) NULL DEFAULT NULL,
  `hour` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range_value` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range_price` decimal(15, 2) NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pickup_date` date NULL DEFAULT NULL COMMENT 'วันที่ให้ไปรับ',
  `pono` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quotation_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'เลขที่ใบเสนอราคา',
  `days_cer` date NULL DEFAULT NULL,
  `ems_date` date NULL DEFAULT NULL,
  `ems_receive` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `user_starts` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `requestservice_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maker_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT 1 COMMENT 'จำนวนรายการ',
  `price` decimal(15, 2) NULL DEFAULT 0.00,
  `discount` float(15, 2) NULL DEFAULT 0.00,
  `total` decimal(15, 2) NULL DEFAULT 0.00,
  `qty_day` int(11) NULL DEFAULT NULL COMMENT 'จำนวนวันในการสอบเทียบ',
  `has_tracking` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'no',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill_items_del
-- ----------------------------

-- ----------------------------
-- Table structure for bill_tracking_data
-- ----------------------------
DROP TABLE IF EXISTS `bill_tracking_data`;
CREATE TABLE `bill_tracking_data`  (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL COMMENT 'รหัสรายการของใบขอรับบริการ',
  `sublab_id` int(11) NOT NULL COMMENT 'รหัสห้องแลป',
  `product_id` int(11) NULL DEFAULT NULL COMMENT 'รหัสสินค้า/เครื่องมือ',
  `bill_id` int(11) NULL DEFAULT NULL COMMENT 'รหัสใบขอรับบริการ',
  `created_at` int(20) NOT NULL COMMENT 'เวลาทำรายการ',
  `sublab_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อห้องแลป',
  `status_id` int(11) NULL DEFAULT NULL COMMENT 'รหัสสถานะ',
  `status_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ชื่อสถานะ',
  `created_by` int(20) NULL DEFAULT 0,
  `created_name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_bin NULL,
  `cust_id` int(20) NULL DEFAULT NULL,
  `cust_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of bill_tracking_data
-- ----------------------------
INSERT INTO `bill_tracking_data` VALUES (1, 6, 1, NULL, 2, 1662805595, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (2, 6, 3, NULL, 2, 1662793097, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (3, 6, 12, NULL, 2, 1662805658, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (4, 6, 33, NULL, 2, 1662804682, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (5, 6, 122, NULL, 2, 1662805715, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (6, 6, 1222, NULL, 2, 1662805822, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (7, 6, 12223, NULL, 2, 1662805937, NULL, 17, '', 0, NULL, NULL, NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (8, 6, 3, 26002, 2, 1664013950, NULL, 17, '', 2, 'ทดสอบ ระบบ', '', NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (9, 6, 3, 26002, 2, 1664014009, NULL, 17, '', 2, 'ทดสอบ ระบบ', '', NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (10, 6, 3, 26002, 2, 1664014074, NULL, 17, '', 2, 'ทดสอบ ระบบ', 'ทดสอบเปลี่ยน tracking status แบบมี หมายเหตุ', NULL, NULL);
INSERT INTO `bill_tracking_data` VALUES (11, 6, 3, 26002, 2, 1667977113, 'ครุภัณฑ์ ส่วนกลาง', 18, 'รับเข้า lab', 2, 'ทดสอบ ระบบ', NULL, 0, NULL);
INSERT INTO `bill_tracking_data` VALUES (12, 1, 4, 2555, 1, 1667991699, 'งานสอบเทียบไฟฟ้า', 17, 'ออก label', 2, 'ทดสอบ ระบบ', NULL, 0, NULL);
INSERT INTO `bill_tracking_data` VALUES (13, 6, 3, 26002, 2, 1667992904, 'ครุภัณฑ์ ส่วนกลาง', 17, 'ออก label', 2, 'ทดสอบ ระบบ', NULL, 0, NULL);
INSERT INTO `bill_tracking_data` VALUES (14, 6, 3, 26002, 2, 1667992965, 'ครุภัณฑ์ ส่วนกลาง', 17, 'ออก label', 2, 'ทดสอบ ระบบ', NULL, 0, NULL);
INSERT INTO `bill_tracking_data` VALUES (15, 5, 4, 2511, 1, 1667994286, 'งานสอบเทียบไฟฟ้า', 17, 'ออก label', 0, '', NULL, 0, NULL);
INSERT INTO `bill_tracking_data` VALUES (16, 5, 4, 2511, 1, 1667994332, 'งานสอบเทียบไฟฟ้า', 17, 'ออก label', 0, '', NULL, 0, NULL);
INSERT INTO `bill_tracking_data` VALUES (17, 5, 4, 2511, 1, 1667994761, 'งานสอบเทียบไฟฟ้า', 17, 'ออก label', 0, '', NULL, 0, NULL);

-- ----------------------------
-- Table structure for blank
-- ----------------------------
DROP TABLE IF EXISTS `blank`;
CREATE TABLE `blank`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERS` int(11) NULL DEFAULT NULL,
  `CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_US` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `WORKSTATUS` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_STARTS` int(11) NOT NULL,
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_UPDATE` int(11) NULL DEFAULT NULL,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `REMARK_DELETE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `STATUS_OFFVIEW` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=off',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '1' COMMENT '1=on',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of blank
-- ----------------------------
INSERT INTO `blank` VALUES (1, NULL, NULL, 'data blank1', NULL, NULL, 1, '2023-01-21 15:19:40', 1, '2023-06-25 21:12:15', NULL, '1', '1');
INSERT INTO `blank` VALUES (2, NULL, 'A002', 'data blank2', 'english data 2', '1', 1, '2023-02-26 16:20:29', 1, '2023-06-25 18:34:43', 'das', NULL, '1');
INSERT INTO `blank` VALUES (3, NULL, 'A003', 'data blank3', NULL, '2', 1, '2023-01-11 13:20:54', NULL, NULL, NULL, NULL, '1');
INSERT INTO `blank` VALUES (4, NULL, 'A004', 'data blank4', NULL, '3', 1, '2023-03-26 15:20:54', NULL, NULL, NULL, NULL, '1');
INSERT INTO `blank` VALUES (5, NULL, 'A005', 'data blank5', NULL, '4', 1, '2023-04-30 08:20:54', 1, '2023-06-26 01:14:09', NULL, NULL, '1');
INSERT INTO `blank` VALUES (6, NULL, 'A006', 'delete', NULL, '4', 1, '2023-05-30 09:20:54', NULL, NULL, NULL, NULL, '0');

-- ----------------------------
-- Table structure for businesstype
-- ----------------------------
DROP TABLE IF EXISTS `businesstype`;
CREATE TABLE `businesstype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateStart` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of businesstype
-- ----------------------------
INSERT INTO `businesstype` VALUES (1, 'ธุรกิจแบบบุคคลธรรมดา', 'Business as an individual', '2020-12-18 13:54:26', 1);
INSERT INTO `businesstype` VALUES (2, 'ธุรกิจแบบนิติบุคคล', 'Corporate business', '2020-12-18 13:54:26', 1);
INSERT INTO `businesstype` VALUES (4, 'ห้างหุ้นส่วนสามัญ', 'Ordinary Partnership', NULL, 1);
INSERT INTO `businesstype` VALUES (5, 'กิจการเจ้าของคนเดียว', 'Sole proprietorship', NULL, 1);
INSERT INTO `businesstype` VALUES (6, 'ห้างหุ้นส่วนสามัญที่จดทะเบียนและห้างหุ้นส่วนจำกัด', 'Registered ordinary partnership and limited partnership', NULL, 1);
INSERT INTO `businesstype` VALUES (7, 'บริษัทจำกัด', 'Limited company', NULL, 1);
INSERT INTO `businesstype` VALUES (8, 'บริษัทมหาชนจำกัด', 'Public Company Limited', NULL, 1);
INSERT INTO `businesstype` VALUES (9, 'ธุรกิจแบบบุคคลธรรมดา', 'Business as an individual', NULL, 1);
INSERT INTO `businesstype` VALUES (10, 'ธุรกิจแบบบุคคลธรรมดา', 'Business as an individual', NULL, 1);
INSERT INTO `businesstype` VALUES (11, 'ธุรกิจแบบบุคคลธรรมดา', 'Business as an individual', NULL, 1);

-- ----------------------------
-- Table structure for cash
-- ----------------------------
DROP TABLE IF EXISTS `cash`;
CREATE TABLE `cash`  (
  `id` int(11) NOT NULL,
  `code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateStart` timestamp NULL DEFAULT NULL,
  `dateUpdate` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cash
-- ----------------------------
INSERT INTO `cash` VALUES (1, 'D', 'Delivery', 'Delivery', '2021-03-13 18:26:47', NULL, 1);
INSERT INTO `cash` VALUES (2, 'DS', 'ส่วนลดประจำปีลูกค้า', 'Annual customer discounts', '2021-03-13 18:26:47', NULL, 1);
INSERT INTO `cash` VALUES (3, 'ECS', 'ECS', 'ECS', '2021-03-13 18:26:47', NULL, 1);
INSERT INTO `cash` VALUES (4, 'O', 'On-Site', 'On-Site', '2021-03-13 18:26:47', NULL, 1);
INSERT INTO `cash` VALUES (5, 'W', 'Walk in', 'Walk in', '2021-03-13 18:26:47', NULL, 1);
INSERT INTO `cash` VALUES (6, 'WS', 'ส่วนลดประจำปีลูกค้า', 'Annual exchange customers', '2021-03-13 18:26:47', NULL, 1);

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
DROP TABLE IF EXISTS `ci_sessions`;
CREATE TABLE `ci_sessions`  (
  `id` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `data` blob NOT NULL,
  INDEX `ci_sessions_timestamp`(`timestamp`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ci_sessions
-- ----------------------------
INSERT INTO `ci_sessions` VALUES ('1d293ae9c1da097a5918bd43b6f0aef275cc335d', '172.18.0.1', 1704537306, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533373330363B);
INSERT INTO `ci_sessions` VALUES ('7865ebc956dea6f786c61d99e927bc57048ed74b', '172.18.0.1', 1704537634, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533373633343B);
INSERT INTO `ci_sessions` VALUES ('0170bd5c9147a0f3c35a53c4ee840f28b59d49ae', '172.18.0.1', 1704538111, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533383131313B);
INSERT INTO `ci_sessions` VALUES ('d93394a94f72b6fed8807aab526ebeca70429992', '172.18.0.1', 1704538487, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533383438373B);
INSERT INTO `ci_sessions` VALUES ('1cd70005d40eb325a74cfecdd3f49371b56dd1ec', '172.18.0.1', 1704538799, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533383739393B);
INSERT INTO `ci_sessions` VALUES ('9b620187b755a4bc9853239c9a9b3f0ec07118c1', '172.18.0.1', 1704539118, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533393131383B);
INSERT INTO `ci_sessions` VALUES ('64fffd19f330b80118c699b0b202b9cc410ee280', '172.18.0.1', 1704539921, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343533393932313B);
INSERT INTO `ci_sessions` VALUES ('37718262b7c6342a59d038ed10cdf74f1effcb02', '172.18.0.1', 1704540237, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343534303233373B);
INSERT INTO `ci_sessions` VALUES ('b23282546fb50597b710e1c731b91b6159b6e180', '172.18.0.1', 1704540538, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343534303533383B);
INSERT INTO `ci_sessions` VALUES ('0332d5a35ec215034db0c243e47192dd8a7e368c', '172.18.0.1', 1704540868, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343534303836383B);
INSERT INTO `ci_sessions` VALUES ('5301dcc13d2b4da6c7e98bee5af7180787d9f5a8', '172.18.0.1', 1704540883, 0x5F5F63695F6C6173745F726567656E65726174657C693A313730343534303836383B);

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customerCode` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `memberCodeSST` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `statusForm` int(11) NOT NULL COMMENT 'สถานะ // เปิดใช่งาน - ปิดใช่งาน',
  `companyName` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อบริษัท',
  `companyNameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CompanyBranch` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subdistrict` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `district` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postalcode` int(11) NOT NULL,
  `country` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `taxNumber` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'หมายเลขผู้เสียภาษี',
  `address` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `province` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryNode_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyNameCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ชื่อบริษัท (CERT)',
  `companyNameEn_Cert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CompanyBranch_Cert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subdistrictCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `districtCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postalcodeCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addressCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryNodeCert_code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `customerType_id` int(11) NOT NULL COMMENT 'ประเภทลูกค้า',
  `creditType_id` int(11) NOT NULL COMMENT 'ประเภทเครดิต',
  `creditNumber` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'เลขที่เครดิต',
  `firstrecordDate` date NOT NULL COMMENT 'วันที่บันทึกครั้งแรก',
  `contactMain` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'หมายเหตุ',
  `fax` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `businessType_id` int(11) NOT NULL,
  `typeofBusinessDBD` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT 'ประเภทธุรกิจ DBD',
  `creditDate` date NOT NULL,
  `creditTime_id` int(11) NOT NULL,
  `creditLimit` decimal(10, 2) NOT NULL,
  `firstDayofuse` date NOT NULL COMMENT 'วันที่ใช้บริการวันแรก',
  `newsFromtheMedia_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `map` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `workTimeStart` datetime NOT NULL,
  `workTimeEnd` datetime NOT NULL,
  `dateStart` timestamp NULL DEFAULT NULL,
  `dateUpdate` timestamp NULL DEFAULT NULL,
  `userStart` int(11) NOT NULL,
  `userUpdate` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastname` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name_th` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lastname_th` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lineid` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `idcard` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pic` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `tax_number` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_company` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'yes',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for customer_address
-- ----------------------------
DROP TABLE IF EXISTS `customer_address`;
CREATE TABLE `customer_address`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CUSTOMER_ID` int(11) NOT NULL,
  `ADDRESS` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ADDRDETAIL` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'เพิ่มเติม',
  `SUBDISTRICT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DISTRICT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PROVINCE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `ZIPCODE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PIC` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'remark delete',
  `HISTORY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ประวัติการแก้ไข คั่นด้วย,',
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `CUSTOMER_ID`(`CUSTOMER_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_address
-- ----------------------------
INSERT INTO `customer_address` VALUES (1, 1, '99/1277', 'พฤกษา', 'ลำผักกูด', 'ธัญบุรี', 'ปทุมธานี', '12110', NULL, NULL, NULL, '2021-07-31 21:58:33', NULL, 's0001', NULL, 1);
INSERT INTO `customer_address` VALUES (2, 1, '26/26', NULL, 'ประชาธิปัตย์', 'ประชาธิปัตย์', 'ปทุมธานี', '11410', NULL, NULL, NULL, '2021-07-31 21:58:33', NULL, 's0001', NULL, 1);

-- ----------------------------
-- Table structure for customer_cert
-- ----------------------------
DROP TABLE IF EXISTS `customer_cert`;
CREATE TABLE `customer_cert`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `selected` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'N',
  `companyNameCert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `companyNameEn_Cert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CompanyBranch_Cert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `subdistrictCert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `districtCert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postalcodeCert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `addressCert` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `provinceCert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryNodeCert_code` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `countryCert` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateStart` timestamp NULL DEFAULT NULL,
  `dateUpdate` timestamp NULL DEFAULT NULL,
  `userStart` int(11) NOT NULL,
  `userUpdate` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 58 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_cert
-- ----------------------------
INSERT INTO `customer_cert` VALUES (19, 2, 'Y', 'ฟาร์มโชคชัย  จำกัด', '', '', 'คูคต', 'ลำลูกกา', '12130', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', 'ปทุมธานี', '-1', 'T', '2021-03-03 13:29:50', NULL, 1, 0, 1);
INSERT INTO `customer_cert` VALUES (27, 3, 'Y', 'เอฟเคเค (ประเทศไทย) จำกัด', '', 'สาขา 1 xxx', 'คลองหนึ่ง', 'คลองหลวง', '12130', 'สำนักงานใหญ่ คลองหลวง 9/225,242-245 รังสิต พรอสเพอร์ เอสเตท 5 ปทุมธานี พหลโยธิน คลองหนึ่ง', 'ปทุมธานี', '-1', 'T', '2021-04-20 17:11:52', NULL, 1, 0, 1);
INSERT INTO `customer_cert` VALUES (28, 3, 'N', 'ฟาร์มโชคชัย  จำกัด (CHOKCHAI DAIRY FARM COMPANY LIMITED)', '', '', 'คูคต', 'ลำลูกกา', '12130', 'ฟาร์มโชคชัย  จำกัด (CHOKCHAI DAIRY FARM COMPANY LIMITED)', 'Bangkok', '-1', 'T', '2021-04-20 17:11:52', NULL, 1, 0, 1);
INSERT INTO `customer_cert` VALUES (47, 1, 'Y', 'ซิโนสยาม จำกัด (SINO SIAM CO., LTD.)', '', '', 'ประเวศ', 'เขตประเวศ', '12130', 'สำนักงานใหญ่ เขตประเวศ กรุงเทพมหานคร ประเวศ', 'ปทุมธานี', '-1', 'T', '2022-01-11 13:33:24', NULL, 2, 0, 1);
INSERT INTO `customer_cert` VALUES (52, 8, 'N', 'ทิพยประกันภัย จำกัด (มหาชน)', '', 'สาขา 1', 'ช่องนนทรี', 'เขตยานนาวา', '12130', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'ปทุมธานี', '-1', 'T', '2022-01-17 10:07:35', NULL, 2, 0, 1);
INSERT INTO `customer_cert` VALUES (53, 8, 'Y', 'xxxx', '', 'สาขา 1', 'คูคต', 'ลำลูกกา', '12130', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', 'ปทุมธานี', '-1', 'T', '2022-01-17 10:07:35', NULL, 2, 0, 1);
INSERT INTO `customer_cert` VALUES (54, 0, 'N', '', '', '', '', '', '', '', '', '', '', '2022-01-18 14:52:13', NULL, 2, 0, 0);
INSERT INTO `customer_cert` VALUES (55, 9, 'Y', 'xxxxxxxxxxxxxxxxdd', '', 'dfdf', 'dfdf', 'dfdf', '11111111', 'dfdf', 'dfdfdf', '-1', 'T', '2022-01-18 15:19:23', '2022-01-18 17:55:38', 2, 2, 1);
INSERT INTO `customer_cert` VALUES (56, 9, 'N', 'dfdf', '', 'dfdf', 'dfdf', 'dfdf', '11111111', 'dfdf', 'dfdfdf', '-1', 'T', '2022-01-18 15:20:22', '2022-01-18 17:06:07', 2, 2, 1);
INSERT INTO `customer_cert` VALUES (57, 9, 'N', 'zzzzzzzzzz', '', 'z', '', '', '', 'zzzzzzzzzzzzzzzzzzzzzzz', '', '-1', 'T', '2022-01-18 15:23:02', '2022-01-18 17:27:31', 2, 2, 1);

-- ----------------------------
-- Table structure for customer_user
-- ----------------------------
DROP TABLE IF EXISTS `customer_user`;
CREATE TABLE `customer_user`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CUSTOMER_ID` int(11) NULL DEFAULT NULL,
  `OWNER` int(11) NULL DEFAULT NULL COMMENT 'customer id if have admin id',
  `FRANSHINE_ID` tinyint(4) NULL DEFAULT 1,
  `DEPARTMENT` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `POSITION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `USERNAME` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PASSWORD` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `PIC` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'remark delete',
  `SYSTEMSTATUS` tinyint(4) NULL DEFAULT NULL COMMENT 'status from system request should value null',
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `CUSTOMER_ID`(`CUSTOMER_ID`) USING BTREE,
  INDEX `OWNER`(`OWNER`) USING BTREE,
  FULLTEXT INDEX `CODE`(`CODE`)
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customer_user
-- ----------------------------
INSERT INTO `customer_user` VALUES (1, 'c0001', 1, NULL, 1, NULL, NULL, 'cus1', 'b59c67bf196a4758191e42f76670ceba', NULL, NULL, NULL, '2021-07-31 22:00:31', NULL, 's0001', NULL, 1);
INSERT INTO `customer_user` VALUES (2, 'c0002', 1, NULL, 1, NULL, NULL, 'jame', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, '2021-07-31 22:00:31', NULL, 's0001', NULL, 1);

-- ----------------------------
-- Table structure for customertype
-- ----------------------------
DROP TABLE IF EXISTS `customertype`;
CREATE TABLE `customertype`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateStart` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of customertype
-- ----------------------------
INSERT INTO `customertype` VALUES (1, 'C', 'ลูกค้าปกติ', 'Default', '2020-12-18 13:17:18', 1);
INSERT INTO `customertype` VALUES (2, 'W', 'มาที่บริษัท', 'Walk in ', '2020-12-18 13:17:18', 1);
INSERT INTO `customertype` VALUES (4, 'O', 'ออนไลน์', 'Online 1', NULL, 1);
INSERT INTO `customertype` VALUES (5, 'S', 'โซเชียล', 'Social', NULL, 1);
INSERT INTO `customertype` VALUES (6, 'test', 'pi', 'pi', NULL, 1);
INSERT INTO `customertype` VALUES (7, 'kingkong', 'kingkong', 'kingkong', NULL, 1);

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERS` int(11) NULL DEFAULT NULL,
  `NAME` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS_OFFVIEW` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=off',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of department
-- ----------------------------

-- ----------------------------
-- Table structure for document_code
-- ----------------------------
DROP TABLE IF EXISTS `document_code`;
CREATE TABLE `document_code`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_code` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'รหัสเอกสาร',
  `alias` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `prefix` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'คำนำหน้า',
  `subfix` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `year` int(10) NULL DEFAULT NULL COMMENT 'ปี',
  `month` int(10) NULL DEFAULT NULL COMMENT 'เดือน',
  `count` int(10) NULL DEFAULT NULL COMMENT 'จำนวนเอกสารที่ออกไป',
  `last_code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL COMMENT 'ตัวอย่างโค้ดที่ออกล่าสุด',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of document_code
-- ----------------------------
INSERT INTO `document_code` VALUES (1, 'quotation', 'P2021-11', 'P', NULL, 2021, 11, 2, 'P21110002');
INSERT INTO `document_code` VALUES (2, 'quotation', 'S2021-11', 'S', NULL, 2021, 11, 1, 'S21110001');
INSERT INTO `document_code` VALUES (3, 'quotation', 'P21110002', 'P', NULL, 2021, 12, 1, 'P21110002');
INSERT INTO `document_code` VALUES (4, 'quotation', 'P2021-12', 'P', NULL, 2021, 12, 1, 'P21120001');
INSERT INTO `document_code` VALUES (5, 'quotation', '2021-12', NULL, NULL, 2021, 12, 2, '21120002');
INSERT INTO `document_code` VALUES (6, 'request_service', '2021-12', NULL, NULL, 2021, 12, 7, '2112-0007D');
INSERT INTO `document_code` VALUES (7, 'quotation', 'P21120001', 'P', NULL, 2022, 1, 1, 'P21120001');
INSERT INTO `document_code` VALUES (8, 'quotation', 'P2022-01', 'P', NULL, 2022, 1, 1, 'P2210001');
INSERT INTO `document_code` VALUES (11, 'quotation', 'S21110001', 'S', NULL, 2022, 5, 2, 'S21110001');
INSERT INTO `document_code` VALUES (12, 'quotation', 'P2022-05', 'P', NULL, 2022, 5, 1, 'P2205-0001');
INSERT INTO `document_code` VALUES (13, 'quotation', 'P2205-0001', 'P', NULL, 2022, 5, 3, 'P2205-0001');
INSERT INTO `document_code` VALUES (14, 'request_service', '2022-05', 'DSN', 'DSN', 2022, 5, 1, '2205-0001DSN');
INSERT INTO `document_code` VALUES (15, 'request_service', '2022-08', 'DSC', 'DSC', 2022, 8, 1, '2208-0001DSC');

-- ----------------------------
-- Table structure for documents
-- ----------------------------
DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents`  (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `alias` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of documents
-- ----------------------------
INSERT INTO `documents` VALUES (1, 'ใบแจ้งขอใบเสนอราคา', 'ลูกค้าแจ้งขอใบเสนอราคา', 'request_quotation', 1);
INSERT INTO `documents` VALUES (2, 'ใบเสนอนราคา', 'ใบเสนอราคาพนักงานออกให้ลูกค้า', 'quotation', 1);
INSERT INTO `documents` VALUES (3, 'ใบขอรับบริการ', 'ใบขอรับบริการที่ออกให้ลูกค้า', 'request_service', 1);

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `PREFIX` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LASTNAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_US` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `LASTNAME_US` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MARRIED` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=แต่งงานแล้ว',
  `EMAIL` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `POSITION` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `POSITION_NAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DEPARTMENT` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SECTION` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATE_START` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (0, NULL, NULL, 'admin', NULL, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-01 14:20:00', NULL, NULL, '1');

-- ----------------------------
-- Table structure for lab
-- ----------------------------
DROP TABLE IF EXISTS `lab`;
CREATE TABLE `lab`  (
  `ID` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DEPCODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NAME_US` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `REMARK` varchar(250) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `INTERVALTIME` smallint(6) NULL DEFAULT NULL,
  `QCBOOK` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `BRANCHCODE` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `INVCODE` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `SECTCODE` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `PROJECTCODE` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `ACCOUNTCODE` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_STARTS` smallint(6) NULL DEFAULT NULL,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_UPDATE` smallint(6) NULL DEFAULT NULL,
  `STATUS` bit(1) NULL DEFAULT b'1',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `CODE`(`CODE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lab
-- ----------------------------
INSERT INTO `lab` VALUES (1, 'Admin', 'Admin', 'ผู้ดูแลระบบ', 'Administrator', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (2, 'C', 'CE', 'ส่วนงานรับ-ส่งเครื่องมือ', 'Delivery', NULL, 0, 'C01M', '00001', 'SVC01M', '022140', '399', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (3, 'Marketing', 'CE', 'งานการตลาด', 'Marketing', NULL, 0, 'C01M', '00001', 'SVC01M', '022140', '399', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (4, 'Office', 'CE', 'สำนักงานฝ่าย (ส่วนกลาง)', 'CentralOffice', NULL, 0, 'C01M', '00001', 'SVC01M', '022110', '300', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (5, 'Support', 'CE', 'ส่วนสนับสนุนภายใน', 'Support', NULL, 0, 'C01M', '00001', 'SVC01M', '022140', '399', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (6, 'Quality', 'CE', 'แผนกคุณภาพ', 'QualityManagement', NULL, 0, 'C01M', '00001', 'SVC01M', '022140', '399', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (7, 'IICC', 'IICC', 'แผนกสอบเทียบเครื่องมือวัดอุตสาหกรรม', '', NULL, 0, 'C01M', '00001', 'SVC01M', '022110', '300', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (8, 'LCEC', 'LCEC', 'แผนกสอบเทียบเครื่องมือห้องปฏิบัติการและวิเคระห์สิ่งแวดล้อม', '', NULL, 0, 'C01M', '00001', 'SVC01M', '022130', '370', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (9, 'E', 'IICC', 'ห้องปฏิบัติการสอบเทียบไฟฟ้า', 'Electrical (Lab&Dev)', NULL, 12, 'C01M', '00001', 'SVC01M', '022110', '301', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (10, 'L', 'IICC', 'ห้องปฏิบัติการสอบเทียบมิติ', 'Dimensional (Lab&Dev)', NULL, 22, 'C01M', '00001', 'SVC01M', '022110', '302', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (11, 'M', 'IICC', 'ห้องปฏิบัติการสอบเทียบมวลและเครื่องชั่ง ', 'Mass', NULL, 7, 'C01M', '00001', 'SVC01M', '022110', '303', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (12, 'F', 'IICC', 'ห้องปฏิบัติการสอบเทียบแรงบิด', 'Torque', NULL, 7, 'C01M', '00001', 'SVC01M', '022110', '306', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (13, 'P', 'IICC', 'ห้องปฏิบัติการสอบเทียบความดันและสุญญากาศ', 'Pressure', NULL, 10, 'C01M', '00001', 'SVC01M', '022110', '305', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (14, 'T', 'IICC', 'ห้องปฏิบัติการสอบเทียบอุณหภูมิ ', 'Temperature', NULL, 14, 'C01M', '00001', 'SVC01M', '022110', '307', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (15, 'S', 'LCEC', 'แผนกสอบเทียบนอกสถานที่', 'On-Site (Center)', NULL, 14, 'C01M', '00001', 'SVC01M', '022120', '350', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (16, 'H', 'LCEC', 'ห้องปฏิบัติการสอบเทียบความชื้น', 'Humidity', NULL, 14, 'C01M', '00001', 'SVC01M', '022130', '374', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (17, 'CHEM', 'LCEC', 'ห้องปฏิบัติการสอบเทียบเคมี', 'Chemical', NULL, 7, 'C01M', '00001', 'SVC01M', '022130', '372', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (18, 'GW', 'LCEC', 'ห้องปฏิบัติการสอบเทียบปริมาตร', 'Volumetric', NULL, 7, 'C01M', '00001', 'SVC01M', '022130', '371', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (19, 'LI', 'IICC', 'ห้องปฏิบัติการสอบเทียบแสง', 'Photometry ', NULL, 16, 'C01M', '00001', 'SVC01M', '022110', '309', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (20, 'EL', 'IICC', 'ห้องปฏิบัติการสอบเทียบมิติ สาขาระยอง', 'Dimension (Rayong)', NULL, 7, '0001', '0003', 'SVH001', '032150', '381', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (21, 'Apprentice', 'CE', 'นักศึกษาฝึกงาน', 'Apprentice', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (22, 'MD', '340', 'ห้องปฏิบัติการสอบเทียบและทดสอบเครื่องมือแพทย์', 'Medical Equipments Calibration Laboratory', NULL, 11, 'C01M', '00001', 'SVC01M', '022130', '340', '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (23, 'ECS', 'ECS', 'โครงการพิเศษ ECS', 'Equicment Care Services', NULL, 20, 'C01M', '00001', 'SVC01M', '022141', NULL, '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (24, 'EH', '301H', 'ห้องปฎิบัติการสอบเทียบไฟฟ้า (High Accuracy)', 'Electrical (High Accuracy)', NULL, 0, 'C01M', '00001', 'SVC01M', '022110', NULL, '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (25, '350-02', 'LCEC', 'แผนกสอบเทียบนอกสถานที่', 'On-site (Service Change)', NULL, 0, 'C01M', '00001', 'SVC01M', '022120', NULL, '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (26, '350-01', 'LCEC', 'แผนกสอบเทียบนอกสถานที่', 'On-Site (Travelling Change)', NULL, 0, 'C01M', '00001', 'SVC01M', '022120', NULL, '412010', '2023-12-25 09:19:29', NULL, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (27, 'test', 'aa', 'test', 'us', 'u', 0, NULL, NULL, NULL, NULL, 'u', NULL, '2024-01-05 13:20:42', 1, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (29, 'test', NULL, 'a', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 13:26:37', 1, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (30, 'test 1', NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 13:28:45', 1, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (31, 'test 2', NULL, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 13:29:10', 1, NULL, NULL, b'1');
INSERT INTO `lab` VALUES (32, 'test', NULL, 'test3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-05 13:31:59', 1, NULL, NULL, b'1');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMAIL` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `POSITION` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DEPARTMENT` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `SECTION` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATE_START` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of member
-- ----------------------------

-- ----------------------------
-- Table structure for menus
-- ----------------------------
DROP TABLE IF EXISTS `menus`;
CREATE TABLE `menus`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` tinyint(4) NULL DEFAULT NULL,
  `CODE` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_US` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menus
-- ----------------------------
INSERT INTO `menus` VALUES (1, 2, 'dashboard', 'แดชบอร์ด', 'dashboard');
INSERT INTO `menus` VALUES (2, 1, 'quotation', 'ใบเสนอราคา', 'quotation');
INSERT INTO `menus` VALUES (3, 3, 'bill', 'ใบขอรับบริการ', 'bill');
INSERT INTO `menus` VALUES (4, 4, 'workorder', 'work order', 'work order');
INSERT INTO `menus` VALUES (5, 2, 'instrument', 'เครื่องมือ', 'instrument');
INSERT INTO `menus` VALUES (6, 2, 'stdinstrument', 'เครื่องมือมาตรฐาน', 'standard instrument');

-- ----------------------------
-- Table structure for permit
-- ----------------------------
DROP TABLE IF EXISTS `permit`;
CREATE TABLE `permit`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SORT` tinyint(4) NULL DEFAULT NULL,
  `CODE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_US` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `MENUS_ID` int(11) NULL DEFAULT NULL,
  `MENUS_CODE` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `MENUS_ID`(`MENUS_ID`) USING BTREE,
  FULLTEXT INDEX `MENUS_CODE`(`MENUS_CODE`)
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permit
-- ----------------------------
INSERT INTO `permit` VALUES (1, 1, 'dashboard.role', 'ข้อมูลแดชบอร์ด', 'dashboard', 1, 'dashboard');
INSERT INTO `permit` VALUES (2, 1, 'quotation.view', 'ดู ใบเสนอราคา', 'view quotation', 2, 'quotation');
INSERT INTO `permit` VALUES (3, 2, 'quotation.insert', 'เพิ่ม ใบเสนอราคา', 'add quotation', 2, 'quotation');
INSERT INTO `permit` VALUES (4, 3, 'quotation.edit', 'แก้ไข ใบเสนอราคา', 'edit quotation', 2, 'quotation');
INSERT INTO `permit` VALUES (5, 4, 'quotation.delete', 'ลบ ใบเสนอราคา', 'delete quotation', 2, 'quotation');
INSERT INTO `permit` VALUES (6, 1, 'bill.view', 'ดู ใบขอรับบริการ', 'view bill', 3, 'bill');
INSERT INTO `permit` VALUES (7, 2, 'bill.insert', 'เพิ่ม ใบขอรับบริการ', 'add bill', 3, 'bill');
INSERT INTO `permit` VALUES (8, 3, 'bill.edit', 'แก้ไข ใบขอรับบริการ', 'edit bill', 3, 'bill');
INSERT INTO `permit` VALUES (9, 4, 'bill.delete', 'ลบ ใบขอรับบริการ', 'delete bill', 3, 'bill');
INSERT INTO `permit` VALUES (10, 5, 'bill.approve', 'อนุมัติ ใบขอรับบริการ', 'approve bill', 3, 'bill');
INSERT INTO `permit` VALUES (11, 6, 'bill.revise', 'revise ใบขอรับบริการ', 'revise bill', 3, 'bill');
INSERT INTO `permit` VALUES (12, 1, 'workorder.view', 'ดู work order', 'view work order', 4, 'workorder');
INSERT INTO `permit` VALUES (13, 2, 'workorder.insert', 'เพิ่ม work order', 'add work order', 4, 'workorder');
INSERT INTO `permit` VALUES (14, 3, 'workorder.edit', 'แก้ไข work order', 'edit work order', 4, 'workorder');
INSERT INTO `permit` VALUES (15, 4, 'workorder.delete', 'ลบ work order', 'delete work order', 4, 'workorder');
INSERT INTO `permit` VALUES (16, 5, 'workorder.approve', 'อนุมัติ work order', 'approve work order', 4, 'workorder');
INSERT INTO `permit` VALUES (17, 1, 'instrument.view', 'ดู เครื่องมือ', 'view instrument', 5, 'instrument');
INSERT INTO `permit` VALUES (18, 2, 'instrument.insert', 'เพิ่ม เครื่องมือ', 'add instrument', 5, 'instrument');
INSERT INTO `permit` VALUES (19, 3, 'instrument.edit', 'แก้ไข เครื่องมือ', 'edit instrument', 5, 'instrument');
INSERT INTO `permit` VALUES (20, 4, 'instrument.delete', 'ลบ เครื่องมือ', 'delete instrument', 5, 'instrument');
INSERT INTO `permit` VALUES (21, 1, 'instrumentstd.view', 'ดู เครื่องมือมาตรฐาน', 'view standard instrument', 6, 'standard instrument');
INSERT INTO `permit` VALUES (22, 2, 'instrumentstd.insert', 'เพิ่ม เครื่องมือมาตรฐาน', 'add standard instrument', 6, 'standard instrument');
INSERT INTO `permit` VALUES (23, 3, 'instrumentstd.edit', 'แก้ไข เครื่องมือมาตรฐาน', 'edit standard instrument', 6, 'standard instrument');
INSERT INTO `permit` VALUES (24, 4, 'instrumentstd.delete', 'ลบ เครื่องมือมาตรฐาน', 'delete standard instrument', 6, 'standard instrument');

-- ----------------------------
-- Table structure for permit_control
-- ----------------------------
DROP TABLE IF EXISTS `permit_control`;
CREATE TABLE `permit_control`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STAFF_ID` int(11) NULL DEFAULT NULL,
  `ROLES_ID` int(11) NULL DEFAULT NULL,
  `PERMIT_ID` int(11) NULL DEFAULT NULL,
  `ARIA` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ประเภทการตั้งระยะเวลา ban,assign',
  `PERIOD_BEGIN` datetime NULL DEFAULT NULL COMMENT 'ระยะเวลาเริ่มต้น',
  `PERIOD_END` datetime NULL DEFAULT NULL COMMENT 'ระยะเวลาสิ้นสุด',
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS_OFFVIEW` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=off',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `STAFF_ID`(`STAFF_ID`) USING BTREE,
  INDEX `ROLES_ID`(`ROLES_ID`) USING BTREE,
  INDEX `PERMIT_ID`(`PERMIT_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of permit_control
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `PRODUCTTYPE_ID` smallint(6) NULL DEFAULT NULL,
  `MANUFATURER_ID` smallint(6) NULL DEFAULT NULL,
  `LAB_ID` smallint(6) NULL DEFAULT NULL,
  `SUBLAB_ID` int(11) NULL DEFAULT NULL,
  `CALPOINT` smallint(6) NULL DEFAULT NULL,
  `CALPRICE` decimal(8, 2) NULL DEFAULT NULL,
  `CALHOUR` decimal(5, 2) NULL DEFAULT NULL,
  `CODE` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ชื่อย่อ',
  `NAME` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NAME_TH` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `IMAGE` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `REMARK_ID` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'remark delete',
  `HISTORY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ประวัติการแก้ไข คั่นด้วย,',
  `DATE_START` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_START` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=off,1=on',
  `total_price` decimal(10, 0) NULL DEFAULT 0,
  `range_value` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `range_price` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `point` decimal(15, 2) NULL DEFAULT 0.00,
  `check_iso` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `is_master` int(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `LAB_ID`(`LAB_ID`) USING BTREE,
  INDEX `SUBLAB_ID`(`SUBLAB_ID`) USING BTREE,
  INDEX `PRODUCTTYPE_ID`(`PRODUCTTYPE_ID`) USING BTREE,
  FULLTEXT INDEX `CODE`(`CODE`)
) ENGINE = InnoDB AUTO_INCREMENT = 26007 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES (1, NULL, NULL, 9, 4, 2, 400.00, 2.50, '301-02-10', 'Digital Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2, NULL, NULL, 9, 4, 2, 400.00, 2.50, '301-01-02', 'True RMS Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (3, NULL, NULL, 9, 4, 2, 400.00, 2.50, '301-01-03', 'Digital Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (4, NULL, NULL, 9, 4, 5, 1680.00, 0.30, '301-09-31', 'System Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (5, NULL, NULL, 9, 4, 6, 1100.00, 2.50, '301-10-01', 'Temperature Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (6, NULL, NULL, 9, 4, 2, 760.00, 2.50, '301-14-01', 'Wattmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (7, NULL, NULL, 9, 4, 2, 400.00, 1.00, '301-09-02', 'AC VoltageCurrent Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (8, NULL, NULL, 9, 4, 5, 1680.00, 1.00, '301-09-05', 'DC VoltageCurrent Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (9, NULL, NULL, 9, 4, 5, 1680.00, 3.00, '301-09-27', 'Loop Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (10, NULL, NULL, 9, 4, 5, 1680.00, 3.00, '301-09-01', 'Documenting Process Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (11, NULL, NULL, 9, 4, 5, 1680.00, 3.00, '301-09-06', 'Portable Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (12, NULL, NULL, 9, 4, 6, 900.00, 1.00, '301-18-01', 'Digital Hand Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (13, NULL, NULL, 9, 4, 6, 900.00, 1.00, '301-18-02', 'Digital Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (14, NULL, NULL, 9, 4, 6, 900.00, 1.00, '301-18-03', 'Photo Contact Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (15, NULL, NULL, 9, 4, 6, 900.00, 1.00, '301-18-04', 'Pocket Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (16, NULL, NULL, 9, 4, 6, 900.00, 1.00, '301-22-01', 'Stroboscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (17, NULL, NULL, 9, 4, 1, 1500.00, 2.00, '301-04-01', 'Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (18, NULL, NULL, 9, 4, 1, 1500.00, 2.00, '301-04-02', 'Digital Storage Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (19, NULL, NULL, 9, 4, 1, 600.00, 0.30, '301-07-01', 'Quartz Stop Watch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (20, NULL, NULL, 9, 4, 6, 700.00, 1.00, '301-05-02', 'Frequency Counter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (21, NULL, NULL, 9, 4, 6, 700.00, 1.00, '301-05-09', 'Counter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (22, NULL, NULL, 9, 4, 6, 700.00, 2.00, '301-06-01', 'Timer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (23, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-21-02', 'Decade Resistance Box', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (24, NULL, NULL, 9, 4, 1, 400.00, 0.30, '301-20-06', 'Resistor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (25, NULL, NULL, 9, 4, 6, 600.00, 1.00, '301-15-26', 'Earth Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (26, NULL, NULL, 9, 4, 6, 600.00, 1.00, '301-15-27', 'Insulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (27, NULL, NULL, 9, 4, 5, 1680.00, 1.00, '301-13-03', 'Withstanding Voltage Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (28, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-20-02', 'Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (29, NULL, NULL, 9, 4, 1, 10500.00, 3.00, '301-16-01', 'Multi-Product Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (30, NULL, NULL, 9, 4, 5, 400.00, 1.00, '301-01-10', 'AC Ammeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (31, NULL, NULL, 9, 4, 5, 400.00, 1.00, '301-01-15', 'DC Ammeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (32, NULL, NULL, 9, 4, 5, 400.00, 1.00, '301-01-19', 'AC Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (33, NULL, NULL, 9, 4, 5, 400.00, 1.00, '301-01-20', 'DC Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (34, NULL, NULL, 9, 4, 5, 400.00, 1.00, '301-01-22', 'Analog Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (35, NULL, NULL, 9, 4, 1, 2500.00, 1.00, '301-03-01', 'Gauss Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (36, NULL, NULL, 9, 4, 6, 600.00, 1.00, '301-01-14', 'Milliohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (37, NULL, NULL, 9, 4, 6, 600.00, 1.00, '301-01-28', 'Megohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (38, NULL, NULL, 9, 4, 2, 760.00, 1.00, '301-08-01', 'Digital Power Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (39, NULL, NULL, 9, 4, 5, 1680.00, 1.00, '301-09-29', 'Universal Measuring Device', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (40, NULL, NULL, 9, 4, 5, 1680.00, 2.00, '301-09-18', 'DC Voltage Current Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (41, NULL, NULL, 9, 4, 2, 400.00, 1.00, '301-01-12', 'Current Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (42, NULL, NULL, 9, 4, 6, 600.00, 1.00, '301-15-11', 'Ground Continuity Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (43, NULL, NULL, 9, 4, 6, 650.00, 1.00, '301-10-13', 'Data Logging Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (44, NULL, NULL, 9, 4, 6, 650.00, 0.50, '301-10-15', 'Digital Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (45, NULL, NULL, 9, 4, 6, 900.00, 1.00, '301-12-01', 'Temperature Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (46, NULL, NULL, 9, 4, 5, 1500.00, 1.00, '301-13-18', 'ACDC High Voltage', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (47, NULL, NULL, 10, 6, 10, 850.00, 1.00, '302-01-01', 'Dial Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (48, NULL, NULL, 10, 6, 10, 850.00, 1.00, '302-01-02', 'Digital Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (49, NULL, NULL, 10, 6, 10, 850.00, 1.00, '302-02-01', 'Vernier Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (50, NULL, NULL, 10, 6, 10, 2000.00, 1.00, '302-01-04', 'Vernier Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (51, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-03-06', 'Point Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (52, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-10-01', 'Digital Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (53, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-03-07', 'Depth Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (54, NULL, NULL, 10, 6, 13, 900.00, 1.00, '302-06-01', 'Can Seam Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (55, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-03-03', 'External Scale Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (56, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-14-01', 'Dial Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (57, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-03-04', 'External Digital Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (58, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-14-04', 'Ultrasonic Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (59, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-09-03', 'Ladder Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (60, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-09-01', 'Dial Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (61, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-09-14', 'Dial Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (62, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-10-02', 'Digimatic Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (63, NULL, NULL, 10, 6, 1, 1800.00, 1.00, '302-11-02', 'Dial Test Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (64, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-12-01', 'Steel Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (65, NULL, NULL, 10, 6, 10, 1200.00, 1.00, '302-13-01', 'Steel Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (66, NULL, NULL, 10, 6, 1, 4300.00, 1.00, '302-16-01', 'Dial Gauge Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (67, NULL, NULL, 10, 6, 1, 450.00, 1.00, '302-17-01', 'Standard Bar', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (68, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-18-01', 'Vernier Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (69, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-18-02', 'Digimatic Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (70, NULL, NULL, 10, 6, 1, 150.00, 1.50, '302-20-01', 'Feeler Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (71, NULL, NULL, 10, 6, 10, 900.00, 1.50, '302-20-02', 'Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (72, NULL, NULL, 10, 6, 10, 900.00, 5.00, '302-21-02', 'Micrometer Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (73, NULL, NULL, 10, 6, 1, 4300.00, 5.00, '302-22-01', 'Calibration Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (74, NULL, NULL, 10, 6, 10, 1300.00, 2.00, '302-15-02', 'Zoom Loupe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (75, NULL, NULL, 10, 6, 10, 1300.00, 2.00, '302-15-03', 'Scale Loupe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (76, NULL, NULL, 10, 6, 1, 450.00, 5.00, '302-17-04', 'Micrometer Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (77, NULL, NULL, 10, 6, 1, 150.00, 2.00, '302-20-03', 'Film Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (78, NULL, NULL, 10, 6, 15, 900.00, 1.00, '302-23-01', 'Taper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (79, NULL, NULL, 10, 6, 1, 2500.00, 1.00, '302-24-01', 'Riser Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (80, NULL, NULL, 10, 6, 19, 910.00, 1.00, '302-25-01', 'Level Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (81, NULL, NULL, 10, 6, 6, 3510.00, 1.00, '302-21-05', 'Depth Micro Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (82, NULL, NULL, 10, 6, 10, 3500.00, 1.00, '302-26-05', 'Linear Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (83, NULL, NULL, 10, 6, 1, 4500.00, 7.00, '302-27-01', 'Digimatic Height Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (84, NULL, NULL, 10, 6, 1, 3200.00, 6.00, '302-28-01', 'Caliper Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (85, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-07-01', 'Electronic Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (86, NULL, NULL, 10, 6, 1, 1000.00, 1.00, '302-30-01', 'Snap Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (87, NULL, NULL, 10, 6, 1, 120.00, 1.00, '302-31-01', 'Pin Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (88, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-32-01', 'Plug Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (89, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-33-01', 'Ring Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (90, NULL, NULL, 10, 6, 1, 1100.00, 1.00, '302-33-05', 'Thread Ring Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (91, NULL, NULL, 10, 6, 1, 400.00, 1.00, '302-19-01', 'Thread Measuring Wiresยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (92, NULL, NULL, 10, 6, 1, 1100.00, 1.00, '302-32-03', 'Thread Plug Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (93, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-26-02', 'Digimatic Scale Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (94, NULL, NULL, 10, 6, 1, 1000.00, 1.00, '302-34-01', 'Precision Square', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (95, NULL, NULL, 10, 6, 1, 1100.00, 1.00, '302-29-01', 'Bore Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (96, NULL, NULL, 10, 6, 1, 200.00, 1.00, '302-17-02', 'Interchangable Rods', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (97, NULL, NULL, 10, 6, 14, 900.00, 1.00, '302-04-02', 'Tubular Inside Micrometerยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (98, NULL, NULL, 11, 8, 1, 600.00, 1.00, '303-01-01', 'Standard Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (99, NULL, NULL, 11, 8, 1, 600.00, 1.00, '303-01-02', 'Standard Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (100, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-02-05', 'Steel Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (101, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-02-15', 'Steel Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (102, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-03-01', 'Brass Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (103, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-03-02', 'Brass Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (104, NULL, NULL, 11, 9, 1, 1800.00, 1.00, '304-01-01', 'Spring Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (105, NULL, NULL, 11, 9, 1, 1600.00, 1.00, '304-02-01', 'Electronic Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (106, NULL, NULL, 11, 9, 1, 2000.00, 1.00, '304-03-01', 'Beam Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (107, NULL, NULL, 11, 9, 10, 1000.00, 1.00, '304-04-01', 'Push-Pull Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (108, NULL, NULL, 11, 9, 10, 1000.00, 1.00, '304-05-01', 'Digital Force Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (109, NULL, NULL, 11, 9, 9, 1500.00, 1.00, '304-06-01', 'Durometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (110, NULL, NULL, 11, 9, 9, 1500.00, 1.00, '304-06-02', 'Hardness Durometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (111, NULL, NULL, 11, 9, 9, 1500.00, 1.00, '304-06-03', 'Hardness Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (112, NULL, NULL, 11, 9, 5, 1300.00, 1.00, '304-07-01', 'Dial Tension Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (113, NULL, NULL, 13, 11, 5, 650.00, 1.00, '305-01-01', 'Compound Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (114, NULL, NULL, 13, 11, 5, 650.00, 1.00, '305-02-01', 'Sphygmomanometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (115, NULL, NULL, 13, 11, 6, 650.00, 1.00, '305-02-02', 'Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (116, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-03-01', 'Vacuum Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (117, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-04-01', 'Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (118, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-07-01', 'Pressure Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (119, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-04-04', 'Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (120, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-08-01', 'Pressure Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (121, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-09-01', 'Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (122, NULL, NULL, 13, 11, 5, 950.00, 1.00, '305-14-01', 'Pressure Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (123, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-09-04', 'Digital Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (124, NULL, NULL, 13, 11, 5, 950.00, 1.00, '305-05-02', 'Pressure Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (125, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-12-01', 'Pressure Switch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (126, NULL, NULL, 13, 11, 1, 12000.00, 1.00, '305-11-01', 'Hydraulic Dead Weight Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (127, NULL, NULL, 13, 11, 1, 12000.00, 1.00, '305-11-02', 'Dead Weight Tester ให้ใช้Hydraulic Dead Weight Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (128, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-06-04', 'Digital Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (129, NULL, NULL, 13, 11, 5, 1500.00, 1.00, '305-13-01', 'Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (130, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-10-01', 'Pressure Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (131, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-01-01', 'Torque Wrench', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (132, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-03-06', 'Torque Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (133, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-01-03', 'Beam Type Torque Wrench', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (134, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-01-04', 'Semi-Automatic Air Torque', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (135, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-01-05', 'Torque Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (136, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-01-06', 'Semi - Automatic Air Torque', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (137, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-01-07', 'Digital Display Torque Wrench', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (138, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-02-01', 'Torque Driver', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (139, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-02-02', 'Dial Indicating Torque Wrench', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (140, NULL, NULL, 12, 10, 1, 3000.00, 1.00, '306-03-01', 'Torque Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (141, NULL, NULL, 14, 12, 1, 950.00, 1.00, '307-01-01', 'Liquid-in Glass Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (142, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-08-11', 'Thermocouple', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (143, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-03-01', 'MIG Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (144, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-01-03', 'Glass Tube Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (145, NULL, NULL, 14, 13, 1, 950.00, 1.00, '308-02-09', 'Handheld Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (146, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-02', 'Digital Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (147, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-03', 'Pressure Temperature Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (148, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-35', 'pH Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (149, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-05', 'Digital Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (150, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-51', 'Resistance Bulb', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (151, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-09-01', 'Resistance Temperature Detector', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (152, NULL, NULL, 14, 12, 1, 1650.00, 1.00, '307-02-54', 'Temperature Calibrator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (153, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-53', 'Temperature Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (154, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-04-01', 'Dial Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (155, NULL, NULL, 14, 12, 1, 1050.00, 1.00, '307-02-52', 'Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (156, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-44', 'Data Logger With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (157, NULL, NULL, 14, 12, 1, 1050.00, 1.00, '307-07-01', 'Temperature Transmitter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (158, NULL, NULL, 14, 12, 1, 820.00, 1.00, '307-06-05', 'Thermoreactor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (159, NULL, NULL, 14, 13, 1, 950.00, 1.00, '308-01-01', 'Liquid-in Glass Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (160, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-03-01', 'Digital Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (161, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-05-01', 'Thermocouple', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (162, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-04-01', 'Resistance Temperature Detector 2 wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (163, NULL, NULL, 14, 13, 1, 1650.00, 1.00, '308-06-01', 'Dry Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (164, NULL, NULL, 14, 13, 1, 1650.00, 1.00, '308-06-04', 'Dry Well Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (165, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-03-04', 'Temperature Calibrator with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (166, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-03-03', 'Data Acquisition With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (167, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-01', 'Lux Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (168, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-02', 'Lux FC Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (169, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-03', 'UV Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (170, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-04', 'Digital Lux Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (171, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-05', 'Lux Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (172, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-06', 'Elcometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (173, NULL, NULL, 10, 7, 1, 2430.00, 1.00, '310-01-01', 'Gauge Block Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (174, NULL, NULL, 10, 7, 1, 450.00, 1.00, '310-01-02', 'Gauge Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (175, NULL, NULL, 10, 7, 1, 2200.00, 1.00, '310-01-03', 'Long Gauge Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (176, NULL, NULL, 19, 64, 1, 1950.00, 1.00, '311-01-01', 'Infrared Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (177, NULL, NULL, 2, 1, 1, 300.00, 1.00, '320-01-01', 'ค่าบริการรับ-ส่งเครื่องมือ 300 บาท ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (178, NULL, NULL, 2, 1, 1, 500.00, 1.00, '320-01-02', 'ค่าบริการรับ-ส่งเครื่องมือ 500 บาท ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (179, NULL, NULL, 2, 1, 1, 1000.00, 1.00, '320-02-01', 'ค่าบริการขนส่งเครื่องมือไป-กลับ ผ่านบริษัทขนส่ง ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (180, NULL, NULL, 2, 1, 1, 500.00, 1.00, '320-02-02', 'ค่าบริการขนส่งเครื่องมือ ผ่านบริษัทขนส่ง ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (181, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '340-01-01', 'ECG Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (182, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-02-01', 'ECG Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (183, NULL, NULL, 22, 57, 1, 4000.00, 1.00, '341-08-01', 'Defibrillator Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (184, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-09-01', 'Pacer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (185, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-09-02', 'External Pacemaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (186, NULL, NULL, 22, 57, 1, 1500.00, 1.00, '341-12-01', 'Infusion Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (187, NULL, NULL, 22, 57, 1, 1500.00, 1.00, '341-12-02', 'Syringe Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (188, NULL, NULL, 22, 57, 1, 3500.00, 1.00, '341-14-01', 'Electrosurgery Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (189, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-04-01', 'Blood Pressure Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (190, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-15-01', 'Paient Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (191, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-15-02', 'Bedside Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (192, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-16-01', 'Infant Radiant Warmers', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (193, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-04-04', 'Mechanical Sphygmomanometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (194, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-07-02', 'NIBP Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (195, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-05', 'Fetal Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (196, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-17-01', 'Ultrasound Power Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (197, NULL, NULL, 15, 16, 1, 1600.00, 1.00, '352-01-01', 'Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (198, NULL, NULL, 15, 16, 1, 1350.00, 1.00, '352-02-01', 'Furnace', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (199, NULL, NULL, 15, 16, 1, 3500.00, 1.00, '352-03-01', 'Refrigerator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (200, NULL, NULL, 15, 16, 1, 3500.00, 1.00, '352-04-01', 'Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (201, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-04-09', 'Hot Air Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (202, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-05-01', 'Autoclave', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (203, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-01', 'Water Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (204, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-02', 'Temperature Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (205, NULL, NULL, 15, 17, 1, 1600.00, 1.00, '353-01-01', 'Electronic Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (206, NULL, NULL, 15, 21, 9, 1600.00, 1.00, '353-02-01', 'Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (207, NULL, NULL, 15, 16, 1, 1050.00, 1.00, '352-07-01', 'Temperature Recorder with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (208, NULL, NULL, 15, 16, 1, 1050.00, 1.00, '352-07-02', 'Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (209, NULL, NULL, 15, 16, 1, 1050.00, 1.00, '352-07-03', 'Temperature Controller with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (210, NULL, NULL, 15, 16, 1, 720.00, 1.00, '352-07-04', 'Temperature Indicator with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (211, NULL, NULL, 15, 16, 1, 720.00, 1.00, '352-07-07', 'Digital Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (212, NULL, NULL, 15, 2, 1, 1500.00, 1.00, '350-01-01', 'ค่าเดินทาง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (213, NULL, NULL, 15, 2, 1, 2800.00, 1.00, '350-02-01', 'ค่าบริการสอบเทียบนอกสถานที่', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (214, NULL, NULL, 15, 2, 1, 3800.00, 1.00, '353-03-01', 'Surface Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (215, NULL, NULL, 15, 21, 9, 1200.00, 1.00, '353-02-02', 'Pressure Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (216, NULL, NULL, 15, 18, 1, 1500.00, 1.00, '353-04-01', 'Profile Projector ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (217, NULL, NULL, 15, 19, 5, 3200.00, 3.00, '353-05-01', 'Compression Tension Testing Machine ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (218, NULL, NULL, 15, 16, 1, 3500.00, 1.00, '352-10-01', 'Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (219, NULL, NULL, 15, 16, 1, 3000.00, 1.00, '352-08-03', 'Temperature Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (220, NULL, NULL, 15, 16, 1, 3000.00, 1.00, '352-08-02', 'HumidityTemperature Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (221, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-07', 'Coliform Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (222, NULL, NULL, 15, 2, 1, 150.00, 1.00, '350-03-01', 'ค่าเชื่อมปลายสาย', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (223, NULL, NULL, 15, 15, 1, 1650.00, 1.00, '351-01-01', 'Incubator ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (224, NULL, NULL, 15, 15, 1, 1350.00, 1.00, '351-02-01', 'Furnace ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (225, NULL, NULL, 15, 15, 1, 3500.00, 1.00, '351-03-01', 'Refrigerator ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (226, NULL, NULL, 15, 15, 1, 3500.00, 1.00, '351-03-02', 'ตู้เย็น ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (227, NULL, NULL, 15, 15, 1, 3500.00, 1.00, '351-04-02', 'Oven ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (228, NULL, NULL, 15, 15, 1, 1200.00, 1.00, '351-04-01', 'Hot Air Oven ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (229, NULL, NULL, 15, 15, 1, 1100.00, 1.00, '351-05-01', 'Autoclave ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (230, NULL, NULL, 15, 15, 1, 1300.00, 1.00, '351-06-01', 'Water Bath ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (231, NULL, NULL, 15, 15, 1, 1300.00, 1.00, '351-06-02', 'Temperature Bath ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (232, NULL, NULL, 15, 15, 1, 3500.00, 1.00, '351-07-01', 'Freezer ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (233, NULL, NULL, 15, 15, 1, 3000.00, 1.00, '351-08-01', 'Temperature Chamber ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (234, NULL, NULL, 15, 15, 1, 1650.00, 1.00, '351-09-09', 'Dry Block Heater ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (235, NULL, NULL, 15, 15, 1, 1300.00, 1.00, '351-06-04', 'Coliform Bath ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (236, NULL, NULL, 2, 1, 1, 100.00, 1.00, '320-04-01', 'ค่าแก้ไข Certificate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (237, NULL, NULL, 2, 1, 1, NULL, 1.00, '330-01-01', 'ค่าอบรมสัมมนา', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (238, NULL, NULL, 18, 24, 1, 650.00, 0.30, '371-01-01', 'Volumetric Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (239, NULL, NULL, 18, 24, 1, 650.00, 0.30, '371-02-01', 'Measuring Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (240, NULL, NULL, 18, 24, 1, 840.00, 0.30, '371-03-01', 'Volumetric Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (241, NULL, NULL, 18, 24, 1, 730.00, 0.30, '371-04-01', 'Graduated Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (242, NULL, NULL, 18, 24, 1, 650.00, 0.30, '371-05-01', 'Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (243, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-06-01', 'Automatic Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (244, NULL, NULL, 18, 25, 1, 700.00, 0.30, '371-07-01', 'Autopipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (245, NULL, NULL, 18, 25, 1, 700.00, 0.30, '371-08-01', 'Micropipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (246, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-09-01', 'Bottle-top Dispenser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (247, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-09-02', 'Dispenser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (248, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-11-01', 'Saybolt Viscosity Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (249, NULL, NULL, 18, 24, 1, 650.00, 0.30, '371-03-04', 'Volumetric Flask P', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (250, NULL, NULL, 18, 24, 1, 650.00, 0.30, '371-08-03', 'Wide Bore Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (251, NULL, NULL, 18, 24, 1, 730.00, 0.30, '371-04-08', 'Graduated Cylinder P', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (252, NULL, NULL, 18, 24, 1, 840.00, 0.30, '371-12-01', 'Beaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (253, NULL, NULL, 18, 24, 1, 840.00, 0.30, '371-12-02', 'Beaker P', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (254, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-13-01', 'Syringe Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (255, NULL, NULL, 17, 26, 1, 6200.00, 1.00, '372-01-01', 'Conductivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (256, NULL, NULL, 17, 27, 1, 3500.00, 1.00, '372-02-01', 'pH Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (257, NULL, NULL, 17, 28, 1, 5000.00, 1.00, '372-03-01', 'Spectrophotometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (258, NULL, NULL, 17, 32, 1, 2600.00, 1.00, '372-04-01', 'Turbidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (259, NULL, NULL, 17, 30, 1, 5000.00, 1.00, '372-05-01', 'Atomic Absorption Spectrophotometer AAS', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (260, NULL, NULL, 17, 26, 1, 6200.00, 1.00, '372-09-05', 'Ion Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (261, NULL, NULL, 17, 29, 1, 1500.00, 1.00, '372-07-01', 'Brix Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (262, NULL, NULL, 17, 31, 1, 1400.00, 1.00, '372-08-01', 'Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (263, NULL, NULL, 17, 33, 1, 950.00, 1.00, '372-09-01', 'DO Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (264, NULL, NULL, 17, 36, 1, 3500.00, 1.00, '373-01-01', 'pH Meter ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (265, NULL, NULL, 17, 35, 1, 5000.00, 2.00, '373-02-01', 'UV Spectrophotometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (266, NULL, NULL, 17, 35, 1, 5000.00, 2.00, '373-02-04', 'Spectrophotometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (267, NULL, NULL, 17, 34, 1, 1200.00, 1.00, '373-03-03', 'Centrifuge Revolution', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (268, NULL, NULL, 16, 23, 1, 1960.00, 2.00, '374-01-01', 'Thermo-Hygrograph', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (269, NULL, NULL, 16, 23, 1, 1460.00, 2.00, '374-03-11', 'Digital Thermo-Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (270, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-03-10', 'Digital HumidityTemperature Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (271, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-03-09', 'HumidityTemperature Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (272, NULL, NULL, 16, 23, 1, 1840.00, 2.00, '374-02-01', 'Dial Thermo-Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (273, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-04-09', 'Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (274, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-10-01', 'HumidityTemperature Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (275, NULL, NULL, 16, 23, 1, 1840.00, 2.00, '374-06-04', 'Dry-Wet Bulb Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (276, NULL, NULL, 16, 23, 1, 1840.00, 2.00, '374-06-01', 'Glass Tube Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (277, NULL, NULL, 16, 23, 1, 1840.00, 2.00, '374-09-01', 'Psychrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (278, NULL, NULL, 9, 4, 1, 2500.00, 1.00, '301-03-02', 'Tesla Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (279, NULL, NULL, 22, 57, 1, 3500.00, 1.00, '341-11-01', 'Safety Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (280, NULL, NULL, 22, 57, 5, 2000.00, 1.00, '341-18-01', 'Puise Oximeter Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (281, NULL, NULL, 10, 6, 10, 1200.00, 56.00, '302-13-04', 'PI Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (282, NULL, NULL, 9, 4, 2, 400.00, 56.00, '301-01-06', 'LCR Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (283, NULL, NULL, 9, 4, 2, 400.00, 56.00, '301-13-22', 'WristFoot Strap Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (284, NULL, NULL, 15, 15, 5, 120.00, 45.00, '351-09-05', 'Digital Reactor Block ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (285, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-02-02', 'High Precision Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (286, NULL, NULL, 10, 6, 10, 900.00, 56.00, '302-09-04', 'Extensometer Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (287, NULL, NULL, 18, 24, 1, 585.00, 7.00, '371-10-01', 'Bulk Specific Gravity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (288, NULL, NULL, 15, 16, 5, 1300.00, 56.00, '352-06-03', 'Testing Oil Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (289, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-04-01', 'Inside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (290, NULL, NULL, 17, 27, 4, 3500.00, 56.00, '372-02-02', 'pHConductivityTDSCF Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (291, NULL, NULL, 17, 27, 4, 3500.00, 56.00, '372-02-03', 'pH Salinity Conductivity Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (292, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-02-05', 'Countersink Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (293, NULL, NULL, 15, 16, 4, 2450.00, 1.00, '352-04-02', 'Gear Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (294, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-02-07', 'Dial Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (295, NULL, NULL, 15, 16, 1, 3000.00, 1.00, '352-03-03', 'Blood Bank Refrigerator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (296, NULL, NULL, 9, 4, 5, 1350.00, 7.00, '301-11-01', 'Process Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (297, NULL, NULL, 11, 8, 1, 270.00, 7.00, '304-02-04', 'Mass Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (298, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-09', 'Standard Steel Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (299, NULL, NULL, 9, 4, 5, 700.00, 7.00, '301-18-05', 'Digital Stroboscope Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (300, NULL, NULL, 9, 4, 5, 400.00, 7.00, '301-15-37', 'Insulation-Continuity Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (301, NULL, NULL, 14, 13, 6, 2900.00, 14.00, '308-04-06', 'Platinum Resistance Thermometer Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (302, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-18-03', 'Digital Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (303, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-06', 'Programmable Resistance Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (304, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-13-02', 'Measuring Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (305, NULL, NULL, 18, 25, 12, 3600.00, 7.00, '371-15-01', 'Perimatic Premier', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (306, NULL, NULL, 16, 23, 3, 2320.00, 14.00, '374-08-02', 'Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (307, NULL, NULL, 14, 12, 1, 300.00, 14.00, '307-02-21', 'Temperature Controller with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (308, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-09-03', 'U-Tube Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (309, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-14-02', 'Digital Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (310, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-08-01', 'Multi Use Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (311, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-15-28', 'Earth Continuty Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (312, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-08-06', 'Humidity Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (313, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-32-02', 'Plain Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (314, NULL, NULL, 15, 16, 1, 820.00, 14.00, '351-09-01', 'COD Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (315, NULL, NULL, 9, 4, 10, 1000.00, 7.00, '301-13-09', 'High Frequency Voltage Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (316, NULL, NULL, 15, 2, 1, 420.00, 1.00, '352-08-05', 'Low Temperature Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (317, NULL, NULL, 15, 16, 1, 2500.00, 1.00, '352-06-08', 'Oil Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (318, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-08-12', 'Thermocouple Wire Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (319, NULL, NULL, 9, 4, 4, 440.00, 7.00, '301-05-08', 'Digital Frequency Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (320, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-04-07', 'Resistance Temperature Detector 4 wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (321, NULL, NULL, 13, 11, 10, 470.00, 7.00, '305-04-09', 'Digital Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (322, NULL, NULL, 9, 4, 5, 440.00, 1.00, '301-09-14', 'CurrentVoltage Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (323, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-01-08', 'Digital Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (324, NULL, NULL, 15, 2, 1, 150.00, 14.00, '351-09-08', 'Digital Dry Bath ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (325, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-15-05', 'Resistance Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (326, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-10', 'Digital Test Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (327, NULL, NULL, 14, 12, 1, 1920.00, 25.00, '307-02-55', 'Handy Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (328, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-18-04', 'Stem Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (329, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-17-03', 'Data Acquistion System', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (330, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-08-02', 'High Current DC Regulated Power Supply', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (331, NULL, NULL, 9, 4, 1, 2010.00, 7.00, '301-05-01', 'Frequency Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (332, NULL, NULL, 14, 12, 3, 1320.00, 25.00, '307-02-25', 'True RMS Multimeter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (333, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-06-03', 'Digital Timer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (334, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-03-05', 'TemperatureRelative Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (335, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-15-16', 'Megger Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (336, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-01-04', 'Maximum Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (337, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-10', 'PerspirometerWeight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (338, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-05-10', 'Universal Counter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (339, NULL, NULL, 9, 4, 1, 7000.00, 7.00, '301-17-06', 'Digital Thermometer Chub E-4 with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (340, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-46', 'Data Logger With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (341, NULL, NULL, 16, 23, 1, 1330.00, 14.00, '374-04-05', 'Templog', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (342, NULL, NULL, 18, 24, 1, 750.00, 7.00, '371-06-04', 'Auto Zero Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (343, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-18-03', 'SpO2 Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (344, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-08', 'Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (345, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-15-05', 'Multiparameter Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (346, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-07-07', 'Non-Invasive Blood Pressure Monitor Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (347, NULL, NULL, 9, 4, 1, 120.00, 7.00, '301-04-06', 'Industrial Scopemeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (348, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-42', 'mOhm Hitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (349, NULL, NULL, 10, 6, 1, 150.00, 7.00, '302-20-04', 'Standard Foil', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (350, NULL, NULL, 18, 25, 1, 750.00, 7.00, '371-08-09', 'Multichannel Micropipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (351, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-06', 'Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (352, NULL, NULL, 10, 6, 1, 1100.00, 7.00, '302-33-06', 'Screw Ring Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (353, NULL, NULL, 15, 18, 1, 3800.00, 14.00, '353-03-02', 'Granite Surface Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (354, NULL, NULL, 15, 16, 2, 1800.00, 1.00, '352-03-04', 'Refrigerator Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (355, NULL, NULL, 13, 11, 1, 1200.00, 1.00, '305-04-02', 'Digital Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (356, NULL, NULL, 16, 23, 1, 1500.00, 1.00, '374-08-13', 'HumidityTemp. Data Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (357, NULL, NULL, 13, 11, 1, 440.00, 1.00, '305-13-06', 'HumidityBaroTemp. Data Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (358, NULL, NULL, 10, 6, 10, 1200.00, 1.00, '302-13-05', 'Textile Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (359, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-26', 'Temperature Indicator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (360, NULL, NULL, 16, 23, 1, 440.00, 1.00, '374-03-22', 'Water Activity Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (361, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-06-03', 'Digital Dry-Wet Bulb Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (362, NULL, NULL, 18, 24, 1, 650.00, 7.00, '371-14-01', 'Weathering Tube', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (363, NULL, NULL, 9, 4, 1, 330.00, 1.00, '301-09-07', 'Processmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (364, NULL, NULL, 11, 9, 9, 1500.00, 7.00, '304-06-04', 'Durometer Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (365, NULL, NULL, 9, 4, 1, 330.00, 1.00, '301-09-08', 'Multifunction Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (366, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-09-06', 'Template Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (367, NULL, NULL, 12, 10, 1, 1600.00, 1.00, '306-02-03', 'Electronic Torque Wrench', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (368, NULL, NULL, 14, 12, 3, 300.00, 1.00, '307-02-04', 'Digital Thermometer Readout with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (369, NULL, NULL, 14, 12, 1, 300.00, 1.00, '307-06-04', 'Thermo Recorder with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (370, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-08-07', 'Power Harmonic Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (371, NULL, NULL, 22, 57, 10, 2000.00, 1.00, '341-07-05', 'Blood Pressure Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (372, NULL, NULL, 14, 13, 1, 440.00, 14.00, '308-02-01', 'Thermistor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (373, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-15-17', 'Earth Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (374, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-06', 'Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (375, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-04-07', 'Drying Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (376, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-07', 'Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (377, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-01-07', 'Low Temp. Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (378, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-13-12', 'Hipot tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (379, NULL, NULL, 15, 16, 1, 450.00, 1.00, '352-09-05', 'Thermo Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (380, NULL, NULL, 15, 2, 1, 1500.00, 1.00, '351-07-03', 'Deep Freezer ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (381, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-04-05', 'RTD Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (382, NULL, NULL, 15, 16, 1, 1600.00, 1.00, '352-09-04', 'Block Heater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (383, NULL, NULL, 22, 57, 1, 3000.00, 7.00, '341-13-01', 'Infusion Pump Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (384, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-02-07', 'Clamp On Power Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (385, NULL, NULL, 10, 6, 9, 850.00, 7.00, '302-01-05', 'Digital Inside Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (386, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-05', 'Film Thickness', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (387, NULL, NULL, 13, 11, 1, 1500.00, 1.00, '305-13-02', 'Digital Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (388, NULL, NULL, 14, 12, 1, 300.00, 1.00, '307-02-07', 'Tomkey USB Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (389, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-02-02', 'Digital Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (390, NULL, NULL, 9, 4, 1, 3000.00, 7.00, '301-13-14', 'ACDC Withstanding Voltage InsulationGround Bond Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (391, NULL, NULL, 9, 4, 1, 600.00, 1.00, '301-15-29', 'Earth ResistanceTester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (392, NULL, NULL, 15, 16, 1, 300.00, 1.00, '352-09-03', 'Unitrex', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (393, NULL, NULL, 13, 11, 1, 470.00, 1.00, '305-02-03', 'Differential Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (394, NULL, NULL, 10, 6, 1, 1000.00, 1.00, '302-05-01', 'Mu-Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (395, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-01-08', 'Digital Caliper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (396, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-02-03', 'Standard Weights Brass Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (397, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-29', 'Digital LCR Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (398, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-11', 'ACDCIR Hipot Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (399, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-15', 'Puncture Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (400, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-34', 'Conductivity Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (401, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-11', 'Temperature Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (402, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-07-06', 'Non-Invasive Blood Pressure Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (403, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-13-03', 'Measurement Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (404, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-30', 'Wood Moisture Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (405, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-13-06', 'Metal Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (406, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-04', 'Multi Log Pro', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (407, NULL, NULL, 16, 23, 2, 440.00, 999.99, '374-08-04', 'Digital Thermo Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (408, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-26-01', 'Scale Callibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (409, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-23', 'Infrared Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (410, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-06-01', 'Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (411, NULL, NULL, 15, 15, 1, 820.00, 14.00, '351-09-02', 'COD Reactor ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (412, NULL, NULL, 18, 24, 1, 584.00, 7.00, '371-15-02', 'Wide Bore', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (413, NULL, NULL, 10, 6, 2, 1750.00, 7.00, '302-09-12', 'Welding Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (414, NULL, NULL, 16, 23, 1, 1000.00, 14.00, '374-03-02', 'Whirling Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (415, NULL, NULL, 11, 9, 10, 1000.00, 7.00, '304-05-02', 'Handy Force Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (416, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-19', 'DO Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (417, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-01-07', 'Dial Caliper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (418, NULL, NULL, 9, 4, 1, 330.00, 7.00, '301-09-09', 'Programmable DC Voltage Current Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (419, NULL, NULL, 17, 34, 1, 1200.00, 1.00, '373-03-04', 'Serofuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (420, NULL, NULL, 14, 13, 1, 440.00, 14.00, '308-04-02', 'Resistance Temperature Detector 3 Wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (421, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-15-18', 'Mikroohmmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (422, NULL, NULL, 17, 34, 1, 1200.00, 1.00, '373-03-06', 'Microhematocrit Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (423, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-04-11', 'Digital Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (424, NULL, NULL, 12, 10, 1, 1100.00, 7.00, '306-01-02', 'Digital Torque Wrench', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (425, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-01-02', 'Platelet Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (426, NULL, NULL, 19, 49, 1, 1600.00, 7.00, '309-01-07', 'Digital Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (427, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-16-02', 'Multi-Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (428, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-03-03', 'Temperature Humidity Programmable Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (429, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-08', 'Digital Thermo-Hygrometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (430, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-08', 'Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (431, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-08', 'Digimatic Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (432, NULL, NULL, 14, 12, 1, 300.00, 25.00, '307-08-04', 'Thermocouple Wire Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (433, NULL, NULL, 19, 49, 1, 1680.00, 7.00, '309-01-09', 'Combi Compact', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (434, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-02-30', 'Portable Appliance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (435, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-08-05', 'Thermo Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (436, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-05', 'Loop Validator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (437, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-06-03', 'Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (438, NULL, NULL, 17, 31, 1, 1200.00, 7.00, '372-08-04', 'Orbital Shaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (439, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-04-12', 'Pressure Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (440, NULL, NULL, 9, 4, 5, 650.00, 7.00, '301-10-14', 'Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (441, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-13', 'Beta Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (442, NULL, NULL, 9, 4, 1, 1680.00, 7.00, '301-21-04', 'Ohm Standard Resister', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (443, NULL, NULL, 13, 11, 1, 1500.00, 7.00, '305-13-03', 'Digital Barometer Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (444, NULL, NULL, 9, 4, 1, 2500.00, 7.00, '301-03-03', 'Gauss Tesla Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (445, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-06', 'Thickness Foil', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (446, NULL, NULL, 18, 24, 1, 650.00, 7.00, '371-05-02', 'Micro Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (447, NULL, NULL, 9, 4, 5, 1680.00, 56.00, '301-09-23', 'VoltAmp Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (448, NULL, NULL, 15, 17, 1, 1600.00, 1.00, '353-01-02', 'Analytical Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (449, NULL, NULL, 15, 2, 1, 1350.00, 1.00, '352-10-02', 'Low Temperature Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (450, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-03', 'Temperature Relative Humidity Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (451, NULL, NULL, 10, 6, 5, 130.00, 56.00, '302-20-07', 'Standard Coins', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (452, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-05-03', 'Electronic Barometer With Temperature and Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (453, NULL, NULL, 13, 11, 1, 1500.00, 7.00, '305-13-05', 'Electronic Barometer With Temperature and Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (454, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-02-03', 'Digimatic Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (455, NULL, NULL, 9, 4, 1, 1500.00, 7.00, '301-04-04', 'Oscilloscope Multimeter Handheld', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (456, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-03-13', 'Hygro-Station', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (457, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-05-01', 'Digital Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (458, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-14', 'Standard Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (459, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-11-04', 'Thermocouple Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (460, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-01-02', 'Mercury in Glass Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (461, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-14', 'Precision Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (462, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-15', 'Vacuum Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (463, NULL, NULL, 9, 4, 1, 1560.00, 7.00, '301-08-03', 'Power Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (464, NULL, NULL, 9, 4, 1, 1450.00, 7.00, '301-10-02', 'Soldering Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (465, NULL, NULL, 9, 4, 1, 2200.00, 7.00, '301-11-03', 'RTD Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (466, NULL, NULL, 18, 24, 5, 1620.00, 7.00, '371-08-08', 'Automatic Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (467, NULL, NULL, 9, 4, 1, 1800.00, 7.00, '301-16-03', 'Precision Multi Product Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (468, NULL, NULL, 10, 6, 1, 850.00, 7.00, '302-23-03', 'Wedge Taper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (469, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-02-08', 'Crimp Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (470, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-09-09', 'Crimp Diameter Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (471, NULL, NULL, 13, 11, 1, 1500.00, 7.00, '305-13-08', 'Temperature Humidity and Baromatic Pressure Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (472, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-13-07', 'Diameter Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (473, NULL, NULL, 16, 23, 1, 420.00, 14.00, '374-04-02', 'Temperature Humidity and Baromatic Pressure Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (474, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-06', 'Mini Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (475, NULL, NULL, 10, 6, 10, 950.00, 7.00, '302-07-03', 'Dial Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (476, NULL, NULL, 18, 24, 1, 585.00, 7.00, '371-06-02', 'Auto Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:53:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (477, NULL, NULL, 2, 1, 1, 700.00, 7.00, '399-01-06', 'ค่าบริการรับ-ส่งเครื่องมือ 700 บาท', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (478, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-09', 'Precision Calibrator with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (479, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-09-49', 'Precision Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (480, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-15-03', 'Surface Resistance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (481, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-20-07', 'Precision Resistance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (482, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-03', 'Resistance Box', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (483, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-02', 'Stainless Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (484, NULL, NULL, 11, 8, 1, 600.00, 71.00, '303-02-04', 'Perspiration Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (485, NULL, NULL, 13, 11, 1, 650.00, 7.00, '305-04-16', 'Master Tire Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (486, NULL, NULL, 18, 25, NULL, 700.00, 7.00, '371-08-02', 'Transfer Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (487, NULL, NULL, 15, 16, 1, 720.00, 25.00, '351-06-05', 'Liquid Bath Temperature Controller ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (488, NULL, NULL, 22, 57, 10, 3500.00, 1.00, '341-11-03', 'Safety Analyzer with Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (489, NULL, NULL, 9, 4, 1, 1350.00, 1.00, '301-09-11', 'Handy Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (490, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-04-08', 'PRT Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (491, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-01-05', 'Max-Min Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (492, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-02-06', 'Compression Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (493, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-04-17', 'Master Tire Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (494, NULL, NULL, 16, 23, 1, 880.00, 14.00, '374-05-02', 'Dial Thermo-Hygrometer Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (495, NULL, NULL, 13, 11, 10, 1200.00, 14.00, '305-13-04', 'Dial Thermo-Hygrometer Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (496, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-08', 'Weight of Piston And Load', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (497, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-10-03', 'Melting Point Apparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (498, NULL, NULL, 9, 4, 1, 3700.00, 7.00, '301-15-20', 'Micro ohmmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (499, NULL, NULL, 10, 6, 10, 950.00, 7.00, '302-20-22', 'Thickness Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (500, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-02-09', 'ACDC Digital Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (501, NULL, NULL, 15, 15, 1, 1200.00, 21.00, '351-03-03', 'Refrigerating Incubator ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (502, NULL, NULL, 13, 11, 10, 470.00, 1.00, '305-02-04', 'Differential Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (503, NULL, NULL, 18, 24, 1, 657.00, 7.00, '371-04-09', 'Volumetric Ware Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (504, NULL, NULL, 18, 24, 1, 585.00, 7.00, '371-06-03', 'Volumetric Ware - Auto Burete', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (505, NULL, NULL, 11, 9, 1, 1600.00, 1.00, '304-01-02', 'Digital Crane Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (506, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-04-03', 'Industrial Platinum Resistance Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (507, NULL, NULL, 16, 23, 1, 440.00, 1.00, '374-04-10', 'Multilog Pro', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (508, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-15-12', 'Earth Ground Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (509, NULL, NULL, 9, 4, 5, 1200.00, 7.00, '301-10-12', 'Thermometer Simulator RTD', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (510, NULL, NULL, 15, 20, 1, 1.00, 1.00, '352-08-04', 'Temp Humidity Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (511, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-06-04', 'Shaking Water Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (512, NULL, NULL, 9, 4, 5, 1200.00, 7.00, '301-02-01', 'Clamp On Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (513, NULL, NULL, 14, 13, 1, 730.00, 14.00, '308-03-02', 'Data Acquisition Probe Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (514, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-04-25', 'Digital Pressure Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (515, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-01-06', 'Metal Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (516, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-02-12', 'Milliamp Process Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (517, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-03-06', 'Portable Radiation Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (518, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-09-30', 'Lion Precision', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (519, NULL, NULL, 15, 16, 1, 1350.00, 1.00, '352-02-02', 'Mulffle Furnace', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (520, NULL, NULL, 15, 16, 1, 1000.00, 1.00, '352-01-05', 'Cooled Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (521, NULL, NULL, 15, 15, 1, 720.00, 14.00, '351-04-04', 'Dry Oven ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (522, NULL, NULL, 15, 16, 1, 440.00, 1.00, '352-09-02', 'COD Reactor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (523, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-05-07', 'Hertz Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (524, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-08', 'Temperature Humidity Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (525, NULL, NULL, 9, 4, 4, 440.00, 7.00, '301-01-32', 'Digital Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (526, NULL, NULL, 9, 4, 4, 440.00, 7.00, '301-01-38', 'Analog Ampmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (527, NULL, NULL, 10, 6, 10, 950.00, 7.00, '302-18-05', 'Dial Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (528, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-23', 'Analog AC Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (529, NULL, NULL, 9, 4, 1, 1500.00, 7.00, '301-04-05', 'Digital Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (530, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-01-03', 'BOD Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (531, NULL, NULL, 9, 4, 1, 4200.00, 7.00, '301-13-04', 'AC Withstanding Voltage Insulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (532, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-13-13', 'ACDC Withstanding Voltage Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (533, NULL, NULL, 15, 16, 1, 140.00, 1.00, '352-09-06', 'Heating Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (534, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-04-07', 'Scopemeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (535, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-21-04', 'Digimatic Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (536, NULL, NULL, 14, 12, 1, 720.00, 7.00, '307-05-04', 'Standrad Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (537, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-03-05', 'Portable Electronic Gauging Device', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (538, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-29-02', 'Dial Bore Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (539, NULL, NULL, 14, 12, 1, 300.00, 1.00, '307-02-11', 'Pen Shape Digital Multi-Stem Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (540, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-02-20', 'AATCC Perspiration Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (541, NULL, NULL, 14, 12, 1, 300.00, 1.00, '308-02-12', 'Automatic Flash Point Cleveland with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (542, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-33-02', 'Plain Ring Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (543, NULL, NULL, 15, 16, 1, 130.00, 14.00, '351-09-04', 'Spectroquant', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (544, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-15-30', 'Insulation Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (545, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-26', 'DCVG Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (546, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-17', 'G1 Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (547, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-05-05', 'GPS Synchronization', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (548, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-13-05', 'High Voltage Current Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (549, NULL, NULL, 17, 29, 1, 1500.00, 1.00, '372-07-02', 'Digital Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (550, NULL, NULL, 15, 20, 1, 1.00, 1.00, '352-08-06', 'Ozone Testing Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (551, NULL, NULL, 15, 16, 1, 730.00, 1.00, '352-07-05', 'Digital Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (552, NULL, NULL, 9, 4, 1, 1200.00, 1.00, '301-09-22', 'Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (553, NULL, NULL, 14, 12, 1, 300.00, 14.00, '307-02-39', 'Digital Dew Point Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (554, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-25-02', 'Stap Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (555, NULL, NULL, 13, 11, 10, 1200.00, 14.00, '305-09-02', 'Handy Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (556, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-12', 'Temperature Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (557, NULL, NULL, 9, 4, 10, 1200.00, 7.00, '301-08-06', 'Power Quality Analyser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (558, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-07-02', 'Pressure Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (559, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-09-06', 'Universal Biometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (560, NULL, NULL, 13, 11, 1, 950.00, 7.00, '305-13-07', 'Barograph', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (561, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-02-06', 'True RMS Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (562, NULL, NULL, 15, 16, 1, 1350.00, 1.00, '352-01-04', 'Chamber Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (563, NULL, NULL, 15, 16, 1, 1350.00, 1.00, '352-04-04', 'Chamber Hot Air Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (564, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-09-10', 'Portable Double Bridge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (565, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-41', 'Digital Welding Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (566, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-09-07', 'Degree Compass', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (567, NULL, NULL, 9, 4, 1, 1680.00, 7.00, '301-21-01', 'Resistance Decade Box', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (568, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-08-01', 'Temperature Humidity Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (569, NULL, NULL, 15, 16, 1, 1200.00, 14.00, '351-01-02', 'BOD Incubator ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (570, NULL, NULL, 15, 15, 1, 820.00, 10.00, '351-09-03', 'Block Digestion', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (571, NULL, NULL, 15, 16, 1, 820.00, 10.00, '352-09-01', 'Block Digestion', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (572, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-12-07', 'Mandrel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (573, NULL, NULL, 9, 4, 5, 440.00, 1.00, '301-09-24', 'Digital Processmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (574, NULL, NULL, 22, 57, 10, 700.00, 1.00, '341-04-02', 'Digital Blood Pressure Monitor Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (575, NULL, NULL, 15, 2, 1, 1100.00, 1.00, '352-04-03', 'Aging Oven Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (576, NULL, NULL, 11, 9, 10, 1600.00, 7.00, '304-02-02', 'Moisture Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (577, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-57', 'Temperature Tags', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (578, NULL, NULL, 9, 4, 1, 2400.00, 7.00, '301-15-15', 'Megohmmeter IR Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (579, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-05', 'Pressure Loop Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (580, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-08-03', 'Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (581, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-10-09', 'Temperature Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (582, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-03-09', 'Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (583, NULL, NULL, 19, 64, 1, 1200.00, 14.00, '311-01-02', 'Infrared Camera', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (584, NULL, NULL, 17, 27, 1, 1800.00, 7.00, '372-02-04', 'Multi-Parameter analyser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (585, NULL, NULL, 15, 16, 1, 3000.00, 1.00, '352-08-07', 'Cool Air Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (586, NULL, NULL, 15, 16, 1, 950.00, 1.00, '352-08-08', 'Clean Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (587, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-26', 'Parameter Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (588, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-03-02', 'Digital Vacuum Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (589, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-10', 'Resistor Value', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (590, NULL, NULL, 16, 23, 3, 940.00, 7.00, '374-03-07', 'Microlog Temp and Humid With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (591, NULL, NULL, 10, 6, 1, 490.00, 7.00, '302-14-03', 'Digimatic Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (592, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-31-02', 'Pin Gauge Setยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (593, NULL, NULL, 16, 23, 1, 1200.00, 14.00, '374-06-02', 'Precision Sling Psychrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (594, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-07-02', 'Electrical Comparator with Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (595, NULL, NULL, 18, 24, 1, 585.00, 7.00, '371-15-03', 'Pycnometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (596, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-08-05', 'Power Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (597, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-15-14', 'Low-Ohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (598, NULL, NULL, 16, 23, 1, 1200.00, 14.00, '374-03-04', 'Electronic RH Calibrator with Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (599, NULL, NULL, 10, 6, 1, 420.00, 7.00, '302-02-04', 'Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (600, NULL, NULL, 15, 16, 3, 2750.00, 1.00, '352-10-03', 'Air Chamber Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (601, NULL, NULL, 18, 25, 1, 700.00, 7.00, '371-08-07', 'Micro Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (602, NULL, NULL, 18, 25, 1, 350.00, 7.00, '371-08-10', 'Multichannel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (603, NULL, NULL, 17, 26, 1, 5900.00, 7.00, '372-02-05', 'pH Conductivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (604, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-22', 'pH Conductivity Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (605, NULL, NULL, 10, 6, 10, 1200.00, 7.00, '302-18-06', 'Total Cone Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (606, NULL, NULL, 13, 11, 10, 500.00, 7.00, '305-06-01', 'Magnchelic Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (607, NULL, NULL, 17, 33, 1, 800.00, 7.00, '372-09-02', 'Oxygen Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (608, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-04-05', 'Air Dry Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (609, NULL, NULL, 15, 16, 1100, 1.00, 1.00, '352-04-06', 'Dry Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (610, NULL, NULL, 13, 11, 1, 1500.00, 1.00, '305-05-01', 'Thermo Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (611, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-35', 'Multifunction Process Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (612, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-26-04', 'Digital Scale Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (613, NULL, NULL, 18, 24, 1, 1035.00, 7.00, '371-04-02', 'Graduated Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (614, NULL, NULL, 18, 25, 6, 1980.00, 7.00, '371-08-11', 'Auto Titrator Auto Piston Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (615, NULL, NULL, 14, 13, 1, 720.00, 14.00, '308-03-14', 'Black Stack Thermometer SPRT Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (616, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-17-02', 'Black Stack Thermometer SPRT Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (617, NULL, NULL, 9, 4, 1, 1680.00, 7.00, '301-21-08', 'High - Capasistance Substituter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (618, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-04-18', 'Pressure Sensor Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (619, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-14', 'Dual Channel Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (620, NULL, NULL, 16, 23, 1, 1200.00, 14.00, '374-09-02', 'Sling Psychrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (621, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-10-06', 'PT100-Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (622, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-10-05', 'Probe Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (623, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-07', 'LXI Data Acquisition Switch Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (624, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-17-05', 'LXI Data Acquisition Switch Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (625, NULL, NULL, 10, 6, 10, 900.00, 56.00, '302-03-10', 'Digital Crimp Height Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (626, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-04-03', 'Precision Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (627, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-15', 'Digital Humidity Temperature Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (628, NULL, NULL, 15, 15, 1, 1200.00, 14.00, '351-04-03', 'Drying Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (629, NULL, NULL, 9, 4, 5, 400.00, 56.00, '301-09-12', 'mA Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (630, NULL, NULL, 9, 4, 5, 700.00, 56.00, '301-19-01', 'Function Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (631, NULL, NULL, 13, 11, 10, 1200.00, 56.00, '305-04-19', 'Pneumatic Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (632, NULL, NULL, 9, 4, 5, 1350.00, 7.00, '301-05-11', 'Multifunction Synthesizer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (633, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-16', 'Temperature HiTester with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (634, NULL, NULL, 22, 57, 1, 4500.00, 1.00, '341-14-02', 'Electrosurgery Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (635, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-18-02', 'SpO2 Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (636, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-15-03', 'Parameter Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (637, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-09-21', 'Advance Modular Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (638, NULL, NULL, 14, 13, 1, 2050.00, 200.00, '308-01-03', 'Standard Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (639, NULL, NULL, 15, 16, 1, 3000.00, 1.00, '352-08-09', 'Cold Room', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (640, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-07', 'pH Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (641, NULL, NULL, 16, 23, 1, 1940.00, 112.00, '374-07-06', 'Dew Point Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (642, NULL, NULL, 14, 12, 1, 1320.00, 7.00, '307-02-43', 'Probe For Measure Temperature of Surface', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (643, NULL, NULL, 14, 12, 1, 2520.00, 7.00, '307-08-05', 'Thermocouple Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (644, NULL, NULL, 14, 12, 1, 2220.00, 25.00, '307-08-03', 'Thermocouple Wire Type C-NN24', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (645, NULL, NULL, 10, 6, 10, 1200.00, 7.00, '302-12-06', 'Ruler Scale For Wascator Washing Mac', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (646, NULL, NULL, 10, 6, 10, 850.00, 7.00, '302-01-06', 'Digimatic Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (647, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-45', 'Data TracerLogger With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (648, NULL, NULL, 11, 8, 1, 600.00, 7.00, '303-01-05', 'Standard Hook Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (649, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-17', 'Universal Biometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (650, NULL, NULL, 14, 12, 2, 2050.00, 14.00, '307-06-02', 'Hybrid Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (651, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-03', 'Micro Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (652, NULL, NULL, 15, 16, 1, 1500.00, 1.00, '352-10-04', 'Biomedical Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (653, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-03', 'Stainless Steel Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (654, NULL, NULL, 12, 10, 5, 1100.00, 7.00, '306-02-04', 'Dial Indicating Torque Driver', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (655, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-11', 'Dual Display Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (656, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-21', 'Automatic Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (657, NULL, NULL, 9, 4, 1, 1350.00, 7.00, '301-09-15', 'Precision Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (658, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-13-10', 'AC High Voltage', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (659, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-33-03', 'Setting Ring Gaugeยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (660, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-08-09', 'Multifunction Power Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (661, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-15-31', 'Digital Earth Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (662, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-15-32', 'Earth Clamp Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (663, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-07-02', 'Thermal Environment Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (664, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-01', 'Temperature Humidity Datalogger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (665, NULL, NULL, 14, 12, 1, 700.00, 21.00, '307-08-13', 'Thermocouple Needle Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (666, NULL, NULL, 14, 12, 1, 700.00, 21.00, '307-08-10', 'Thermocouple Wire', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (667, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-15-07', 'Hot line Coil Resistance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (668, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-15-06', 'Hot Winding Ohmmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (669, NULL, NULL, 9, 4, 1, 1350.00, 7.00, '301-17-04', 'Data AcquisitionSwitch Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (670, NULL, NULL, 9, 4, 1, 1350.00, 7.00, '301-09-16', 'Multimeter Calibrator Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (671, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-09-46', 'Programmable DC Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (672, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-16', 'Electric Load', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (673, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-08-08', 'Power Supply', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (674, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-05', 'Steel Ruler for Wascator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (675, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-25-03', 'Step Wedge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (676, NULL, NULL, 16, 23, 1, 1440.00, 21.00, '374-03-01', 'Digital Humidity Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (677, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-21-07', 'Plug Resistor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (678, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-13-17', 'High Voltage Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (679, NULL, NULL, 15, 15, 1, 1200.00, 14.00, '352-01-06', 'Thermostatically Controlled Incubators', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (680, NULL, NULL, 10, 6, 10, 980.00, 7.00, '302-12-13', 'Scale Vicat Apparatus', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (681, NULL, NULL, 15, 17, 10, 1600.00, 3.00, '353-01-04', 'Moisture Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (682, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-21-09', 'Standard Resistors', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (683, NULL, NULL, 15, 2, 1, 700.00, 1.00, '352-07-06', 'Smoke House', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (684, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-07-05', 'Dew Point Controller With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (685, NULL, NULL, 19, 49, 5, 440.00, 7.00, '309-01-11', 'Illumination Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (686, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-09-48', 'DC Signal Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (687, NULL, NULL, 10, 6, 1, 910.00, 1.00, '302-09-05', 'Multi-Welding Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (688, NULL, NULL, 12, 10, 5, 1300.00, 7.00, '306-03-05', 'Digital Torque Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (689, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-06-05', 'Water Bath Shaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (690, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-04-23', 'Standard Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (691, NULL, NULL, 18, 24, 1, 650.00, 7.00, '371-08-06', 'Autopipette Multichannel 8 Channel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (692, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-22-02', 'StroboscopeLife Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (693, NULL, NULL, 11, 8, 1, 230.00, 7.00, '303-02-11', 'Ball Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (694, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-25', 'Micro - Ohmmete', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (695, NULL, NULL, 13, 11, 5, 1200.00, 7.00, '305-04-06', 'Multifunction Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (696, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-12-02', 'Data Collector', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (697, NULL, NULL, 16, 23, 1, 1300.00, 14.00, '374-07-01', 'Heat Stress Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (698, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-18', 'Digital Thermometer With SensorRTD', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (699, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-44', 'Terrameter System', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (700, NULL, NULL, 9, 4, 10, 440.00, 7.00, '301-15-33', 'Insulation Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (701, NULL, NULL, 17, 27, 3, 2900.00, 56.00, '372-02-06', 'เครื่องมือตรวจวัดความเป็นกรด-ด่าง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (702, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-19', 'RTD Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (703, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-07-02', 'Timer Stop Watch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (704, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-12', 'Mass', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (705, NULL, NULL, 13, 11, 1, 1200.00, 14.00, '305-04-24', 'Digital Pressure Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (706, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-15-23', 'Resistor Network Metal Foil', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (707, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-15-34', 'Insulation Resistance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (708, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-13-01', 'PunctureInsulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (709, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-07', 'Data Logger with Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (710, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-09-20', 'CalMet Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (711, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-01-18', 'Leakage Current', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (712, NULL, NULL, 11, 9, 1, 1600.00, 10.00, '304-01-03', 'Scale Spring', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (713, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-10-07', 'Welding Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (714, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-27', 'Electrical Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (715, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-04-22', 'Precision Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (716, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-04-20', 'Precision Process Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (717, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-09-47', 'Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (718, NULL, NULL, 9, 4, 1, 1500.00, 7.00, '301-13-08', 'High Tension Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (719, NULL, NULL, 14, 13, 1, 1500.00, 25.00, '308-06-02', 'Metal Block Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (720, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-15-35', 'Insulation Resistance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (721, NULL, NULL, 16, 23, 1, 1460.00, 14.00, '374-03-08', 'Thermohygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (722, NULL, NULL, 9, 4, 1, 3000.00, 7.00, '301-13-16', 'High Voltage Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (723, NULL, NULL, 11, 8, 1, 270.00, 7.00, '303-02-01', 'ISO Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (724, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-13', 'AATCC Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (725, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-04', 'Metal Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (726, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-02-05', 'Differential Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (727, NULL, NULL, 18, 25, 1, 1000.00, 7.00, '371-08-04', 'Auto Micro Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (728, NULL, NULL, 14, 13, 1, 700.00, 21.00, '308-05-17', 'Semi Standard PRT', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (729, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-01-31', 'Leakage Current Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (730, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-02-08', 'Digital Leakage clamp meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (731, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-02', 'EKG Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (732, NULL, NULL, 10, 7, 1, 2200.00, 1.00, '310-01-04', 'Long Gauge Block Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (733, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-20', 'Digital Thermometer with Thermocouple Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (734, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-06-02', 'Automatic Timing Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (735, NULL, NULL, 22, 57, 1, 4500.00, 1.00, '341-14-03', 'Electrosurgical Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (736, NULL, NULL, 10, 6, 10, 890.00, 7.00, '302-03-11', 'Digit Depth Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (737, NULL, NULL, 11, 8, 1, 270.00, 7.00, '303-02-14', 'Ball Pressure Test Device', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (738, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-08-07', 'Thermocouple Temperature Sensors', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (739, NULL, NULL, 16, 23, 1, 1840.00, 7.00, '374-02-02', 'Dial Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (740, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-29-02', 'ตู้อบเด็ก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (741, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-10-01', 'Defibrillator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (742, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-13-08', 'Plastic Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (743, NULL, NULL, 9, 4, 700, 3500.00, 5.00, '301-10-19', 'Precision Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (744, NULL, NULL, 15, 16, 4, 3100.00, 1.00, '352-06-06', 'Circulate Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (745, NULL, NULL, 15, 16, 1, 1060.00, 1.00, '352-06-09', 'Dry Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (746, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-02-03', 'Humidity Temperature Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (747, NULL, NULL, 14, 12, 1, 420.00, 24.00, '307-08-08', 'Thermal-Tab Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (748, NULL, NULL, 12, 10, 1, 1100.00, 7.00, '306-02-05', 'Electronic Torque Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (749, NULL, NULL, 9, 4, 1, 550.00, 7.00, '301-07-05', 'Pulse Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (750, NULL, NULL, 9, 4, 1, 1680.00, 7.00, '301-10-08', 'pH mV Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (751, NULL, NULL, 9, 4, 1, 600.00, 1.00, '301-10-11', 'Thermocouple Simulator Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (752, NULL, NULL, 10, 7, 450, 450.00, 1.00, '310-01-05', 'Ceramic Gauge Block Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (753, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-12-08', 'T-Square', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (754, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-12-09', 'U-Tube Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (755, NULL, NULL, 14, 12, 4, 1650.00, 30.00, '308-06-03', 'Temperature Block Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (756, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-21-03', 'Digital Micrometer Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (757, NULL, NULL, 10, 7, 5, 450.00, 2.00, '310-01-06', 'Ceramic Gauge Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (758, NULL, NULL, 14, 12, 1, 700.00, 26.00, '307-05-02', 'Thermocouple Calibrator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (759, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-03', 'ECG Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (760, NULL, NULL, 15, 17, 1, 1600.00, 1.00, '353-01-05', 'Spring Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (761, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-42', 'Thermometer Black Panal', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (762, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-27', 'Digital Thermistor Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (763, NULL, NULL, 17, 33, 1, 950.00, 7.00, '372-09-03', 'Oxyguard DO Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (764, NULL, NULL, 13, 11, 9, 1200.00, 7.00, '305-04-27', 'Low Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (765, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-02-07', 'Differential Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (766, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-04-31', 'Standard Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (767, NULL, NULL, 18, 25, 1, 2160.00, 7.00, '371-08-05', 'Multichannel Micropipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (768, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-41', 'Electronic Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (769, NULL, NULL, 14, 13, 1, 1200.00, 14.00, '308-04-04', 'Reference Junction', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (770, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-03-14', 'Temperature Humidity Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (771, NULL, NULL, 13, 11, 9, 1200.00, 56.00, '305-01-02', 'Digital Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (772, NULL, NULL, 2, 1, 1, 10.00, 1.00, '320-04-02', 'ค่าแก้ไข Certificate ไม่ Fax', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (773, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-01', 'EC-Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (774, NULL, NULL, 10, 6, 1, 600.00, 14.00, '302-23-04', 'Circular Taper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (775, NULL, NULL, 15, 16, 1, 3000.00, 3.00, '352-04-08', 'Baking Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (776, NULL, NULL, 14, 12, 1, 1200.00, 30.00, '307-04-03', 'Temperature Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (777, NULL, NULL, 15, 2, 1, NULL, 1.00, '350-04-01', 'Visa Fee', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (778, NULL, NULL, 15, 2, 1, NULL, 1.00, '350-04-02', 'Others Fee', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (779, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-15-36', 'Analog Insulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (780, NULL, NULL, 15, 2, 1, 1100.00, 1.00, '351-07-02', 'Plasma Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (781, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '372-08-02', 'Rotator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (782, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-17', 'Handy Cal', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (783, NULL, NULL, 10, 6, 1, 400.00, 7.00, '302-09-08', 'Spherical Anvil Balls', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (784, NULL, NULL, 18, 25, 1, 650.00, 7.00, '371-13-02', 'Micro Liter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (785, NULL, NULL, 16, 23, 1, 1440.00, 112.00, '374-08-12', 'Humidity Temperature Record', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (786, NULL, NULL, 15, 15, 1, 1600.00, 112.00, '351-06-03', 'Micro Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (787, NULL, NULL, 22, 57, 9, 700.00, 1.00, '341-02-02', 'EKG Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (788, NULL, NULL, 16, 23, 1, 1440.00, 112.00, '374-03-15', 'Temperature Humidity Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (789, NULL, NULL, 13, 11, 5, 1200.00, 7.00, '305-08-04', 'Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (790, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-21', 'Pulse Digital Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (791, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-13', 'Linear Sensor Digital Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (792, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-18-06', 'Engine Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (793, NULL, NULL, 17, 48, 1, 1500.00, 1.00, '372-06-01', 'Salinity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (794, NULL, NULL, 10, 6, 1, 1100.00, 7.00, '302-33-04', 'Setting Ring', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (795, NULL, NULL, 9, 4, 10, 1200.00, 7.00, '301-05-12', 'Digital Communicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (796, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-24', 'Test Load', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (797, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-08', 'Film Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (798, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-22-03', 'Digital Stroboscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (799, NULL, NULL, 12, 10, 5, 3000.00, 7.00, '306-03-04', 'Digital Torque Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (800, NULL, NULL, 9, 4, 5, 1200.00, 7.00, '301-13-06', 'High Voltage Insulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (801, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-15-09', 'Test Ground', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (802, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-10-10', 'High Precision Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (803, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-06-06', 'Temperature Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (804, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-15-10', 'Earth Ground Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (805, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-13-09', 'Digital Steel Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (806, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-02-13', 'Clamp-On Ground Resistance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (807, NULL, NULL, 14, 12, 1, 420.00, 25.00, '307-02-56', 'Thermistor Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (808, NULL, NULL, 14, 13, 1, 1200.00, 14.00, '308-06-06', 'Temperature Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (809, NULL, NULL, 18, 46, 1, 1260.00, 7.00, '371-04-03', 'Personal Sampler Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (810, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-14-06', 'Countersink Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (811, NULL, NULL, 14, 13, 1, 720.00, 14.00, '308-02-28', 'Parameter Tester with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (812, NULL, NULL, 19, 49, 1, 1600.00, 7.00, '309-01-13', 'ILLUMINOMETER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (813, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-02-04', 'Dial Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (814, NULL, NULL, 13, 11, 5, 1500.00, 7.00, '305-13-11', 'Digital Altimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (815, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-47', 'Data Collector with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (816, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-03-03', 'Digital Vacumm', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (817, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-32', 'Flow Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (818, NULL, NULL, 9, 4, 2, 700.00, 7.00, '301-15-38', 'Universal Earth Ground System Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (819, NULL, NULL, 9, 4, 2, 700.00, 7.00, '301-15-25', 'Norma Earth Ground Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (820, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-35', 'Amp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (821, NULL, NULL, 11, 8, 1, 450.00, 7.00, '303-02-16', 'Weight Dead Weight Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (822, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-21-05', 'Box Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (823, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-01-33', 'Reference Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (824, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-06-10', 'Cooling Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (825, NULL, NULL, 14, 12, 1, 440.00, 25.00, '307-02-29', 'Compact Thermo Logger Channel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (826, NULL, NULL, 14, 12, 1, 440.00, 25.00, '307-02-30', 'Digital Thermometer with NTC Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (827, NULL, NULL, 10, 7, 1, 2150.00, 7.00, '310-01-08', 'Gauge Blocks', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (828, NULL, NULL, 17, 29, 1, 1500.00, 7.00, '372-07-05', 'Hand Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (829, NULL, NULL, 9, 4, 6, 600.00, 1.00, '301-15-24', 'Test Kit For Static Control Surface', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (830, NULL, NULL, 18, 24, 1, 700.00, 1.00, '371-03-03', 'Erlenmeyer Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (831, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-14-02', 'Centrifuge Tube', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (832, NULL, NULL, 9, 4, 2, 440.00, 7.00, '301-09-51', 'DC Power Supply', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (833, NULL, NULL, 9, 4, 2, 440.00, 7.00, '301-09-52', 'AC Power Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (834, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-15-22', 'Digital Insulation Continuity Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (835, NULL, NULL, 22, 57, 3, 1000.00, 1.00, '341-21-01', 'Ear Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (836, NULL, NULL, 9, 4, 1, 700.00, 1.00, '301-05-06', 'Frequency Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (837, NULL, NULL, 9, 4, 1, 700.00, 1.00, '301-05-04', 'RF meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (838, NULL, NULL, 9, 4, 1, 700.00, 1.00, '301-08-04', 'Power Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (839, NULL, NULL, 9, 4, 1, 1500.00, 7.00, '301-20-05', 'Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (840, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-08-02', 'Combined Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (841, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-02-03', 'Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (842, NULL, NULL, 17, 33, 1, 950.00, 7.00, '372-09-04', 'Dissolved Oxygen Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (843, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-14', 'Ultra Low Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (844, NULL, NULL, 11, 8, 1, 600.00, 7.00, '303-02-25', 'Weight Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (845, NULL, NULL, 13, 11, 5, 470.00, 7.00, '305-02-09', 'Pressure Gauge Pressing Force', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (846, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-07-04', 'Digital Table Stop Watch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (847, NULL, NULL, 18, 24, 1, 650.00, 7.00, '371-04-06', 'Graduated Cylinder TD', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (848, NULL, NULL, 18, 24, 1, 650.00, 7.00, '371-04-07', 'Graduated Cylinder TC', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (849, NULL, NULL, 13, 11, 5, 1200.00, 7.00, '305-06-05', 'Multifunction Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (850, NULL, NULL, 2, 1, 1, 10.00, 1.00, '320-03-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (851, NULL, NULL, 10, 6, 5, 900.00, 7.00, '302-25-04', 'Step Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (852, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-06-11', 'Ultrasonic Cleaner', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (853, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-04-09', 'SSPRT PT100', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (854, NULL, NULL, 11, 8, 10, 370.00, 7.00, '303-01-03', 'Standard Weights for Durometer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (855, NULL, NULL, 13, 11, 1, 1500.00, 14.00, '305-13-09', 'Barometric PressureHumidityTemperature Datalogger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (856, NULL, NULL, 16, 23, 1, 1880.00, 14.00, '374-06-07', 'Liquid-in Glass Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (857, NULL, NULL, 10, 6, 1, 400.00, 56.00, '302-19-02', 'Three Wireยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (858, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-31', 'Microlog Temp and Humid With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (859, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-01', 'Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (860, NULL, NULL, 10, 6, 1, 450.00, 56.00, '302-17-05', 'Setting rods', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (861, NULL, NULL, 13, 11, 6, 650.00, 7.00, '305-06-02', 'Airflow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (862, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-03-12', 'Tube Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (863, NULL, NULL, 11, 8, 1, 440.00, 7.00, '303-02-17', 'Ball Pressure Apparatus', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (864, NULL, NULL, 15, 2, 1, 1100.00, 14.00, '352-06-12', 'Oil Bath Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (865, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-34', 'Analog AC Ammeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (866, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-26-03', 'Digital Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (867, NULL, NULL, 19, 64, 1, 450.00, 25.00, '311-01-03', 'Thermal Imagers', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (868, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-15-13', 'Advanced EarthGround Tester Geo', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (869, NULL, NULL, 15, 2, 1, 1100.00, 25.00, '351-03-04', 'RefrigeratedHeating Circulators', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (870, NULL, NULL, 15, 43, 7, 1200.00, 14.00, '352-01-08', 'Test Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (871, NULL, NULL, 18, 46, 1, 900.00, 7.00, '376-06-01', 'Glass Buret', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (872, NULL, NULL, 9, 4, 2, 700.00, 7.00, '301-01-43', 'Digital Mohm Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (873, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-04-12', 'Tomkey USB Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (874, NULL, NULL, 9, 4, 7, 1200.00, 14.00, '301-09-25', 'Multifuntion Pression Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (875, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-21', 'Digital HumidityTemperature Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (876, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-09', 'Data AcquisitionSwitch Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (877, NULL, NULL, 14, 12, 1, 900.00, 25.00, '307-02-13', 'Data Tracer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (878, NULL, NULL, 9, 4, 1, 1200.00, 7.00, '301-09-50', 'Automatic Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (879, NULL, NULL, 9, 4, 1, 760.00, 1.00, '301-01-36', 'Base Autoranging Digital', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (880, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-09-13', 'Digital Dial Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (881, NULL, NULL, 11, 8, 1, 600.00, 7.00, '303-02-18', 'Weight Balancing machine', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (882, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-01-09', 'Internal Dial Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (883, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-10', 'Black Stack Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (884, NULL, NULL, 18, 25, 1, 900.00, 7.00, '371-08-12', 'Multi Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (885, NULL, NULL, 18, 24, 1, 810.00, 1.00, '371-04-04', 'Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (886, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-13-07', 'IR Hipot Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (887, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-10-16', 'RTD Indicator Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (888, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-02-11', 'Clamp On Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (889, NULL, NULL, 9, 4, 2, 400.00, 7.00, '301-02-15', 'Clamp On Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (890, NULL, NULL, 13, 11, 5, 1200.00, 7.00, '305-05-03', 'Reference Pressure Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (891, NULL, NULL, 9, 4, 7, 1100.00, 14.00, '301-11-07', 'Temperature Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (892, NULL, NULL, 9, 4, 2, 1100.00, 10.00, '301-11-08', 'Metrology Well Calibrators', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (893, NULL, NULL, 9, 4, 2, 1100.00, 10.00, '301-11-09', 'Precision Temp Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (894, NULL, NULL, 9, 4, 2, 700.00, 10.00, '301-09-33', 'VoltmA Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (895, NULL, NULL, 16, 23, 1, 2000.00, 1.00, '374-03-16', 'Portable Multi Parameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (896, NULL, NULL, 13, 11, 5, 1500.00, 1.00, '305-13-12', 'Portable Multi Parameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (897, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-19', 'CURRENT PROBE', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (898, NULL, NULL, 11, 9, 1, 1500.00, 7.00, '304-06-05', 'Digital Hardness Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (899, NULL, NULL, 10, 7, 1, 440.00, 7.00, '310-01-09', 'Calibration Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (900, NULL, NULL, 22, 57, 10, 3500.00, 1.00, '341-11-02', 'Electrical Safety Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (901, NULL, NULL, 22, 57, 10, 2000.00, 1.00, '341-01-09', 'Diathermy Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (902, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-06-03', 'Sim Cube Nibp Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (903, NULL, NULL, 17, 29, 1, 1500.00, 7.00, '372-07-03', 'Salinity Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (904, NULL, NULL, 14, 13, 1, 1000.00, 25.00, '308-03-12', 'Dry Block Calibrator with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (905, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-07-03', 'NIBP Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (906, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-18-04', 'SpO2 Analyzer With Finger Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (907, NULL, NULL, 22, 57, 1, 8500.00, 7.00, '341-11-04', 'Defibrillator Transcutaneous Pacer Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (908, NULL, NULL, 9, 4, 1, 600.00, 14.00, '301-15-04', 'Super Megohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (909, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-16', 'Wooden Ruler For Percent Of Streteh', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (910, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-17', 'Plastic Ruler For Percent Of Shinkage', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (911, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-15', 'External Digital Point Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (912, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-04-13', 'HumidityBarometerData Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (913, NULL, NULL, 22, 57, 10, 4500.00, 1.00, '341-19-01', 'Vital Signs Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (914, NULL, NULL, 15, 16, 1, 720.00, 2.00, '352-07-08', 'pH Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (915, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-13-23', 'Shoe Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (916, NULL, NULL, 14, 12, 1, 720.00, 26.00, '307-02-10', 'Digital Pocket Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (917, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-03-17', 'เทอร์โม-ไฮโกรมิเตอร์ ยี่ห้อ Delta Trak รุ่น 13307 รหัส คพ.6610-016-0001-92548', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (918, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-01-02', 'เทอร์โมไฮโกรกราฟ', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (919, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-01-02', 'MIG Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (920, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-04-03', 'Analog Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (921, NULL, NULL, 9, 4, 1, 1440.00, 14.00, '301-09-13', 'Electrical Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (922, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-11', 'RTD Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (923, NULL, NULL, 14, 13, 1, 300.00, 26.00, '308-05-02', 'Thermocouple Sensor Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (924, NULL, NULL, 17, 29, 1, 1500.00, 1.00, '372-07-04', 'Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (925, NULL, NULL, 10, 6, 1, 1100.00, 1.00, '302-32-04', 'Screw Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (926, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-07-03', 'Scientific Ambient Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (927, NULL, NULL, 16, 23, 1, 1200.00, 14.00, '374-07-04', 'Scientific Ambient Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (928, NULL, NULL, 11, 8, 1, 270.00, 7.00, '303-02-19', 'Steel Brass Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (929, NULL, NULL, 14, 12, 2, 720.00, 2.00, '307-02-32', 'Microlog Temperature with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (930, NULL, NULL, 14, 12, 1, 2000.00, 30.00, '307-04-04', 'Temperature Conpensation Almemo', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (931, NULL, NULL, 12, 10, 10, 3000.00, 14.00, '306-03-02', 'Torque Tester Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (932, NULL, NULL, 10, 6, 10, 1200.00, 7.00, '302-05-02', 'Electrical Comparator Analog Mu-Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (933, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-21-01', 'Micrometer Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (934, NULL, NULL, 10, 6, 1, 850.00, 1.00, '302-01-03', 'Point Vernier Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (935, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-04-03', 'Internal Scale Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (936, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-03-18', 'Wet Dry Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (937, NULL, NULL, 14, 12, 1, 720.00, 30.00, '307-08-02', 'Thermocouple Probe Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (938, NULL, NULL, 14, 12, 1, 420.00, 30.00, '307-08-06', 'Thermocouple Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (939, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-16', 'External Scale Tube Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (940, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-13-11', 'Precision Outside Diameter Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (941, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-18', 'Standard Volumetric Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (942, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-29-03', 'Digital Bore Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (943, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-17-01', 'Black Stack Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (944, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-19', 'WBGT Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (945, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-20', 'WI Auto Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (946, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-15-08', 'Digital Earth Clamp Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (947, NULL, NULL, 14, 12, 1, 440.00, 26.00, '307-05-06', 'Std Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (948, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-15-02', 'Mohm Hitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:17', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (949, NULL, NULL, 10, 6, 1, 100.00, 14.00, '302-23-02', 'Taper Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (950, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-06-05', 'Max-Min Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (951, NULL, NULL, 9, 4, 2, 400.00, 14.00, '301-11-02', 'Digital Thermocouple Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (952, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-03-17', 'External Digital Blade Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (953, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-01-37', 'Spraybility Paintest', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (954, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-09-34', 'Pnuematic Portable Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (955, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-20-01', 'Reference Pressure Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (956, NULL, NULL, 9, 4, 5, 440.00, 7.00, '301-20-04', 'Hybrid Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (957, NULL, NULL, 14, 12, NULL, 720.00, 1.00, '307-02-33', 'เครื่องวัดอุณหภูมิและความชื้นสัมพัทธ์', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (958, NULL, NULL, 18, 24, 1, 1000.00, 7.00, '371-03-02', 'Le Chatilier Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (959, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-03-20', 'ค่าบริการสอบเทียบคุรุภัณฑ์', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (960, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-02-03', 'ECG Measuring Station', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (961, NULL, NULL, 18, 24, 1, 1.00, 1.00, '371-04-05', 'Flow Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (962, NULL, NULL, 9, 4, 1, 700.00, 1.00, '301-18-07', 'Tacho Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (963, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-18-09', 'Digital Engine Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (964, NULL, NULL, 12, 10, 5, 3000.00, 14.00, '306-03-03', 'Torque Wrench Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (965, NULL, NULL, 9, 4, 1, 1650.00, 1.00, '301-09-36', 'Pneumatic Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (966, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-12-03', 'Reference Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (967, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-08-09', 'Selector switch with Thermocouple wire', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (968, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-12-10', 'Perspex Shrinkage Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (969, NULL, NULL, 10, 6, 7, 900.00, 7.00, '302-12-11', 'Perspex Shrinkage Template', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (970, NULL, NULL, 9, 4, 1, 650.00, 14.00, '301-10-18', 'Compact Thermo Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (971, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-02-14', 'ACDC Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (972, NULL, NULL, 9, 4, 1, 1100.00, 14.00, '301-11-10', 'Compact Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (973, NULL, NULL, 22, 57, 5, 700.00, 1.00, '341-02-04', 'ECG Device', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (974, NULL, NULL, 13, 11, 5, 1200.00, 14.00, '305-04-07', 'Digital Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (975, NULL, NULL, 9, 4, 5, 1100.00, 7.00, '301-09-37', 'Process Signal Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (976, NULL, NULL, 17, 31, 1, 1200.00, 7.00, '372-08-03', 'Stirrer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:18', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (977, NULL, NULL, 10, 6, 5, 900.00, 7.00, '302-03-02', 'Digital Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (978, NULL, NULL, 14, 13, 1, 720.00, 30.00, '308-03-08', 'Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (979, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-08-01', 'Thermocouple Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (980, NULL, NULL, 10, 6, 1, 130.00, 14.00, '302-20-15', 'Foil Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (981, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-20-09', 'Steel Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (982, NULL, NULL, 18, 24, 1, 650.00, 7.00, '374-06-06', 'Lipkin-Pycnometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (983, NULL, NULL, 12, 10, 5, 3000.00, 7.00, '306-02-06', 'Torque Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (984, NULL, NULL, 10, 6, 1, 130.00, 1.00, '302-20-10', 'Black Dots', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (985, NULL, NULL, 14, 13, 1, 1450.00, 30.00, '308-06-05', 'Dry Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (986, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-40', 'pH Salinity Conductivity Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (987, NULL, NULL, 17, 26, 1, 4400.00, 14.00, '372-01-02', 'pH Salinity Conductivity Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (988, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-38', 'Pearson Current Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (989, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-17-03', 'Rod Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (990, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-21-06', 'Compression Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (991, NULL, NULL, 13, 11, 10, 1200.00, 7.00, '305-04-30', 'Orifice Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (992, NULL, NULL, 9, 4, 5, 700.00, 7.00, '301-18-08', 'Digital Tacho Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (993, NULL, NULL, 9, 4, 5, 1.00, 7.00, '301-20-03', 'Temperature Recoder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (994, NULL, NULL, 11, 9, 10, 1000.00, 56.00, '304-05-03', 'Analog Force Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (995, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-06-06', 'Pressure Transmitter with Digital Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (996, NULL, NULL, 14, 13, 1, 330.00, 2.00, '308-03-13', 'Temperature Transmitter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (997, NULL, NULL, 14, 12, 1, 420.00, 25.00, '307-02-06', 'Temperature Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (998, NULL, NULL, 13, 11, 1, 1200.00, 14.00, '305-04-29', 'Vacuum Test Gauge Digital', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (999, NULL, NULL, 14, 12, 1, 720.00, 30.00, '307-05-03', 'Temperature Calibration with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1000, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-15-19', 'Automatic Earth Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1001, NULL, NULL, 14, 13, 1, 2000.00, 25.00, '308-04-11', 'Standard Probe RTD', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1002, NULL, NULL, 11, 8, 1, 600.00, 7.00, '303-01-07', 'Standard Weight Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1003, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-09-28', 'Process Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1004, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-02-02', 'mA Process Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1005, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-05-03', 'Frequency Calibrator With Totalizer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1006, NULL, NULL, 13, 11, 1, 470.00, 14.00, '305-04-28', 'Autimated Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:19', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1007, NULL, NULL, 13, 11, 1, 1200.00, 14.00, '305-09-05', 'Compact Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1008, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-02-08', 'Bourdon Tube Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1009, NULL, NULL, 11, 9, 1, 1600.00, 7.00, '304-02-05', 'Standard Balances', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1010, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-10-04', 'HumidityTemperature Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1011, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-39', 'Beta Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1012, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-11', 'Measuring Foil Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1013, NULL, NULL, 11, 8, 1, 270.00, 7.00, '303-02-21', 'Nu-martindale Abrasion and Pilling Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1014, NULL, NULL, 11, 9, 1, 1300.00, 7.00, '304-07-02', 'Tension Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1015, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-12-12', 'Standard Volumetric Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1016, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-09-40', 'Adjustable Master Resistance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1017, NULL, NULL, 11, 8, 1, 270.00, 10.00, '303-01-04', 'Dart Head Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1018, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-04', 'Automated Diagnostic Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1019, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-21', 'Oxygen Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1020, NULL, NULL, 14, 12, 1, 720.00, 30.00, '307-02-24', 'Oxygen Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1021, NULL, NULL, 10, 6, 10, 1200.00, 1.00, '302-13-10', 'MMC Sonic Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1022, NULL, NULL, 10, 6, 1, 400.00, 7.00, '302-19-03', 'External Thread Measuring Wires 3 Wire', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1023, NULL, NULL, 9, 4, NULL, 400.00, 1.00, '301-02-04', 'Clip-On Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1024, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-17', 'Temperature Humidity logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1025, NULL, NULL, 10, 7, 1, 450.00, 7.00, '310-01-07', 'Standard Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1026, NULL, NULL, 14, 12, 1, 1400.00, 15.00, '307-02-37', 'Digital Thermo and Hygrometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1027, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-14-05', 'Countersink Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1028, NULL, NULL, 13, 11, 10, 1200.00, 14.00, '305-04-32', 'Portable Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1029, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-09-02', 'Percision Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1030, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-12-15', 'Convex Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1031, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-01-39', 'Conductivity Meter mv', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1032, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-01-40', 'pH Meter mv', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1033, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-33', 'Low Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1034, NULL, NULL, 11, 8, 1, 230.00, 7.00, '303-03-03', 'Std. Brass Test Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1035, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-34', 'Aneroid Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1036, NULL, NULL, 13, 11, 5, 470.00, 14.00, '305-04-35', 'Regulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1037, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-12', 'Standard Film', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:20', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1038, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-48', 'Temperature Data Logger With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1039, NULL, NULL, 19, 49, 1, 700.00, 7.00, '309-01-12', 'Timing Light', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1040, NULL, NULL, 11, 8, 1, 440.00, 7.00, '303-01-06', 'Standard Hook Weight Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1041, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-09-41', 'Precision Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1042, NULL, NULL, 9, 4, 5, 400.00, 1.00, '301-02-05', 'Clamp On Leak Hitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1043, NULL, NULL, 9, 4, 1, 1850.00, 1.00, '301-13-02', 'InsulationWithstanding Hitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1044, NULL, NULL, 16, 23, 1, 1960.00, 14.00, '374-07-12', 'Swing Hygrograph', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1045, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-12-14', 'Hematocrit Reader', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1046, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-11-01', 'Digital Test Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1047, NULL, NULL, 9, 4, 1, 600.00, 1.00, '301-07-03', 'Hand Stop Watch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1048, NULL, NULL, 9, 4, 1, 1000.00, 7.00, '301-11-06', 'Process Temperature Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1049, NULL, NULL, 14, 12, 1, 1500.00, 25.00, '307-05-05', 'Process Temperature Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1050, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-15-01', 'Lupe Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1051, NULL, NULL, 13, 11, 1, 1500.00, 1.00, '305-04-36', 'Precision digital Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1052, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-08-01', 'Universal Length Measuring Machine', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1053, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-02-16', 'HVAC Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1054, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-06-04', 'CounterTimer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1055, NULL, NULL, 13, 11, 1, 1100.00, 7.00, '305-04-45', 'Pressure Flexi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1056, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-44', 'DCFrequency Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1057, NULL, NULL, 13, 11, 1, 1200.00, 14.00, '305-04-37', 'Electronic Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1058, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-04-10', 'PRTs Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1059, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-18', 'HumidityTemperature Logger With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1060, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-04', 'AC True RMS', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:21', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1061, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-08-03', 'Humidity and Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1062, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-05', 'External Digit Crimp Height Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1063, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-09-03', 'DC Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1064, NULL, NULL, 14, 12, 1, 720.00, 30.00, '307-02-49', 'Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1065, NULL, NULL, 9, 4, 1, 440.00, 14.00, '301-15-21', 'DC Milli-Ohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1066, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-05-04', 'Traceable Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1067, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-08-09', 'Hybrid Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1068, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-02-06', 'Tread Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1069, NULL, NULL, 13, 11, 5, 1400.00, 14.00, '305-04-38', 'STD.Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1070, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-18', 'External Scale Disk Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1071, NULL, NULL, 9, 4, 1, 1400.00, 7.00, '301-09-43', 'Milli Ohm Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1072, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-50', 'Mini Logger with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1073, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-20', 'Mini Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1074, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-26-06', 'Digital Unit Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1075, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-33-07', 'Setting Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1076, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-09', 'Volt Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1077, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-13-21', 'Tension Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1078, NULL, NULL, 13, 11, 5, 1400.00, 14.00, '305-13-10', 'HumidityTemperature Baromatic Pressure Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1079, NULL, NULL, 9, 4, 1, 4000.00, 7.00, '301-10-17', 'Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1080, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-04-08', 'Digital Phosphor Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1081, NULL, NULL, 18, 25, 1, 700.00, 7.00, '371-05-03', 'Digital Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1082, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-13', 'External Groove Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1083, NULL, NULL, 2, 1, 1, 2000.00, 7.00, '320-01-04', 'ค่าบริการรับ-ส่งเครื่องมือ 2000 บาท ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1084, NULL, NULL, 9, 4, 1, 1100.00, 14.00, '301-11-05', 'Thermocouple Calibrator Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1085, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-04-04', 'Internal Digital Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1086, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-14', 'Outside Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1087, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-04-02', 'Alarm Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1088, NULL, NULL, 10, 6, 1, 130.00, 1.00, '302-20-13', 'Thickness Film', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:22', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1089, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-15-01', 'Earth Resistance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1090, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-09-42', 'Multifunction Counter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1091, NULL, NULL, 14, 13, 1, 1300.00, 30.00, '308-03-15', 'Metrology Well Calibrators', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1092, NULL, NULL, 16, 23, 1320, 6.00, 1.00, '374-04-22', 'Thermolog', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1093, NULL, NULL, 14, 13, 1, 720.00, 30.00, '308-03-16', 'Documenting Process Calibrator with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1094, NULL, NULL, 13, 11, 5, 490.00, 14.00, '305-04-39', 'Tire Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1095, NULL, NULL, 14, 12, 1, 440.00, 14.00, '307-05-07', 'Digital Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1096, NULL, NULL, 16, 23, 1, 1440.00, 64.00, '374-04-23', 'Relative Humidity and Temperature Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1097, NULL, NULL, 10, 6, 1, 700.00, 14.00, '302-14-07', 'Digital Thickness Measurer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1098, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-15-04', 'Digital Convex Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1099, NULL, NULL, 22, 57, 1, 3000.00, 1.00, '341-13-02', 'Infusion Pump Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1100, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-03-34', 'Electronic Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1101, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-24', 'Temperature Humidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1102, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-23', 'HumidityTemperature Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1103, NULL, NULL, 9, 4, 1, 440.00, 14.00, '301-09-60', 'Timer Analog', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1104, NULL, NULL, 13, 11, 5, 1400.00, 14.00, '305-04-40', 'Digital Precision Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1105, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-53', 'Process Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1106, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-09-54', 'Process CalibratorMeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1107, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-18-12', 'Monogram Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1108, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-06-08', 'Temperature Controller with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1109, NULL, NULL, 10, 6, 1, 900.00, 46.00, '302-17-06', 'Calibration Rod', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1110, NULL, NULL, 2, 1, 1, 500.00, 1.00, '320-03-02', 'ค่าบริการสอบเทียบเครื่องมือมีข้อบกพร่อง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1111, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-45', 'Cond Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1112, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-10-20', 'pHIONDO Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1113, NULL, NULL, 14, 13, 1, 720.00, 21.00, '308-03-17', 'Data Acquisition With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:23', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1114, NULL, NULL, 11, 8, 1, 400.00, 1.00, '303-02-22', 'Perspirometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1115, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-08-10', 'Laboratory DC Power Supply', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1116, NULL, NULL, 14, 13, 1, 720.00, 30.00, '308-04-12', 'Semi Standard Platinum Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1117, NULL, NULL, 14, 13, 1, 900.00, 25.00, '308-05-06', 'Thermocouple Needle Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1118, NULL, NULL, 14, 13, 1, 900.00, 25.00, '308-05-04', 'Thermocouple Wire Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1119, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-07', 'Thermocouple Probe Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1120, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-08', 'Thermocouple Probe Type E', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1121, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-09', 'Thermocouple Probe Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1122, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-10', 'Thermocouple Probe Type R', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1123, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-11', 'Thermocouple Probe Type S', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1124, NULL, NULL, 14, 13, 1, 1500.00, 25.00, '308-06-07', 'Portable Thermal Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1125, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-25', 'Humidity Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1126, NULL, NULL, 9, 4, 4, 440.00, 14.00, '301-01-46', 'Graphical Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1127, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-18', 'Digital Thermometer Chub E-4 with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1128, NULL, NULL, 13, 11, 5, 1400.00, 7.00, '305-04-41', 'Infusion Pump Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1129, NULL, NULL, 19, 64, 1, 1550.00, 25.00, '311-01-04', 'Laser Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1130, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-47', 'Battery Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1131, NULL, NULL, 18, 25, 1, 900.00, 7.00, '371-08-13', 'Multichannel Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1132, NULL, NULL, 14, 12, 1, 440.00, 20.00, '307-02-70', 'Data Logger With Thermocouple Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1133, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-24', 'HumidityTemp.Meter Dew point Data logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1134, NULL, NULL, 14, 13, 1, 300.00, 25.00, '308-03-19', 'Analog Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1135, NULL, NULL, 9, 4, 5, 700.00, 7.00, '301-13-24', 'High Voltage Digital Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1136, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-20', 'Precision Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1137, NULL, NULL, 16, 23, 1, 700.00, 7.00, '374-03-26', 'Thermometer Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1138, NULL, NULL, 9, 4, 3, 1200.00, 14.00, '301-08-11', 'Power Logger Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1139, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-33-09', 'Bore Gauge Dial Indicator Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1140, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-34-04', 'Setting Ring For Three Point Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1141, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-33-08', 'Setting Ring For Three Point Internal Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:24', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1142, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-04-07', 'Inside Micro Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1143, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-21-11', 'Setting Box', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1144, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-58', 'Data Logger Buttom', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1145, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-21-12', 'Resistance Box D-EK', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1146, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-48', 'Analog DC Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1147, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-49', 'Analog DC Currentmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1148, NULL, NULL, 9, 4, 1, 1100.00, 7.00, '301-15-39', 'High Resistance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1149, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-07-07', 'Temperature Dew Point Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1150, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-07-03', 'Heat Index Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1151, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-15-40', 'AC Low Ohm Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1152, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-08-08', 'Digital Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1153, NULL, NULL, 18, 46, 1, 1400.00, 14.00, '371-11-02', 'Saybolt Visconmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1154, NULL, NULL, 14, 13, 1, 730.00, 21.00, '308-03-21', 'Dry Block Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1155, NULL, NULL, 12, 10, 10, 3000.00, 1.00, '306-03-07', 'Master Torque Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1156, NULL, NULL, 13, 11, 1, 1400.00, 14.00, '305-04-43', 'Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1157, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-15-41', 'Flooring Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1158, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-16', 'Foil Precision Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1159, NULL, NULL, 11, 8, 1, 440.00, 7.00, '303-02-23', 'Melt Indexer Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1160, NULL, NULL, 14, 12, 1, 1420.00, 25.00, '308-03-23', 'Temperature Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1161, NULL, NULL, 13, 11, 1, 1400.00, 14.00, '305-12-02', 'Portable Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1162, NULL, NULL, 9, 4, 1, 55.00, 1.00, '301-07-06', 'Temp Hum Clock', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1163, NULL, NULL, 16, 23, 1, 1330.00, 1.00, '374-03-27', 'Temp Hum Clock', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1164, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-19-02', 'Chronoscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1165, NULL, NULL, 16, 23, 1, 1330.00, 1.00, '374-03-28', 'Digital Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1166, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-24', 'Manometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1167, NULL, NULL, 13, 11, 1, 450.00, 14.00, '305-02-10', 'Ventilator Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1168, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-04-44', 'Full Auto Matic Tire Inflator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1169, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-25-02', 'Digital Thermometer Read Out', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:25', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1170, NULL, NULL, 17, 26, 1, 2700.00, 7.00, '372-01-03', 'Combined Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1171, NULL, NULL, 17, 27, 1, 1800.00, 7.00, '372-02-07', 'Combined Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1172, NULL, NULL, 14, 13, 1, 720.00, 1.00, '307-02-59', 'Combined Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1173, NULL, NULL, 17, 27, 1, 950.00, 2.00, '372-02-08', 'Dissolved Oxygen Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1174, NULL, NULL, 12, 10, 5, 3000.00, 7.00, '306-02-07', 'Electronic Torque Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1175, NULL, NULL, 9, 4, 5, 400.00, 14.00, '301-03-04', 'Capacitance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1176, NULL, NULL, 14, 12, 1, 1400.00, 14.00, '307-08-14', 'Digital Thermometer with Thermocouple', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1177, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-50', 'Digital Precision Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1178, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-51', 'Clamp ON ACDC Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1179, NULL, NULL, 22, 57, 2, 2000.00, 1.00, '341-18-05', 'Pulse Oximetry Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1180, NULL, NULL, 15, 16, 1, 1200.00, 2.00, '352-04-10', 'Universal Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1181, NULL, NULL, 17, 33, 1, 950.00, 7.00, '372-02-09', 'PH DO Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1182, NULL, NULL, 17, 27, 1, 1.00, 999.99, '372-09-06', 'PH DO Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1183, NULL, NULL, 10, 6, 1, 1400.00, 14.00, '302-12-19', 'Standard Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1184, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-25', 'Multi-function', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1185, NULL, NULL, 13, 11, 5, 1400.00, 14.00, '305-04-42', 'Multi-function', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1186, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-52', 'Divorce Resistance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1187, NULL, NULL, 13, 11, 10, 1400.00, 14.00, '305-04-46', 'Precision Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1188, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-12-20', 'Glass Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1189, NULL, NULL, 18, 25, 1, 750.00, 7.00, '371-08-14', 'Single Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1190, NULL, NULL, 9, 4, 2, 2200.00, 14.00, '301-01-53', 'Micro Cal', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1191, NULL, NULL, 17, 27, 3, 2900.00, 7.00, '372-02-10', 'pH mV Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1192, NULL, NULL, 15, 16, 1, 1000.00, 14.00, '351-06-06', 'Ultrasonic Cleaner Water Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1193, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-09-10', 'Counter Sink Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1194, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-12-21', 'Calibration Sample', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1195, NULL, NULL, 12, 10, NULL, 3000.00, 1.00, '306-03-08', 'Torque Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1196, NULL, NULL, 9, 4, 5, 1680.00, 2.00, '301-09-55', 'Advance Signal Multi Scanner', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1197, NULL, NULL, 9, 4, 2, 400.00, 7.00, '301-02-17', 'Analog Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1198, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-20-17', 'Connector Gauge Kit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:26', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1199, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-18-08', 'Dial Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1200, NULL, NULL, 9, 4, 2, 440.00, 7.00, '301-21-13', 'Digital Resistance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1201, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-04-26', 'Incubator Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1202, NULL, NULL, 13, 11, 1, 470.00, 1.00, '305-02-11', 'Level Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1203, NULL, NULL, 10, 6, 1, 3200.00, 7.00, '302-20-23', 'Dipping Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1204, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-09-56', 'Synthesized Arbitrary Function Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1205, NULL, NULL, 14, 13, 1, 400.00, 25.00, '308-03-22', 'Piston Gauge Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1206, NULL, NULL, 13, 11, 1, 1200.00, 1.00, '305-04-47', 'Non-Invasive Blood Pressure Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1207, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-54', 'mV Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1208, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-09-11', 'Dial Counter Sinkkdial gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1209, NULL, NULL, 13, 11, 5, 1200.00, 7.00, '305-09-07', 'U Tube Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1210, NULL, NULL, 17, 27, 3, 2900.00, 7.00, '372-02-11', 'Portable pH and Conductivity With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1211, NULL, NULL, 17, 26, 1, 1320.00, 7.00, '372-01-04', 'Portable pH and Conductivity With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1212, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-08-15', 'Portable pH and Conductivity With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1213, NULL, NULL, 10, 6, 1, 130.00, 1.00, '302-20-18', 'Film Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1214, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-01-10', 'Inside Digital Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1215, NULL, NULL, 22, 57, 1, 3000.00, 1.00, '341-13-04', 'Infusion Device Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1216, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-20-19', 'Foil Cal.Thickness Coating', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1217, NULL, NULL, 9, 4, 5, 700.00, 14.00, '301-01-55', 'Paint Resistance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1218, NULL, NULL, 10, 7, 10, 440.00, 7.00, '310-01-10', 'Gauge Block Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1219, NULL, NULL, 16, 23, 1, 1440.00, 15.00, '374-04-27', 'Temp. Humid Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1220, NULL, NULL, 19, 49, 1, 1600.00, 14.00, '309-01-14', 'Environment Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1221, NULL, NULL, 14, 13, 1, 720.00, 25.00, '307-08-16', 'Digital Thermometer Chub E-4 with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1222, NULL, NULL, 16, 23, 1, 1440.00, 5.00, '374-04-28', 'HumidityBaroTemp. Data Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1223, NULL, NULL, 13, 11, 1, 1400.00, 1.00, '305-03-04', 'Digital Pressure Vacuum Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1224, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-29', 'Temperature Humidity Programable', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:27', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1225, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-56', 'pHIONDO Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1226, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-60', 'Wireless Thermo Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1227, NULL, NULL, 9, 4, 4, 400.00, 14.00, '301-13-25', 'AC 1 Phase Volt Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1228, NULL, NULL, 16, 23, 1, 1440.00, 120.00, '374-04-29', 'iButton data logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1229, NULL, NULL, 14, 12, 1, 720.00, 200.00, '307-02-61', 'iButton data logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1230, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-03-19', 'Digimatic Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1231, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-62', 'Temperature Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1232, NULL, NULL, 19, 49, 1, 1600.00, 7.00, '309-01-15', 'Illuminance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1233, NULL, NULL, 9, 4, 1, 5000.00, 14.00, '301-17-07', 'Thermocouple Scanner Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1234, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-17-08', 'M Ohm Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1235, NULL, NULL, 13, 11, 5, 1500.00, 7.00, '305-09-08', 'Universal Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1236, NULL, NULL, 11, 8, 1, 440.00, 7.00, '303-01-08', 'Standard Weights Push Pull Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1237, NULL, NULL, 11, 8, 1, 400.00, 7.00, '303-01-09', 'Standard Weights Torque', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1238, NULL, NULL, 13, 11, 1, 470.00, 14.00, '305-03-05', 'Digital Pressure Vacuum Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1239, NULL, NULL, 12, 10, 1, 1100.00, 7.00, '306-03-09', 'Dial Torque Wrench Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1240, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-57', 'Analog Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1241, NULL, NULL, 13, 11, 1, 1500.00, 14.00, '305-14-02', 'Ambient Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1242, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-03-30', 'Ambient Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1243, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-01-07', 'Thermometer-Glass 1', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1244, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-01-08', 'Thermometer-Glass 2', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1245, NULL, NULL, 9, 4, 1, 1350.00, 1.00, '301-09-57', 'Calibrator MCX', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1246, NULL, NULL, 13, 11, 1, 1500.00, 14.00, '305-13-13', 'Dial Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1247, NULL, NULL, 9, 4, 1, 1000.00, 7.00, '301-09-45', 'DC Electronic Load', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1248, NULL, NULL, 18, 25, 1, 650.00, 14.00, '371-08-15', 'Micro Tranferpette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1249, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-02-05', 'ECG Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1250, NULL, NULL, 17, 34, 1, 1200.00, 1.00, '373-03-05', 'Centrifuge Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1251, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-08-10', 'Compact Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1252, NULL, NULL, 10, 6, 10, 950.00, 14.00, '302-09-15', 'Pocket Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:28', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1253, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-58', 'Microamperes', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1254, NULL, NULL, 14, 13, 1, 300.00, 14.00, '308-05-03', 'Thermocouple Reference Junction', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1255, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-09-61', 'Prescion Resistance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1256, NULL, NULL, 22, 57, 3, 2000.00, 1.00, '341-06-02', 'Defibrillator Selectable Loads', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1257, NULL, NULL, 9, 4, 4, 400.00, 56.00, '301-09-62', 'Portable Wheatstone Bridge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1258, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-03-20', 'Digimicro Stand', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1259, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-30', 'Electronic RH Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1260, NULL, NULL, 11, 9, 1, 1600.00, 1.00, '304-02-03', 'Navigator Balances', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1261, NULL, NULL, 14, 12, 1, 300.00, 25.00, '307-01-09', 'Thermometer-Glass 3', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1262, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-03-01', 'Suction Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1263, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-03-21', 'External Digit Point Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1264, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-02-18', 'ACDC Clamp Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1265, NULL, NULL, 9, 4, 1, 600.00, 14.00, '301-01-59', 'Tera Ohm', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1266, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-05-05', 'Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1267, NULL, NULL, 9, 4, 1, 770.00, 14.00, '301-01-60', 'Cerrent Loop Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1268, NULL, NULL, 17, 27, 1, 720.00, 1.00, '372-10-01', 'pH Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1269, NULL, NULL, 17, 26, 1, 720.00, 1.00, '372-10-02', 'Conductivity Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1270, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-05-06', 'Aneroid Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1271, NULL, NULL, 13, 11, 10, 1400.00, 7.00, '305-04-48', 'Handheld Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1272, NULL, NULL, 9, 4, 4, 400.00, 1.00, '301-01-61', 'ACDC Current Probe With Digital Phosphor Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1273, NULL, NULL, 9, 4, 2, 400.00, 14.00, '301-01-62', 'Process calibrator With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1274, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-36', 'Process Calibrator With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1275, NULL, NULL, 16, 23, 1, 740.00, 14.00, '374-03-31', 'Heat Stress Monitor with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1276, NULL, NULL, 13, 11, 4, 470.00, 14.00, '305-04-49', 'Digital Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:29', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1277, NULL, NULL, 13, 11, 5, 470.00, 7.00, '305-04-50', 'Tire Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1278, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-31', 'HumidityBarometerThermo Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1279, NULL, NULL, 13, 11, 1, 1500.00, 14.00, '305-13-15', 'HumidityBarometerTemp.', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1280, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-16', 'Illuminance UV Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1281, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-63', 'HumidityTemperature Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1282, NULL, NULL, 14, 13, 1, 1520.00, 1.00, '308-06-08', 'High Precision Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1283, NULL, NULL, 9, 4, 1, 2500.00, 14.00, '301-03-05', 'Magnetic Field Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1284, NULL, NULL, 14, 13, 1, 820.00, 25.00, '308-05-05', 'Thermocouple Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1285, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-08-07', 'Digital Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1286, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-32', 'Thermo-Anemometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1287, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-12-22', 'Hatra Course Length Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1288, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-18-07', 'Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1289, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-21-02', 'Infrared Ear Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1290, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-25', 'Digital Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1291, NULL, NULL, 13, 11, 1, 1200.00, 14.00, '305-07-06', 'Digital Pressure Measuring Divice', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1292, NULL, NULL, 13, 11, 5, 1500.00, 7.00, '305-13-16', 'HumidityBarometerData Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1293, NULL, NULL, 9, 4, 1, 1650.00, 1.00, '301-16-04', 'Advanced Multi - purpose Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1294, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-63', 'Resistance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1295, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-64', 'Digital Temperature Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1296, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-65', 'Digital Thermometer With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1297, NULL, NULL, 22, 57, 5, 2000.00, 1.00, '341-01-07', 'Fetal Heart Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1298, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-03-33', 'MICROTHERM', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1299, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-03-26', 'Multi Use Temperature Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1300, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-66', 'ThermocoupleDigital Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1301, NULL, NULL, 9, 4, 1, 2500.00, 14.00, '301-03-06', 'EMF FIELD TESTER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1302, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-03-22', 'External Digit Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1303, NULL, NULL, 16, 23, 1, 1640.00, 112.00, '374-04-32', 'Humidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:30', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1304, NULL, NULL, 9, 4, 1, 800.00, 14.00, '301-03-07', 'Paint Resistivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1305, NULL, NULL, 9, 4, 5, 400.00, 14.00, '301-09-26', 'Dry Block Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1306, NULL, NULL, 12, 10, 5, 1600.00, 7.00, '306-02-08', 'Digital Torque Driver With Connected Display', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1307, NULL, NULL, 11, 9, 1, 1600.00, 7.00, '304-02-06', 'Electronic Scales', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1308, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-10-02', 'Defibrillator Pacermaker Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1309, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-03-23', 'Head Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1310, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-15-42', 'Analogue Earth Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1311, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-12-23', 'Grindometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1312, NULL, NULL, 10, 6, 5, 900.00, 7.00, '302-21-07', 'Digital Display Micrometer Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1313, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-17-02', 'Ultrasound Wattmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1314, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-01-04', 'Humidity Temperature Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1315, NULL, NULL, 15, 2, 1, 1000.00, 25.00, '351-09-06', 'Digital Block Heater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1316, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-03-24', 'Inside Scale Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1317, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-03-25', 'External Scale Crimp Height Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1318, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-08-17', 'Thermocouple Probe Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1319, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-09-58', 'Current Cutoff Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1320, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-67', 'Memory Hilogger with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1321, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-15', 'Memory Hilogger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1322, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-64', 'Panel Amp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1323, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-04-09', 'Handheld Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1324, NULL, NULL, 10, 6, 1, 850.00, 7.00, '302-01-11', 'Inside Length Device adult', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1325, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-24', 'Pick Counter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1326, NULL, NULL, 9, 4, 3, 1680.00, 3.00, '301-09-63', 'Field Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1327, NULL, NULL, 22, 57, 5, 700.00, 1.00, '341-04-05', 'Digital Blood Pressure Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1328, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-01-12', 'Inside Vernier Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1329, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-06', 'Mechanical Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1330, NULL, NULL, 12, 10, 1, 1600.00, 10.00, '306-02-09', 'Digital Torque Screwdriver', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1331, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-05-04', 'Bunte Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1332, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-03-34', 'เครื่องวัดอุณหภูมิความชื้น', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1333, NULL, NULL, 10, 7, 1, 450.00, 1.00, '310-01-11', 'แท่งเทียบมาตรฐานเวอร์เนียร์คาลิเบอร์', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:31', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1334, NULL, NULL, 10, 7, 1, 450.00, 1.00, '310-01-12', 'เกจบล็อค', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1335, NULL, NULL, 13, 11, 9, 1200.00, 1.00, '305-04-51', 'ชุดสอบเทียบเกทวัดความดันแบบ Multi-Range', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1336, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-03-35', 'Wet - Dry Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1337, NULL, NULL, 11, 9, 1, 1600.00, 1.00, '304-02-07', 'Pocket Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1338, NULL, NULL, 14, 12, 1, 720.00, 2.00, '307-02-68', 'Multiparameter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1339, NULL, NULL, 17, 26, 1, 2700.00, 1.00, '372-01-05', 'Multiparameter Conductivity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1340, NULL, NULL, 17, 27, 1, 1800.00, 1.00, '372-02-12', 'Multiparameter pH', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1341, NULL, NULL, 17, 32, 1, 1700.00, 1.00, '372-04-02', 'Multiparameter Turbidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1342, NULL, NULL, 17, 33, 1, 950.00, 1.00, '372-09-07', 'Multiparameter DO', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1343, NULL, NULL, 15, 14, 1, 1200.00, 14.00, '353-01-07', 'Multi-Product Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1344, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-15-06', 'Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1345, NULL, NULL, 16, 23, 1, 750.00, 14.00, '374-03-36', 'Digital Barrometer Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1346, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-65', 'Auto Range Digital Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1347, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-04-05', 'Digital Inside Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1348, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-15-04', 'Digital Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1349, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-12-03', 'Paeumatic Transducer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1350, NULL, NULL, 14, 12, 2, 720.00, 1.00, '307-09-02', 'Platinum Temp Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1351, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-12-04', 'Precision Vacuum Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1352, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-18-10', 'Digital Handpiece Count Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1353, NULL, NULL, 9, 4, 1, 700.00, 12.00, '301-18-11', 'Microprocessor Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1354, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-03-05', 'Reagent Bottles', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1355, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-37', 'Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1356, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-01-13', 'Digital Microcal', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1357, NULL, NULL, 9, 4, 1, 600.00, 56.00, '301-01-66', 'Digital MegaOhm Hitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1358, NULL, NULL, 14, 13, 1, 5000.00, 56.00, '308-04-13', 'Standard Platinum Resistance Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1359, NULL, NULL, 17, 29, 4, 1500.00, 7.00, '372-07-06', 'Pocket Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1360, NULL, NULL, 9, 4, 1, 600.00, 14.00, '301-07-07', 'Digital Stop Watch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1361, NULL, NULL, 15, 15, 1, 820.00, 14.00, '351-09-07', 'Heat Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:32', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1362, NULL, NULL, 2, 1, 1, 1.00, 1.00, '320-05-01', 'ค่าบริการ', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1363, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-08', 'Weight Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1364, NULL, NULL, 14, 12, 3, 300.00, 21.00, '307-02-69', 'Multi-Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1365, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-03-06', 'BOD Bottle', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1366, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-03-32', 'Outside Micrometer Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1367, NULL, NULL, 10, 6, 10, 900.00, 14.00, '305-01-03', 'Crimp Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1368, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-32-05', 'Master Plug', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1369, NULL, NULL, 10, 6, 10, 900.00, 24.00, '302-03-26', 'Inside Digital Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1370, NULL, NULL, 15, 19, 5, 470.00, 3.00, '353-02-03', 'Compound Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1371, NULL, NULL, 18, 24, 3, 1035.00, 1.00, '371-09-03', 'Micro Syringe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1372, NULL, NULL, 11, 9, 1, 1000.00, 14.00, '304-02-08', 'Digital Push-Pull Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1373, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-04-14', 'Thermocouple Type E', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1374, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-71', 'Thermo - Humidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1375, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-01-02', 'Volumetric Pipette P', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1376, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-72', 'Microlog Temp and Humid With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1377, NULL, NULL, 9, 4, 1, 760.00, 1.00, '301-18-13', 'Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1378, NULL, NULL, 13, 11, 1, 470.00, 14.00, '305-12-05', 'Gas Detector', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1379, NULL, NULL, 14, 12, 1, 320.00, 14.00, '307-02-73', 'Automotive meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1380, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-03-38', 'Thermo-Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1381, NULL, NULL, 10, 6, 19, 910.00, 7.00, '302-03-27', 'Digimatic Level gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1382, NULL, NULL, 2, 1, 1, 600.00, 1.00, '320-01-05', 'ค่าบริการรับ-ส่งเครื่องมือ 600 บาท ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1383, NULL, NULL, 20, 53, 1, 2000.00, 1.00, '381-01-01', 'Dial Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1384, NULL, NULL, 20, 53, 1, 2000.00, 1.00, '381-01-02', 'Digital Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1385, NULL, NULL, 17, 27, 3, 2900.00, 56.00, '372-02-13', 'Ion Analyser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1386, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-03', 'Vernier Depth Gage', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1387, NULL, NULL, 20, 53, 1, 2000.00, 1.00, '381-01-04', 'Vernier Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:33', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1388, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-05', 'Digimatic Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1389, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-06', 'Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1390, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-07', 'Digital Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1391, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-08', 'Digital Caliper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1392, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-09', 'Dial Caliper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1393, NULL, NULL, 20, 53, 1, 2000.00, 1.00, '381-01-10', 'Digimatic Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1394, NULL, NULL, 20, 53, 1, 2000.00, 1.00, '381-01-11', 'Digital Inside Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1395, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-01-12', 'Countersink Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1396, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-01', 'Point Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1397, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-02', 'Digital Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1398, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-03', 'Depth Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1399, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-04', 'Can Seam Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1400, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-05', 'Digital Crimp Height Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1401, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-06', 'External Scale Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1402, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-07', 'External Digital Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1403, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-08', 'Inside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1404, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-09', 'Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1405, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-10', 'Tubular Inside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1406, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-11', 'Digit Depth Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1407, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-02-12', 'Digimatic Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1408, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-01', 'Dial Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1409, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-02', 'Dial Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1410, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-03', 'Digimatic Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1411, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-04', 'Dial Test Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1412, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-05', 'Template Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:34', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1413, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-06', 'Ladder Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1414, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-07', 'Extensometer Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1415, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-03-08', 'Multi-Welding Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1416, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-01', 'Steel Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1417, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-02', 'Steel Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1418, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-03', 'PI Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1419, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-04', 'Textile Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1420, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-05', 'Stainless Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1421, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-06', 'Measuring Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1422, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-07', 'Measurement Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1423, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-08', 'Metal Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1424, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-09', 'Diameter Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1425, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-10', 'Stainless Steel Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1426, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-11', 'Step Wedge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1427, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-12', 'Metal Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1428, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-13', 'Steel Ruler for Wascator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1429, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-14', 'Plastic Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1430, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-16', 'Ruler Scale For Wascator Washing Mac', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1431, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-17', 'Mandrel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1432, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-18', 'T-Square', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1433, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-04-19', 'U-Tube Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1434, NULL, NULL, 20, 53, 1, 1200.00, 1.00, '381-04-15', 'Digital Steel Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1435, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-05-01', 'Dial Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1436, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-05-02', 'Ultrasonic Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1437, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-05-03', 'Digimatic Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1438, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-05-04', 'Digital Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1439, NULL, NULL, 20, 53, 1, 4300.00, 1.00, '381-06-01', 'Dial Gauge Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1440, NULL, NULL, 20, 53, 1, 450.00, 1.00, '381-07-01', 'Standard Bar', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:35', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1441, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-08-01', 'Vernier Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1442, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-08-02', 'Digimatic Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1443, NULL, NULL, 19, 50, 1, 5000.00, 1.00, '312-01-01', 'Standard Platinum Resistance Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1444, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-08-03', 'Dial Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1445, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-08-04', 'Digital Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1446, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-08-05', 'Stem Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1447, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-01', 'Feeler Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1448, NULL, NULL, 20, 53, 1, 1.00, 1.00, '381-09-02', 'Thickness Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1449, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-03', 'Film Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1450, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-04', 'Standard Foil', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1451, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-05', 'Film Thickness', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1452, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-06', 'Thickness Foil', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1453, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-07', 'Standard Coins', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1454, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-09-08', 'Film Thickmess Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1455, NULL, NULL, 20, 53, 1, 4300.00, 1.00, '381-10-01', 'Micro meter Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1456, NULL, NULL, 20, 53, 1, 4300.00, 1.00, '381-10-02', 'Calibration Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1457, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-10-03', 'Digimatic Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1458, NULL, NULL, 20, 53, 1, 4300.00, 1.00, '381-10-04', 'Thickness Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1459, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-10-05', 'Digital Micrometer Head', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1460, NULL, NULL, 20, 53, 1, 1300.00, 1.00, '381-11-01', 'Zoom Loupe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1461, NULL, NULL, 14, 13, 1, 340.00, 14.00, '307-02-74', 'Sterildisk', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1462, NULL, NULL, 18, 24, 1, 585.00, 56.00, '371-01-03', 'Graduated Collector', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1463, NULL, NULL, 20, 53, 1, 1300.00, 1.00, '381-11-02', 'Scale Loupe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1464, NULL, NULL, 20, 53, 1, 450.00, 1.00, '381-12-01', 'Micrometer Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1465, NULL, NULL, 20, 53, 1, 450.00, 1.00, '381-13-01', 'Standard Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1466, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-14-01', 'Taper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1467, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-14-02', 'Stap Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1468, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-14-03', 'Wedge Taper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1469, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-14-04', 'Circular Taper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1470, NULL, NULL, 20, 53, 1, 2500.00, 1.00, '381-15-01', 'Riser Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:36', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1471, NULL, NULL, 20, 53, 1, 910.00, 1.00, '381-16-01', 'Level Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1472, NULL, NULL, 20, 53, 1, 3510.00, 1.00, '381-17-01', 'Depth Microchecker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1473, NULL, NULL, 20, 53, 1, 3500.00, 1.00, '381-18-01', 'Linear Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1474, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-18-02', 'Digital Scale Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1475, NULL, NULL, 20, 53, 1, 4500.00, 1.00, '381-19-01', 'Height Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1476, NULL, NULL, 20, 53, 1, 3200.00, 1.00, '381-20-01', 'Caliper Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1477, NULL, NULL, 20, 53, 1, 3200.00, 1.00, '381-20-02', 'Mu-Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1478, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-21-01', 'Electronic Comparater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1479, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-21-02', 'Electrical Comparator with Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1480, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-21-03', 'Dial Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1481, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-22-01', 'Degree Compass', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1482, NULL, NULL, 20, 53, 1, 1000.00, 1.00, '381-23-01', 'Snap Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1483, NULL, NULL, 20, 53, 1, 80.00, 1.00, '381-24-01', 'Pin Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1484, NULL, NULL, 20, 53, 1, 130.00, 1.00, '381-24-02', 'Pin Gauge Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1485, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-25-01', 'Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1486, NULL, NULL, 20, 53, 1, 1100.00, 1.00, '381-25-02', 'Thread Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1487, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-25-03', 'Plain Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1488, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-26-01', 'Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1489, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-26-02', 'Plain Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1490, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-26-03', 'Setting Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1491, NULL, NULL, 20, 53, 1, 1100.00, 1.00, '381-26-04', 'Thread Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1492, NULL, NULL, 20, 53, 1, 1100.00, 1.00, '381-26-05', 'Screw Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1493, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-27-01', 'Crimp Diameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1494, NULL, NULL, 20, 53, 1, 400.00, 1.00, '381-28-01', 'Thread Measuring Wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1495, NULL, NULL, 20, 53, 1, 400.00, 1.00, '381-28-02', 'Spheriical Anvil Balls', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1496, NULL, NULL, 20, 53, 1, 1750.00, 1.00, '381-29-01', 'Welding Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1497, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-30-01', 'Digimatic Scale Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1498, NULL, NULL, 20, 53, 1, 1000.00, 1.00, '381-31-01', 'Precision Square', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1499, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-32-01', 'Bore Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1500, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-32-02', 'Dial Bore Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1501, NULL, NULL, 20, 53, 1, 200.00, 1.00, '381-33-01', 'Interchangable Rods', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:37', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1502, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-34-01', 'Scale Callibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1503, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-35-01', 'Total Cone Height', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1504, NULL, NULL, 20, 53, 1, 700.00, 1.00, '381-36-01', 'Dial Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1505, NULL, NULL, 20, 53, 1, 900.00, 1.00, '381-36-02', 'Crimp Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1506, NULL, NULL, 20, 53, 1, 1100.00, 1.00, '381-37-01', 'Setting Ring', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1507, NULL, NULL, 17, 27, 14, 2900.00, 7.00, '372-10-03', 'pH-Conductivity meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1508, NULL, NULL, 14, 12, 1, 720.00, 21.00, '307-02-75', 'Thermometer-Glass4', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1509, NULL, NULL, 14, 13, 1, 1950.00, 1.00, '308-01-04', 'Standard Liquid-in-Glass Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1510, NULL, NULL, 11, 8, 1, 230.00, 7.00, '303-01-10', 'Rotary Platform Double-Head Abrader', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1511, NULL, NULL, 10, 6, 1, 1600.00, 14.00, '302-03-28', 'Standard Thickness Foil', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1512, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-01-67', 'High Voltage Differential Probe With Digital Phosphor Oscilloscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1513, NULL, NULL, 14, 12, 1, 340.00, 14.00, '301-01-68', 'Thermocouple Sensor Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1514, NULL, NULL, 9, 4, 1, 320.00, 14.00, '301-01-69', 'Pocket Digital Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1515, NULL, NULL, 11, 8, 1, 470.00, 1.00, '303-01-11', 'Electronic Hanging Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1516, NULL, NULL, 9, 4, 1, 320.00, 14.00, '301-01-70', 'Flow Mesurement System', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1517, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-09-64', 'Q Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1518, NULL, NULL, 9, 4, 10, 650.00, 14.00, '301-09-65', 'Pressure Loop calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1519, NULL, NULL, 18, 24, 1, 1.00, 1.00, '371-06-05', 'Tutwiler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1520, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-12-25', 'Finess', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1521, NULL, NULL, 11, 8, 1, 470.00, 14.00, '303-01-12', 'Standard Rubber Hardness', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1522, NULL, NULL, 16, 23, 2, 1880.00, 3.00, '374-04-33', 'Hygro Log', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1523, NULL, NULL, 14, 13, 1, 720.00, 21.00, '308-01-05', 'Dry Well', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1524, NULL, NULL, 13, 11, 1, 1500.00, 7.00, '305-02-22', 'Differential Pressure Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1525, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-09', 'Check Weigher', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1526, NULL, NULL, 12, 10, 5, 3000.00, 4.00, '306-02-10', 'STATIC Torque Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:38', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1527, NULL, NULL, 14, 12, 1, 1.00, 1.00, '307-08-18', 'Thermocouple Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1528, NULL, NULL, 13, 11, 9, 1200.00, 5.00, '305-07-04', 'Vacuum Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1529, NULL, NULL, 14, 13, 1, 500.00, 14.00, '308-01-06', 'Platinum Resistance Thermometer 4 Wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1530, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-76', 'Universal Biometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1531, NULL, NULL, 14, 12, 1, 720.00, 1.00, '308-03-27', 'Super Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1532, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-03-02', 'Suction Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1533, NULL, NULL, 10, 6, 10, 900.00, 4.00, '302-03-29', 'Crimp Height Digital Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1534, NULL, NULL, 12, 10, 1, 500.00, 14.00, '306-02-11', 'Electronic Torque Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1535, NULL, NULL, 9, 4, 3, 600.00, 1.00, '301-15-43', 'Surface Mount RC Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1536, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-04-03', 'NIBP Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1537, NULL, NULL, 9, 4, 1, 700.00, 1.00, '301-13-26', 'Sonic Tension Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1538, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-02-19', 'Electrical System Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1539, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-02-20', 'Handy Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1540, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-77', 'Refractometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1541, NULL, NULL, 10, 6, 10, 900.00, 56.00, '302-12-26', 'Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1542, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-10', 'Balance 2 Digits', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1543, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-11', 'Balance 4 Digits', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1544, NULL, NULL, 17, 27, 3, 2900.00, 1.00, '372-02-14', 'pHECTDS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1545, NULL, NULL, 17, 26, 1, 2900.00, 1.00, '372-01-06', 'pHECTDS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1546, NULL, NULL, 17, 26, 1, 2300.00, 1.00, '372-01-07', 'pH Conductivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1547, NULL, NULL, 18, 24, 1, 650.00, 2.00, '371-03-07', 'Density Cup Stanless', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1548, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-02-09', 'Digital Depth Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1549, NULL, NULL, 17, 56, 1, 1000.00, 1.00, '372-11-01', 'TDS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1550, NULL, NULL, 9, 4, 4, 400.00, 7.00, '301-02-21', 'ACA LEAKAGE TESTER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1551, NULL, NULL, 10, 6, 1, 1100.00, 14.00, '302-34-05', 'Thread Ring Gauge Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1552, NULL, NULL, 9, 4, 5, 400.00, 56.00, '301-01-71', 'Automotive Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1553, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-13-27', 'Digital Phasphor Oscilloscope with Passive Voltage Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1554, NULL, NULL, 19, 50, 1, 1500.00, 1.00, '312-01-02', 'Platinum Resistance Thermometer Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1555, NULL, NULL, 11, 8, 1, 440.00, 7.00, '303-01-13', 'Stainless Weights', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:39', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1556, NULL, NULL, 19, 49, 1, 1600.00, 7.00, '309-01-17', 'UV Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1557, NULL, NULL, 10, 6, 1, 1100.00, 14.00, '302-34-06', 'Screw Thread Ring Gauge GO', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1558, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-16', 'Humidity And Temperature Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1559, NULL, NULL, 10, 6, 10, 1000.00, 14.00, '302-34-07', 'Analog Mu-Checker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1560, NULL, NULL, 13, 11, 5, 1400.00, 14.00, '305-07-05', 'Penning Vacuum Gauge Control', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1561, NULL, NULL, 22, 57, 5, 300.00, 1.00, '341-05-01', 'Fetal Doppler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1562, NULL, NULL, 22, 57, 3, 2500.00, 4.00, '341-29-01', 'Radiant Warmmer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1563, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-21-08', 'Durometer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1564, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-13-28', 'Time Clock', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1565, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-13-29', 'Advance Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1566, NULL, NULL, 11, 9, 1, 1600.00, 1.00, '304-05-04', 'Portable Force Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1567, NULL, NULL, 9, 4, 1, 1100.00, 1.00, '301-16-05', 'Metrology Well Calibrators', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1568, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-05-13', 'Frequency Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1569, NULL, NULL, 22, 57, 3, 1200.00, 1.00, '341-22-01', 'Digital Clinical Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1570, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-21-03', 'Thermo Pal Infrared Ear Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1571, NULL, NULL, 10, 6, 10, 1200.00, 14.00, '302-21-09', 'Plastic Tailoring Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1572, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-02-06', 'Electrocardiograph', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1573, NULL, NULL, 10, 6, 1, 450.00, 1.00, '302-01-14', 'Cable for WT.Pan', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1574, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-04', '4 Channel Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1575, NULL, NULL, 22, 57, 3, 2000.00, 1.00, '341-20-01', 'Pack Heater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1576, NULL, NULL, 9, 4, 1, 1680.00, 1.00, '301-09-66', 'Digital calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1577, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-14', 'Decade Capacitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1578, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-15', 'TaraOhm', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1579, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-21-10', 'Oil Tester Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1580, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-30', 'Wide Band Power Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1581, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-03-35', 'Analog Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1582, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-03-36', 'Digital Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:40', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1583, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-12-31', 'Working Steel Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1584, NULL, NULL, 9, 4, 1, 500.00, 14.00, '301-13-31', 'Digital AC Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1585, NULL, NULL, 15, 19, 5, 3200.00, 3.00, '353-05-02', 'Tensile Machine', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1586, NULL, NULL, 15, 19, 5, 3200.00, 3.00, '353-05-03', 'Universal Testing Machine', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1587, NULL, NULL, 14, 13, 1, 400.00, 14.00, '307-02-78', 'Standard Temp Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1588, NULL, NULL, 14, 12, 1, 720.00, 240.00, '307-07-03', 'Transmitter with sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1589, NULL, NULL, 13, 11, 1014, 1400.00, 1.00, '305-06-07', 'Documenting Process Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1590, NULL, NULL, 2, 1, 1, 500.00, 1.00, '320-03-03', 'ค่าเปรียบเทียบผลระหว่างห้องปฎิบัติการ Inter-laboratory Comparision', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1591, NULL, NULL, 18, 24, 1, 900.00, 14.00, '371-03-08', 'Chlorine Gas Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1592, NULL, NULL, 9, 4, 1, 700.00, 1.00, '301-18-14', 'Digital Contact Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1593, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-12-03', 'Plastic Beaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1594, NULL, NULL, 9, 4, 6, 650.00, 1.00, '301-10-21', 'Reference Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1595, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-03-30', 'Inside Digimatic Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1596, NULL, NULL, 10, 7, 1, 450.00, 7.00, '310-01-13', 'Square Gauge Block Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1597, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-21-11', 'Rice Grader', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1598, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-04-05', 'Orion Automation Compensation With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1599, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-03-31', 'Scale Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1600, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-27', 'Enersol Set Square', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1601, NULL, NULL, 15, 16, 3, 300.00, 3.00, '350-05-01', 'Air Ticket Fee', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1602, NULL, NULL, 15, 2, 1, 300.00, 3.00, '350-05-02', 'Calibration Fee', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1603, NULL, NULL, 9, 4, 1, 1100.00, 1.00, '301-09-67', 'EC Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1604, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-12-28', 'Plastic Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1605, NULL, NULL, 15, 16, 1, 300.00, 3.00, '352-07-09', 'Digital Graph Recorder with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1606, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-07-04', 'Universal Biometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1607, NULL, NULL, 11, 8, 1, 230.00, 1.00, '303-01-14', 'Thickness Tester Mass Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1608, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-32', 'Pressure Flexi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1609, NULL, NULL, 11, 8, 1, 270.00, 1.00, '303-01-15', 'Tearing Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1610, NULL, NULL, 22, 57, 5, 700.00, 1.00, '341-04-06', 'Mechanical Sphygmomanometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1611, NULL, NULL, 17, 26, 1, 1500.00, 7.00, '372-11-02', 'Multi-Parameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1612, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-01-15', 'Digimatic Caliper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1613, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-03-39', 'Digital Thermo-Hygrometer with Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:41', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1614, NULL, NULL, 13, 11, 5, 470.00, 14.00, '305-06-08', 'บารอมิเตอร์', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1615, NULL, NULL, 9, 4, 5, 550.00, 14.00, '301-07-11', 'นาฬิกาจับเวลา', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1616, NULL, NULL, 14, 12, 5, 900.00, 14.00, '307-04-06', 'เครื่องวัดอุณหภูมิพร้อมสายวัด', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1617, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-12', 'Digital Balance 35 kg', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1618, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-14-08', 'Ultrasonic Calibration Blocks', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1619, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-16', 'Resistance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1620, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-05-14', 'Electrostatic Systems', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1621, NULL, NULL, 18, 24, 1, 1.00, 1.00, '371-09-04', 'Automatic Dispenser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1622, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-20-02', 'Parafin Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1623, NULL, NULL, 9, 4, 2, 400.00, 56.00, '301-02-22', 'ACDC Current Clamp', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1624, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-40', 'Temperature Humidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1625, NULL, NULL, 13, 11, 5, 900.00, 14.00, '305-06-09', 'Sensor Pressure Line 3', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1626, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-25-05', 'Step Gauge Cabon Steel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1627, NULL, NULL, 10, 6, 9, 900.00, 1.00, '302-14-09', 'Calibration Device', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1628, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-02-23', 'Mili-Ohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1629, NULL, NULL, 10, 6, 10, 900.00, 3.00, '302-04-06', 'External Digital Inside Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1630, NULL, NULL, 15, 2, 1, 1020.00, 1.00, '352-06-13', 'Low Temperature Water Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1631, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-02-24', 'Capacitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1632, NULL, NULL, 15, 2, NULL, NULL, 1.00, '350-06-03', 'จ้างสอบเทียบเครื่องมือ', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1633, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-37', 'Stage Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1634, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-29', 'Dino-Lite', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1635, NULL, NULL, 13, 11, 1, 3520.00, 1.00, '305-13-17', 'Temperature Humidity Pressure Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1636, NULL, NULL, 15, 16, 1, 1450.00, 2.00, '352-01-09', 'Shaker Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1637, NULL, NULL, 16, 23, 6, 440.00, 8.00, '374-01-03', 'Thermo Hygrograph Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1638, NULL, NULL, 14, 13, 1, 1500.00, 21.00, '308-03-28', 'Portable Furnance Temperature Calibration', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1639, NULL, NULL, 9, 4, 1, 650.00, 1.00, '301-10-23', 'Soldering IronTester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:42', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1640, NULL, NULL, 13, 11, 1, 1.00, 1.00, '305-13-18', 'Temperature Humidity and Baromatic Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1641, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-21-17', 'Multifunction Measurement', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1642, NULL, NULL, 9, 4, 1, 1100.00, 1.00, '301-09-59', 'Process Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1643, NULL, NULL, 10, 6, 2, 900.00, 4.00, '302-34-02', 'Ring Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1644, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-07-08', 'Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1645, NULL, NULL, 17, 31, 2, 1200.00, 8.00, '372-08-05', 'Hematocrit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1646, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-03-41', 'HumidityTemperature Controller with sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1647, NULL, NULL, 15, 20, 1, 1.00, 1.00, '352-08-10', 'HumidityTemperature Controller with sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1648, NULL, NULL, 11, 8, 1, 230.00, 1.00, '303-02-24', 'Hook Test Fixture For Vords And Loops', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1649, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-06-02', 'Air Permeability Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1650, NULL, NULL, 10, 6, 1, 1.00, 1.00, '302-02-10', 'Grainding', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1651, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-21-18', 'VoltageCurrent Calibration', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1652, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-06-01', 'Selectable Load', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1653, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-13', 'Mass Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1654, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-02-11', 'Digital Head Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1655, NULL, NULL, 14, 13, 1, 1320.00, 1.00, '308-03-29', 'Freezing Point', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1656, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-18-06', 'SpO2 Functional Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1657, NULL, NULL, 20, 53, 1, 500.00, 1.00, '380-01-01', 'ค่าบริการรับ-ส่งเครื่องมือ', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1658, NULL, NULL, 17, 26, 1, 1300.00, 1.00, '372-01-08', 'pHORP ECTDSNaCI Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1659, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-18-07', 'OX-1-CE OXSim', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1660, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-02-25', 'ACDC Current Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1661, NULL, NULL, 15, 16, 1, 1300.00, 3.00, '352-06-25', 'Forma Plasma Thawing Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1662, NULL, NULL, 16, 23, 1, 1050.00, 1.00, '374-05-07', 'HumidityBarometerTemp.', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1663, NULL, NULL, 10, 6, 10, 1500.00, 14.00, '302-02-13', 'Digimatic Holtest', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1664, NULL, NULL, 18, 24, 1, 250.00, 10.00, '371-04-10', 'Funnel P', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1665, NULL, NULL, 16, 23, 1, 470.00, 1.00, '374-05-08', 'Dry Bulb Wet Bulb Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1666, NULL, NULL, 13, 11, 5, 470.00, 40.00, '305-02-12', 'Main Pressure gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1667, NULL, NULL, 15, 16, 1, 1520.00, 1.00, '352-06-14', 'Constant Temperature Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:43', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1668, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-03-06', 'Humidity Temperature Record', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1669, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-34-03', 'Plug Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1670, NULL, NULL, 22, 57, 3, 1200.00, 1.00, '341-29-03', 'Digital Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1671, NULL, NULL, 14, 12, 1, 1200.00, 2.00, '307-02-38', 'Data logger and Analyzer LABQUEST 2', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1672, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-18', 'Light Adaptor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1673, NULL, NULL, 15, 18, 1, 4400.00, 3.00, '353-03-03', 'Cast Iron Surface Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1674, NULL, NULL, 17, 26, 3, 2200.00, 4.00, '372-01-09', 'EC Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1675, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-20-20', 'Thickness Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1676, NULL, NULL, 19, 64, 1, 1500.00, 1.00, '311-01-05', 'Digital Infrared Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1677, NULL, NULL, 18, 24, 1, 500.00, 7.00, '371-04-11', 'Plastic Graduated Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1678, NULL, NULL, 9, 4, 1, NULL, 1.00, '301-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1679, NULL, NULL, 9, 4, 1, 550.00, 7.00, '301-13-33', 'Triple Display Timer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1680, NULL, NULL, 17, 35, 8, 5000.00, 2.00, '373-02-03', 'UV-VIS Spectrophotometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1681, NULL, NULL, 22, 57, 1, 3000.00, 1.00, '341-23-01', 'Flow Meter Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1682, NULL, NULL, 22, 57, 1, 5000.00, 1.00, '341-24-01', 'Gas Flow Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1683, NULL, NULL, 9, 4, 1, 650.00, 1.00, '301-17-09', 'Data logger and Analyzer LABQUEST 2', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1684, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-20-21', 'High Accuracy Digimatic Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1685, NULL, NULL, 9, 4, 1, 650.00, 1.00, '301-10-22', 'Analog Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1686, NULL, NULL, 9, 4, 3, 400.00, 1.00, '301-02-26', 'ACDC mA Current Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1687, NULL, NULL, 14, 13, 1, 950.00, 21.00, '308-06-09', 'Dry Block with sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1688, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-02-27', 'Resistivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1689, NULL, NULL, 9, 4, 2, 400.00, 2.00, '301-01-72', 'Card Hi Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1690, NULL, NULL, 9, 4, 2, 400.00, 2.00, '301-01-73', 'Wrist Strap System Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1691, NULL, NULL, 15, 18, 1, 2200.00, 2.00, '353-03-04', 'Black Granite Surface Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1692, NULL, NULL, 10, 6, 10, 3200.00, 2.00, '302-28-02', 'Check Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1693, NULL, NULL, 18, 24, 1, 585.00, 1.00, '371-05-05', 'Bulb pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1694, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-12-30', 'Grind Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1695, NULL, NULL, 17, 31, 1, 1.00, 7.00, '372-08-06', 'Refrigerated Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:44', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1696, NULL, NULL, 17, 34, 1, 1600.00, 4.00, '373-03-07', 'Preparative Ultracentrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1697, NULL, NULL, 15, 19, 5, 3200.00, 3.00, '353-05-04', 'Material Testing Machine', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1698, NULL, NULL, 14, 13, 1, 700.00, 21.00, '308-05-12', 'Thermocouple Sensor Type S', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1699, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-03-33', 'Point Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1700, NULL, NULL, 10, 6, 1, 1.00, 1.00, '302-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1701, NULL, NULL, 11, 8, 1, 10.00, 1.00, '303-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1702, NULL, NULL, 11, 9, 1, 1.00, 1.00, '304-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1703, NULL, NULL, 13, 11, 1, 1.00, 1.00, '305-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1704, NULL, NULL, 12, 10, 1, 1.00, 1.00, '306-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1705, NULL, NULL, 14, 12, 1, 1.00, 1.00, '307-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1706, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1707, NULL, NULL, 19, 49, 1, 1.00, 1.00, '309-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1708, NULL, NULL, 10, 7, 1, 1.00, 1.00, '310-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1709, NULL, NULL, 19, 64, 1, 1.00, 1.00, '311-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1710, NULL, NULL, 19, 50, 1, 1.00, 1.00, '312-00-01', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1711, NULL, NULL, 15, 15, 1, 920.00, 1.00, '351-09-10', 'Digital Dry Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1712, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-03-01', 'Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1713, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-03-02', 'Rotator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1714, NULL, NULL, 17, 33, 1, 800.00, 7.00, '373-03-08', 'Handy Polaris', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1715, NULL, NULL, 11, 9, 1, 1600.00, 7.00, '304-03-04', 'Densimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1716, NULL, NULL, 10, 6, 10, 900.00, 2.00, '302-03-38', 'Digimatic Tube Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1717, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-02-28', 'Clamp On Earth Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1718, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-32', 'Square Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1719, NULL, NULL, 16, 23, 5, 1440.00, 4.00, '374-03-42', 'Humidity Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1720, NULL, NULL, 19, 64, 1420, 1.00, 1.00, '311-01-06', 'Simulater Infared', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1721, NULL, NULL, 10, 6, 1, 3200.00, 7.00, '302-07-04', 'Measuring Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1722, NULL, NULL, 14, 12, 1, 720.00, 2.00, '307-02-79', 'Light Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1723, NULL, NULL, 14, 13, 1, 300.00, 1.00, '308-04-15', 'Thermocouple Type S', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1724, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-04-07', 'Non-Invasive Sphygmomanometer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1725, NULL, NULL, 16, 23, 1, 1440.00, 3.00, '374-04-34', 'Thermo Hygrometer Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:45', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1726, NULL, NULL, 13, 11, 5, 1500.00, 1.00, '305-13-19', 'Thermo Hygrometer Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1727, NULL, NULL, 17, 33, 1, 800.00, 7.00, '372-09-08', 'Colorimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1728, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-26-01', 'Spring Blood Collection Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1729, NULL, NULL, 22, 57, 1, 5000.00, 1.00, '341-23-02', 'Gas Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1730, NULL, NULL, 13, 11, 1, 12000.00, 1.00, '305-11-03', 'Pressure Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1731, NULL, NULL, 15, 20, 1, 1.00, 1.00, '352-08-11', 'Temperature Humidity Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1732, NULL, NULL, 22, 57, 1, 4500.00, 1.00, '341-14-04', 'Electrosurgery Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1733, NULL, NULL, 2, 1, 1, 1.00, 1.00, '350-06-04', 'ส่งเครื่องมือสอบเทียบตามใบเสนอราคาเลขที่ P13110300', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1734, NULL, NULL, 2, 1, 1, 1.00, 1.00, '350-06-05', 'สอบเทียบเครื่องมือ ใบเสนอราคา S13050071', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1735, NULL, NULL, 2, 1, 1, 1.00, 1.00, '350-06-06', 'สอบเทียบเครื่องมือ ใบเสนอราคา P13050395', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1736, NULL, NULL, 17, 60, 1, 2700.00, 1.00, '373-01-05', 'Conductivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1737, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-14', 'Dilumat Dilutor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1738, NULL, NULL, 2, 1, 1, NULL, 1.00, '320-01-06', 'ค่าบริการรับ-ส่งเครื่องมือ ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1739, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-25-06', 'Digital Level Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1740, NULL, NULL, 17, 36, 3, 2900.00, 2.00, '373-01-02', 'pH Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1741, NULL, NULL, 22, 57, 10, 3500.00, 1.00, '341-11-05', 'Electrical Safety Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1742, NULL, NULL, 16, 23, 5, 1500.00, 4.00, '374-08-11', 'HumidityTemp. Data Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1743, NULL, NULL, 10, 6, 10, 1100.00, 2.00, '302-01-16', 'Track Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1744, NULL, NULL, 9, 4, 2, 400.00, 2.00, '301-01-74', 'Weldscope', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1745, NULL, NULL, 13, 11, 10, 1400.00, 4.00, '305-04-52', 'Precision Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1746, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-09-16', 'Thickness Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1747, NULL, NULL, 11, 9, 1, 1000.00, 7.00, '304-02-09', 'ELECTRONIC CRANE SCALE', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1748, NULL, NULL, 17, 33, 1, 950.00, 1.00, '372-09-09', 'Do Transmitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1749, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-02-29', 'ACDC FORK CURRENT TESTER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1750, NULL, NULL, 18, 24, 1, 540.00, 1.00, '371-04-12', 'Measuring Pipette P', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1751, NULL, NULL, 22, 57, 1, 5000.00, 1.00, '341-27-01', 'Ventilator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1752, NULL, NULL, 22, 57, 10, 2000.00, 1.00, '341-07-01', 'NIBP Monitor Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1753, NULL, NULL, 22, 57, 10, 2000.00, 1.00, '341-01-08', 'MaternalFetal Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:46', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1754, NULL, NULL, 14, 13, 1, 300.00, 8.00, '308-04-16', 'PRT sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1755, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-09-18', 'Ladder Steel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1756, NULL, NULL, 9, 4, 5, 1500.00, 40.00, '301-13-34', 'High Frequency Spark Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1757, NULL, NULL, 9, 4, 6, 650.00, 4.00, '301-10-24', 'Temperature Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1758, NULL, NULL, 14, 12, 1, 450.00, 14.00, '308-04-17', 'Thermocouple Type N', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1759, NULL, NULL, 9, 4, 1, 450.00, 14.00, '301-10-25', 'Digital Meter Stunner', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1760, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-04-11', 'Dyeing Machin Rapid', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1761, NULL, NULL, 10, 6, 10, 900.00, 4.00, '302-03-39', 'Digital Disk Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1762, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-07-10', 'Dial Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1763, NULL, NULL, 19, 49, 5, 1600.00, 14.00, '309-01-55', 'DIGITAL RADIOMETERPHOTOMETER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1764, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-15', 'Precision Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1765, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-21-19', 'DC Shunt', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1766, NULL, NULL, 10, 6, 10, 900.00, 4.00, '302-03-40', 'Digimatic Crimp Height Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1767, NULL, NULL, 9, 4, 1, 550.00, 7.00, '301-07-08', 'Timer-Triple Display', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1768, NULL, NULL, 11, 9, 1, 1000.00, 7.00, '304-01-04', 'Crane Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1769, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-03-05', 'RefrigeratorHeating Circulators Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1770, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-06-15', 'Liquid Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1771, NULL, NULL, 14, 12, 1, 700.00, 3.00, '307-08-19', 'Cold Junction Bottle', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1772, NULL, NULL, 9, 4, 5, 450.00, 14.00, '301-07-09', 'Energy Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1773, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-21-20', 'DC Standard 1.018V and 10V', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1774, NULL, NULL, 15, 2, 1, 450.00, 14.00, '373-01-06', 'Hydrocollator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1775, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-09-99', 'Handy Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1776, NULL, NULL, 10, 6, 1, 4500.00, 4.00, '302-35-01', 'Height Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1777, NULL, NULL, 10, 6, 40, 4300.00, 4.00, '302-16-02', 'Digital Gauge Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1778, NULL, NULL, 10, 6, 10, 400.00, 14.00, '302-16-03', 'Taper Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1779, NULL, NULL, 13, 11, 1, 470.00, 7.00, '305-02-13', 'Pressure Gauge with Diaphragm Seal', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1780, NULL, NULL, 17, 29, 1, 1000.00, 7.00, '372-04-07', 'Digital Salt Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1781, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-03-43', 'Multiparameter Humidity', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1782, NULL, NULL, 18, 24, 1, 750.00, 1.00, '371-06-06', 'Peristaltic Pumps', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1783, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-21-21', 'Withstand Voltage Insulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1784, NULL, NULL, 22, 57, 1, 500.00, 1.00, '341-25-01', 'Oxygen Flowmeter Regulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:47', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1785, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-16', 'Launder-O-Metter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1786, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-20-08', 'Resistivity Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1787, NULL, NULL, 11, 9, 10, 1600.00, 2.00, '302-04-09', 'Analytical Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1788, NULL, NULL, 12, 10, 5, 1100.00, 4.00, '306-02-12', 'Digital Screwdriver', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1789, NULL, NULL, 10, 6, 1, 130.00, 7.00, '302-31-03', 'Diameter Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1790, NULL, NULL, 14, 13, 7, 440.00, 14.00, '308-04-18', 'Thermocouple Sensor Type R', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1791, NULL, NULL, 10, 6, 1, 440.00, 4.00, '302-31-04', '3 WIRE STANDARD', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1792, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-04-19', 'Hot Plates with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1793, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-20-09', 'Multi Function Lux Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1794, NULL, NULL, 22, 57, 3, 1000.00, 1.00, '341-29-04', 'Clever TD-1261D', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1795, NULL, NULL, 9, 4, 5, 450.00, 14.00, '301-20-09', 'Battery HiTester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1796, NULL, NULL, 15, 16, 1, 1100.00, 1.00, '352-01-12', 'Incubator Shaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1797, NULL, NULL, 10, 6, 10, 900.00, 48.00, '302-12-33', 'Aluminium Ruler Level', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1798, NULL, NULL, 15, 14, 1, 1000.00, 7.00, '352-08-12', 'IR Ear Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1799, NULL, NULL, 17, 29, 1, 1500.00, 7.00, '372-07-07', 'Salt Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1800, NULL, NULL, 17, 26, 3, 6200.00, 4.00, '372-01-10', 'Conductivity Meter ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1801, NULL, NULL, 13, 11, 11, 1200.00, 4.00, '305-04-53', 'เครื่องเจือจางตัวอย่างด้วยมือ ยี่ห้อ ASHCROFT รหัส คพ.4130-009-5004-12551', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1802, NULL, NULL, 16, 23, 1, 400.00, 1.00, '374-03-44', 'Temperature Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1803, NULL, NULL, 13, 11, 5, 470.00, 1.00, '305-04-54', 'Moto Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1804, NULL, NULL, 15, 16, 1, 1200.00, 111.00, '352-05-02', 'Masterclave', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1805, NULL, NULL, 14, 12, 1, 450.00, 14.00, '307-08-20', 'เครื่องวัดอุณหภูมิพร้อมสายวัดชนิดเค', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1806, NULL, NULL, 9, 4, 1, 450.00, 12.00, '301-20-10', 'DC Resistance Standard', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1807, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-08-12', 'Power Meter With Clamp', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1808, NULL, NULL, 22, 57, 10, 2000.00, 1.00, '341-28-01', 'Phototherapy Radiometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1809, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-01-10', 'pHECTDS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1810, NULL, NULL, 9, 4, 5, 1.00, 14.00, '301-08-13', 'Standard Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1811, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-02-31', 'Plug Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1812, NULL, NULL, 16, 23, 1, 450.00, 7.00, '374-04-45', 'Data logger HumidityThermo Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1813, NULL, NULL, 10, 6, 10, 900.00, 14.00, '302-03-41', 'Cap Height Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:48', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1814, NULL, NULL, 10, 6, 10, 900.00, 5.00, '302-04-08', 'Digit Inside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1815, NULL, NULL, 10, 6, 10, 2000.00, 5.00, '302-01-17', 'Vernier Depth Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1816, NULL, NULL, 2, 1, 1, 300.00, 1.00, '399-01-01', 'ค่าบริการรับ-ส่งเครื่องมือ 300 บาท', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1817, NULL, NULL, 2, 1, 1, 500.00, 1.00, '399-01-02', 'ค่าบริการรับ-ส่งเครื่องมือ 500 บาท', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1818, NULL, NULL, 2, 1, 1, 1000.00, 1.00, '399-02-01', 'ค่าบริการขนส่งเครื่องมือไป-กลับ ผ่านบริษัทขนส่ง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1819, NULL, NULL, 2, 1, 1, 1000.00, 1.00, '399-02-02', 'ค่าบริการขนส่งเครื่องมือ ผ่านบริษัทขนส่ง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1820, NULL, NULL, 14, 12, 5, 800.00, 14.00, '307-01-11', 'Thermocouple Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1821, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-03-06', 'Pharmaceutical Refrigerator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1822, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-13-35', 'DC High Voltage', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1823, NULL, NULL, 12, 10, 5, 3000.00, 5.00, '306-03-10', 'Torque Calibrator Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1824, NULL, NULL, 9, 4, 5, 540.00, 1.00, '301-13-36', 'Multi-Function Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1825, NULL, NULL, 9, 4, 5, 1680.00, 3.00, '301-21-22', 'Ampifier', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1826, NULL, NULL, 13, 11, 10, 470.00, 14.00, '305-04-55', 'Digital Vacuum Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1827, NULL, NULL, 22, 57, 10, 3000.00, 1.00, '341-23-03', 'Primary Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1828, NULL, NULL, 14, 12, 1, 950.00, 7.00, '307-01-12', 'HumidityBarometerTemp.', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1829, NULL, NULL, 16, 23, 1, 1440.00, 5.00, '374-07-08', 'Environment Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1830, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-17-10', 'Black Stack Thermometer SPRT Module PRT Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1831, NULL, NULL, 10, 6, 1, 450.00, 1.00, '302-19-04', 'Three Wire Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1832, NULL, NULL, 2, 1, 1, 1.00, 1.00, '399-01-03', 'ส่วนลดคูปอง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1833, NULL, NULL, 9, 4, 1, 400.00, 12.00, '301-17-11', 'Prevectron 2 Tester-H.V', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1834, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-05-15', 'Universal Frequency Counter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1835, NULL, NULL, 13, 11, 10, 12000.00, 1.00, '305-11-04', 'Air Dead Weight Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1836, NULL, NULL, 16, 23, 1, 750.00, 1.00, '374-07-09', 'Humidity-Temperature Chart Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1837, NULL, NULL, 22, 57, 2, 2000.00, 1.00, '341-18-08', 'Pulse Oximeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1838, NULL, NULL, 9, 4, 1, 520.00, 1.00, '301-05-16', 'MAGNETIC METER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1839, NULL, NULL, 15, 2, 1, 1.00, 1.00, '350-02-02', 'ค่าบริการสอบเทียบเครื่องมือบกพร่อง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1840, NULL, NULL, 9, 4, 5, 450.00, 14.00, '301-05-17', 'Digital multi function tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1841, NULL, NULL, 9, 4, 5, 1000.00, 1.00, '301-05-18', 'ACDC Withstand Voltage Insulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1842, NULL, NULL, 22, 57, 10, 2500.00, 1.00, '341-23-04', 'Analog Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:49', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1843, NULL, NULL, 14, 13, 1, 300.00, 1.00, '308-04-20', 'Platinum Resistance Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1844, NULL, NULL, 22, 57, 5, 1500.00, 1.00, '341-23-05', 'Patient Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1845, NULL, NULL, 12, 10, 5, 3000.00, 10.00, '306-03-11', 'Digital Torque Wrench Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1846, NULL, NULL, 9, 4, 5, 700.00, 12.00, '301-05-19', 'Multifunction Process Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1847, NULL, NULL, 2, 1, 1, 1.00, 1.00, '399-03-01', 'รายละเอียดตามใบสั่งงจ้าง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1848, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-13-37', 'Voltage Divider', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1849, NULL, NULL, 22, 57, 1, 2000.00, 10.00, '341-07-09', 'Digital Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1850, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-05-08', 'Multi-Parameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1851, NULL, NULL, 17, 34, 5, 5000.00, 1.00, '373-03-09', 'Hematocrit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1852, NULL, NULL, 17, 36, 3, 2900.00, 1.00, '373-01-03', 'Multi-Parameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1853, NULL, NULL, 9, 4, 1, 330.00, 7.00, '301-09-68', 'Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1854, NULL, NULL, 14, 13, 1, 720.00, 12.00, '308-04-21', 'Data Acquisition Indicator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1855, NULL, NULL, 22, 57, 1, 2500.00, 10.00, '341-01-10', 'Gas Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1856, NULL, NULL, 17, 29, 1, 600.00, 1.00, '372-07-08', 'Automatic Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1857, NULL, NULL, 14, 13, 1, 420.00, 3.00, '308-03-30', 'GLOW WIRE TEST', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1858, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-21-23', 'Digital Ammeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1859, NULL, NULL, 13, 11, 6, 470.00, 1.00, '305-04-56', 'Vacuum Leak Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1860, NULL, NULL, 9, 4, 5, 750.00, 14.00, '301-21-24', 'Digital Low Resistance Ohmmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1861, NULL, NULL, 15, 16, 9, 1200.00, 1.00, '352-08-15', 'High Temperature Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1862, NULL, NULL, 17, 26, 1, 1500.00, 14.00, '372-01-11', 'Portable Conductivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1863, NULL, NULL, 16, 23, 1, 750.00, 14.00, '374-07-10', 'Resistance Temperature Detector 3 Wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1864, NULL, NULL, 11, 8, 1, 600.00, 2.00, '303-01-16', 'Weight Set For Hardness Calibration', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1865, NULL, NULL, 11, 9, 10, 1600.00, 2.00, '304-02-10', 'Analytical Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1866, NULL, NULL, 22, 57, 300, 1.00, 1.00, '341-01-11', 'Fetal Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1867, NULL, NULL, 9, 4, 1, 650.00, 6.00, '301-21-25', 'Standard Capacitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1868, NULL, NULL, 18, 24, 1, 450.00, 12.00, '371-06-07', 'Stopper Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:50', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1869, NULL, NULL, 22, 57, 1, 5000.00, 14.00, '341-01-12', 'Oxygen Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1870, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-80', 'TDS Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1871, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-02-32', 'Digital Battery Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1872, NULL, NULL, 13, 11, 5, 470.00, 14.00, '305-04-57', 'Depth Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1873, NULL, NULL, 11, 8, 5, 400.00, 12.00, '303-01-17', 'Linear Abraser Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1874, NULL, NULL, 22, 57, 1, 2000.00, 14.00, '341-28-02', 'OLYMPIC BILI-METER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1875, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-50-07', 'Pocket Digital Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1876, NULL, NULL, 12, 10, 10, 3000.00, 14.00, '306-03-12', 'Torque Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1877, NULL, NULL, 22, 57, 1, 2000.00, 8.00, '341-07-10', 'Digital Pressure Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1878, NULL, NULL, 22, 57, 1, 2000.00, 7.00, '341-28-03', 'LED Phototherapy Radiometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1879, NULL, NULL, 16, 23, 1, 440.00, 2.00, '374-04-46', 'Digital Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1880, NULL, NULL, 9, 4, 1, 400.00, 40.00, '301-01-75', 'Wireless Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1881, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-76', 'Auto Titrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1882, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-01-77', 'Wireless AC Voltage', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1883, NULL, NULL, 9, 4, 1, 400.00, 7.00, '301-01-78', 'Wireless iFlex', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1884, NULL, NULL, 17, 26, 1, 6200.00, 1.00, '372-10-04', 'Digital Resistivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1885, NULL, NULL, 14, 13, 1, 1600.00, 1.00, '308-02-02', 'Thermistor Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1886, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-03-31', 'Thermo Recorder with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1887, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-03-42', 'Digital Point Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1888, NULL, NULL, 15, 17, 1, 1600.00, 7.00, '353-01-16', 'Moisture Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1889, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-79', 'AC Volt Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1890, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-80', 'Hi Pot', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1891, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-81', 'AC Watt Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1892, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-01-82', 'AC AMP Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1893, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-03-32', 'Data Logger with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1894, NULL, NULL, 12, 10, 5, 1000.00, 1.00, '306-02-13', 'Digital Torque Driver', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1895, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-01-83', 'CurrentVoltage Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1896, NULL, NULL, 9, 4, 1, 600.00, 7.00, '301-13-38', 'Automatic InsulationWithstanding Hitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1897, NULL, NULL, 14, 12, 1, 500.00, 1.00, '999-99-99', 'Test Elec ยกเลิก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1898, NULL, NULL, 14, 13, 1, 820.00, 25.00, '308-05-13', 'Thermocouple Sensor Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:51', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1899, NULL, NULL, 15, 14, 1, 700.00, 10.00, '341-26-02', 'Blood Collection Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1900, NULL, NULL, 14, 12, 1, 300.00, 48.00, '307-02-81', 'Thermal Profile With sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1901, NULL, NULL, 13, 11, 1, 1.00, 1.00, '305-04-58', 'Pressure Datalogger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1902, NULL, NULL, 9, 4, 1, 650.00, 40.00, '301-10-26', 'Portable Multi Parameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1903, NULL, NULL, 9, 4, 5, 400.00, 12.00, '301-20-11', 'Battery Charger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1904, NULL, NULL, 9, 4, 5, 330.00, 40.00, '301-09-69', 'Autmatic Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1905, NULL, NULL, 9, 4, 1, 1100.00, 40.00, '301-01-84', 'Sicherheitstester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1906, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-05-03', 'Steam Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1907, NULL, NULL, 17, 27, 1, 2900.00, 48.00, '372-02-15', 'เครื่องวัดคุณภาพน้ำแบบหลายตัวแปร', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1908, NULL, NULL, 10, 6, 10, 900.00, 40.00, '302-04-10', 'Blade Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1909, NULL, NULL, 13, 11, 11, 1200.00, 40.00, '305-02-14', 'Differential Pressure Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1910, NULL, NULL, 2, 1, 1, 20000.00, 8.00, '330-01-02', 'ค่าบริการ Internal Audit ตามหัวข้อของ ISOIEC 170252005', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1911, NULL, NULL, 9, 4, 2, 400.00, 40.00, '301-01-85', 'Paperless Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1912, NULL, NULL, 10, 6, 10, 900.00, 1.00, '302-04-11', 'Digit Outside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1913, NULL, NULL, 12, 10, 5, 1100.00, 4.00, '306-02-14', 'Torque Screwdriver', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1914, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-49', 'Universal Biometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1915, NULL, NULL, 13, 11, 5, 1500.00, 7.00, '305-02-16', 'Weather Forecast Station', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1916, NULL, NULL, 9, 4, 1, 760.00, 40.00, '301-08-14', 'Temperature Humidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1917, NULL, NULL, 10, 6, 10, 900.00, 7.00, '302-16-05', 'Digital Indicator Withstand', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1918, NULL, NULL, 16, 23, 1, 440.00, 1.00, '374-03-45', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1919, NULL, NULL, 17, 31, 1, 1200.00, 40.00, '373-03-10', 'Multi-Task Genie', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1920, NULL, NULL, 22, 57, 1, 400.00, 7.00, '341-24-02', 'Flow Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1921, NULL, NULL, 9, 4, 6, 600.00, 40.00, '301-01-86', 'Digital Megohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1922, NULL, NULL, 22, 57, 3, 500.00, 1.00, '341-21-04', 'Clinical Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1923, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-87', 'HI GHMEGOHM RESISTORS STANDARD', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1924, NULL, NULL, 13, 11, 5, 1400.00, 7.00, '305-02-17', 'Environment Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1925, NULL, NULL, 9, 4, 1, 600.00, 40.00, '301-07-12', 'Stop Watch', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1926, NULL, NULL, 14, 12, 1, 720.00, 14.00, '308-05-14', 'Temp Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:52', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1927, NULL, NULL, 14, 13, 1, 300.00, 12.00, '308-05-15', 'Temperature Indicator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1928, NULL, NULL, 14, 13, 1, 720.00, 120.00, '308-03-33', 'Temperature Data Logger with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1929, NULL, NULL, 15, 21, 5, 500.00, 1.00, '352-11-01', 'Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1930, NULL, NULL, 15, 21, 5, 500.00, 1.00, '352-11-02', 'Vacuum Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1931, NULL, NULL, 15, 21, 5, 500.00, 1.00, '352-11-03', 'Vacuum Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1932, NULL, NULL, 10, 6, 10, 900.00, 10.00, '302-16-06', 'Electronic Digital Vernier Calipers For measuring', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1933, NULL, NULL, 22, 57, 1, 2000.00, 14.00, '341-24-03', 'Mechanical Clinical Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1934, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-01-10', 'Refrigerator Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1935, NULL, NULL, 11, 8, 1, 440.00, 7.00, '304-05-05', 'Dead Weight Calibration', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1936, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-07-11', 'TemperatureHumidity Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1937, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-17', 'Tissue Processor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1938, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-30-01', 'Plasma Thawing Warming', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1939, NULL, NULL, 11, 9, 10, 1700.00, 40.00, '304-06-06', 'Durometer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1940, NULL, NULL, 15, 16, 9, 1200.00, 1.00, '352-04-12', 'Speed Evaporator Centrivap', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1941, NULL, NULL, 15, 16, 9, 1450.00, 1.00, '352-10-05', 'Deep Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1942, NULL, NULL, 10, 6, 10, 1800.00, 7.00, '302-16-07', 'Micro Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1943, NULL, NULL, 14, 13, 1, 720.00, 112.00, '308-03-34', 'Temperature Controller With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1944, NULL, NULL, 18, 24, 1, 450.00, 10.00, '371-06-08', 'Intelligent Dispensing Peristaltic Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1945, NULL, NULL, 14, 12, 1, 470.00, 12.00, '307-02-82', 'Controller With TC Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1946, NULL, NULL, 17, 26, 3, 6300.00, 7.00, '372-01-12', 'Conductivity TDS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1947, NULL, NULL, 15, 16, 9, 1350.00, 1.00, '352-01-11', 'Incubator Room', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1948, NULL, NULL, 13, 11, 1, 1400.00, 14.00, '305-02-18', 'Reference Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1949, NULL, NULL, 13, 11, 5, 470.00, 7.00, '305-02-19', 'Field Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1950, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-01-07', 'เทอร์โมมิเตอร์แบบแท่งแก้ว รหัส ID.171-43-01', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1951, NULL, NULL, 18, 25, 1, 700.00, 1.00, '371-08-16', 'Piston Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:53', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1952, NULL, NULL, 15, 16, 9, 2150.00, 1.00, '352-06-20', 'Micro Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1953, NULL, NULL, 17, 34, 1, 5000.00, 7.00, '373-03-11', 'Hematocrit Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1954, NULL, NULL, 11, 8, 1, 470.00, 5.00, '303-01-18', 'Calibration Block MT', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1955, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-05-83', 'Temperature Switches', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1956, NULL, NULL, 9, 4, 5, 470.00, 12.00, '301-04-10', 'Digital Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1957, NULL, NULL, 22, 57, 1000, 1000.00, 40.00, '341-30-02', 'AED Defibrillator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1958, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-21-27', 'Digital RCDELCB Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1959, NULL, NULL, 10, 7, 1, 120.00, 10.00, '310-16-08', 'Cable Torque Arm With Pan Torque Arm 5.4 lbs', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1960, NULL, NULL, 10, 7, 1, 120.00, 10.00, '310-15-09', 'Cable Torque Arm With Pan Torque Arm 120 lbs', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1961, NULL, NULL, 10, 7, 1, 120.00, 10.00, '310-16-10', 'Cable Torque Arm With Pan Torque Arm 300 lbs', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1962, NULL, NULL, 10, 7, 1, 120.00, 10.00, '310-16-11', 'Cable Torque Arm With Pan Torque Arm 500 lbs', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1963, NULL, NULL, 22, 57, 1, 2000.00, 7.00, '341-23-06', 'Primary Standard Flow Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1964, NULL, NULL, 19, 49, 1, 1.00, 1.00, '301-01-88', 'Digital Sound Level Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1965, NULL, NULL, 9, 5, 1, 1.00, 1.00, '301-01-89', 'Sound Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1966, NULL, NULL, 10, 6, 10, 1200.00, 40.00, '302-13-12', 'Sounding Tape', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1967, NULL, NULL, 11, 8, 1, 100.00, 1.00, '303-01-19', 'ค่าบริการทำความสะอาดตุ้มน้ำหนัก', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1968, NULL, NULL, 14, 12, 1, 300.00, 14.00, '307-05-84', 'Metrology Well With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1969, NULL, NULL, 9, 4, 5, 1100.00, 12.00, '301-01-90', 'Thermometer Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1970, NULL, NULL, 22, 57, 1, 500.00, 1.00, '341-25-02', 'Suction Regulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1971, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-31-01', 'Doptone', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1972, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-01', 'Suction Mobile', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1973, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-04-08', 'BP-Digital', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1974, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-19-02', 'Vital Signs Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1975, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-07-11', 'BP-Digital', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1976, NULL, NULL, 15, 22, 1, 500.00, 1.00, '341-07-12', 'Vacumm Exhalation', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1977, NULL, NULL, 9, 4, 1, 400.00, 10.00, '301-01-91', 'Megohm Resistance Box', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1978, NULL, NULL, 14, 12, 1, 1.00, 11.00, '307-01-13', 'เทอร์โมมิเตอร์แบบแท่งแก้ว', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1979, NULL, NULL, 17, 26, 1, 1.00, 1.00, '372-01-13', 'เครื่องวัดค่าการนำไฟฟ้า', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1980, NULL, NULL, 22, 57, 1, 2000.00, 14.00, '341-07-13', 'Double LED Phototherapy Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1981, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-83', 'Thermometer Digital', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1982, NULL, NULL, 15, 2, 1, 1.00, 1.00, '350-02-03', 'On-site Service Charge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1983, NULL, NULL, 16, 23, 1, 1440.00, 336.00, '374-03-46', 'PosiTector', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1984, NULL, NULL, 22, 57, 1, 1400.00, 1.00, '341-28-04', 'Double Fluorescent Phototherapy Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:54', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1985, NULL, NULL, 14, 13, 1, 450.00, 14.00, '308-01-08', 'MIG Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1986, NULL, NULL, 10, 6, 1, 900.00, 15.00, '302-33-10', 'Master Ring', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1987, NULL, NULL, 2, 1, 1, 5200.00, 14.00, '399-01-05', 'Anemometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1988, NULL, NULL, 15, 16, 1, 820.00, 1.00, '352-10-06', 'COD Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1989, NULL, NULL, 13, 11, 5, 1400.00, 6.00, '305-02-20', 'Remote Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1990, NULL, NULL, 14, 13, 1, 300.00, 12.00, '308-01-09', 'Data AcquisitionSwitch Unit with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1991, NULL, NULL, 10, 6, 10, 1300.00, 48.00, '302-15-05', 'Graticules E17', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1992, NULL, NULL, 15, 22, 1, 1400.00, 1.00, '341-28-05', 'Double Surface Phototherapy Unit for Jaundice Babies', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1993, NULL, NULL, 15, 22, 1, 2000.00, 1.00, '341-16-02', 'Infant Radiant Warmer with Resuscitate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1994, NULL, NULL, 15, 16, 9, 1200.00, 1.00, '032-01-13', 'Anaerobic Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1995, NULL, NULL, 9, 4, 1, 700.00, 7.00, '301-01-92', 'Temperature Source', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1996, NULL, NULL, 16, 23, 1, 1440.00, 2.00, '374-03-47', 'Alarm-Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1997, NULL, NULL, 15, 16, 5, 1300.00, 4.00, '352-06-21', 'Rotary Evaporator - Water Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1998, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-04-10', 'Mechanical Temperature Regulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (1999, NULL, NULL, 15, 16, 1, 820.00, 1.00, '352-09-07', 'Dry Block Heater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2000, NULL, NULL, 13, 11, 1, 1.00, 1.00, '305-15-20', 'Barometric PressureHumidity and Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2001, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-05-09', 'Barometric PressureHumidityTemperature Datalogger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2002, NULL, NULL, 13, 11, 11, 1400.00, 10.00, '305-15-21', 'Modular Pressure Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2003, NULL, NULL, 13, 11, 1, 500.00, 1.00, '305-02-21', 'Tire Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2004, NULL, NULL, 9, 4, 1, 1500.00, 7.00, '301-01-93', 'Medical ScopeMeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2005, NULL, NULL, 14, 13, 1, 2150.00, 1.00, '308-01-10', 'Temperture Indicator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2006, NULL, NULL, 16, 23, 1, 1440.00, 120.00, '374-04-35', 'Wireless Pressure Humidity Temperature Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2007, NULL, NULL, 13, 11, 5, 1500.00, 120.00, '305-13-20', 'Wireless Pressure Humidity Temperature Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2008, NULL, NULL, 23, 58, 1, 1.00, 1.00, '321-01-01', 'การสอบเทียบเครื่องวัดอุณภูมิ', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2009, NULL, NULL, 15, 16, 1, 820.00, 1.00, '352-09-08', 'Thermoreactor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2010, NULL, NULL, 13, 11, 1, 1400.00, 14.00, '305-13-21', 'Pressure Transducer With Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2011, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-25-03', 'Oxygen Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2012, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-25-04', 'Vacuum Regulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2013, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-25-05', 'Automation Blood Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:55', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2014, NULL, NULL, 15, 16, 1, 850.00, 1.00, '352-07-12', 'Conductivity Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2015, NULL, NULL, 18, 24, 1, 450.00, 12.00, '307-08-21', 'Auto Titrette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2016, NULL, NULL, 9, 4, 1, 3680.00, 12.00, '301-01-94', 'Smart Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2017, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-25-06', 'Respirator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2018, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-31-02', 'Infant Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2019, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-31-03', 'Parafin Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2020, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-32-02', 'Transport Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2021, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-04-13', 'Large Capacity Multipurpose Drying Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2022, NULL, NULL, 22, 57, 1, 1400.00, 30.00, '341-32-03', 'Digital Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2023, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-08-01', 'Refrigerated Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2024, NULL, NULL, 13, 11, 6, 1200.00, 48.00, '305-09-09', 'Micromanometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2025, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-08-16', 'Centrifuge Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2026, NULL, NULL, 15, 16, 1, 820.00, 1.00, '352-09-09', 'Digital Dry Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2027, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-08-02', 'Orbital Shaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2028, NULL, NULL, 14, 13, 1, 720.00, 21.00, '308-01-11', 'Digital Thermo-Hygrometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2029, NULL, NULL, 14, 13, 7, 720.00, 21.00, '308-01-12', 'Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2030, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-01-95', 'Strobo Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2031, NULL, NULL, 2, 1, 1, 300.00, 1.00, '399-02-03', 'ค่าบริการอื่นๆ', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2032, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-08-17', 'Temperature Test System', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2033, NULL, NULL, 18, 25, 1, 700.00, 0.30, '371-07-02', 'Auto Titrette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2034, NULL, NULL, 9, 4, 1, 400.00, 1.00, '301-01-96', 'Grounding Resistance Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2035, NULL, NULL, 16, 23, 1, 440.00, 14.00, '374-06-09', 'Digital Max-Min Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2036, NULL, NULL, 16, 23, 1, 1460.00, 14.00, '374-04-40', 'Digital Thermo-Hygrometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2037, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-04-41', 'Wireless Temperature and Humidity Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2038, NULL, NULL, 14, 13, 1, 1900.00, 1.00, '308-06-10', 'Micro Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2039, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-04-01', 'Microcentrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2040, NULL, NULL, 15, 16, 1, 1450.00, 1.00, '352-02-03', 'Muffle Furnace', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:56', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2041, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-01-97', 'DielectricInsulation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2042, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-01-99', 'High Voltage Differential Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2043, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-01-98', 'AC Flexible Current Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2044, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-04-11', 'Temperature Humidity Pressure Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2045, NULL, NULL, 15, 16, 1, 850.00, 1.00, '352-10-07', 'Digital Digestion', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2046, NULL, NULL, 22, 57, 1, 2000.00, 7.00, '341-32-05', 'Finger Pulse Oximeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2047, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-04-14', 'Moisture Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2048, NULL, NULL, 18, 25, 1, 700.00, 1.00, '371-07-03', 'Electronic Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2049, NULL, NULL, 15, 16, 1, 1900.00, 1.00, '352-06-22', 'Calibration Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2050, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-08-15', 'High Voltage Probe With Digital Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2051, NULL, NULL, 15, 17, 10, 1600.00, 2.00, '353-01-17', 'Blood Collection Mixer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2052, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-84', 'Pen Type Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2053, NULL, NULL, 15, 16, 9, 1200.00, 1.00, '352-04-15', 'Constant Temperature Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2054, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-06', 'Alcohol Digital Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2055, NULL, NULL, 17, 59, 11, 1000.00, 1.00, '372-15-01', 'Alcohol Digital Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2056, NULL, NULL, 9, 4, 1, 200.00, 14.00, '301-08-16', 'Voltage Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2057, NULL, NULL, 9, 4, 1, 1330.00, 14.00, '301-08-17', 'Voltage Regulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2058, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-15-06', 'Standard Steel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2059, NULL, NULL, 15, 16, 5, 1300.00, 1.00, '352-06-23', 'Heated Bath Circulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2060, NULL, NULL, 15, 16, 1, 850.00, 1.00, '352-09-10', 'Incubator for Inhibitory Substance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2061, NULL, NULL, 15, 16, 1, 120.00, 1.00, '352-09-11', 'Digital Block Heater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2062, NULL, NULL, 15, 16, 1, 1200.00, 1.00, '352-04-16', 'Universal Hot Air Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2063, NULL, NULL, 14, 13, 1, 1650.00, 21.00, '308-01-14', 'Temperature Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2064, NULL, NULL, 18, 24, 1, 840.00, 10.00, '371-12-04', 'Wide Mouth Plastic Bottle', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2065, NULL, NULL, 15, 16, 5, 1900.00, 1.00, '352-06-24', 'Liquid Bath Temperature Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2066, NULL, NULL, 9, 4, 5, 1500.00, 24.00, '301-13-39', 'Portable Voltage Transformer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2067, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-26', 'Ultrasonics Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2068, NULL, NULL, 22, 57, 1, 1000.00, 10.00, '341-01-13', 'Pneumatic Transducer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2069, NULL, NULL, 15, 16, 5, 1300.00, 1.00, '352-06-27', 'Nitrogen Evaporator Water Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2070, NULL, NULL, 22, 57, 1, 3000.00, 10.00, '341-01-14', 'PCA TriggerRemote Call Interface', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:57', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2071, NULL, NULL, 15, 16, 5, 1300.00, 1.00, '352-06-28', 'Parafin Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2072, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-11-11', 'Temperature Calibrator Plug', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2073, NULL, NULL, 17, 31, 1, 1400.00, 84.00, '372-08-07', 'Dissolution Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2074, NULL, NULL, 19, 64, 1, 1450.00, 14.00, '311-01-07', 'IR Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2075, NULL, NULL, 14, 13, 1, 2050.00, 21.00, '308-01-15', 'Standard Temp Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2076, NULL, NULL, 15, 14, 1, 700.00, 7.00, '341-01-15', 'IR Ear Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2077, NULL, NULL, 22, 57, 1, 700.00, 7.00, '341-01-16', 'IR Ear Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2078, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-85', 'Digi-Sense', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2079, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-86', 'Digi-Sense Refrigerater', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2080, NULL, NULL, 9, 4, 1, 800.00, 20.00, '301-21-28', 'EMU Check', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2081, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-87', 'Resistance Temperature Detector 3 Wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2082, NULL, NULL, 15, 21, 5, 600.00, 1.00, '352-11-04', 'Digital Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2083, NULL, NULL, 18, 24, 1, 1050.00, 7.00, '371-15-04', 'Residue Tube', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2084, NULL, NULL, 22, 57, 1, 2000.00, 14.00, '341-01-17', 'Pulse Oximeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2085, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-88', 'Resistance Temperature Detector 2 wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2086, NULL, NULL, 9, 4, 1, 700.00, 12.00, '301-21-29', 'Ultrasonic Frequency Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2087, NULL, NULL, 14, 12, 1, 740.00, 14.00, '307-01-14', 'Standard Liquid-in-Glass Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2088, NULL, NULL, 14, 12, 1, 700.00, 30.00, '307-08-22', 'Thermocouple Type R', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2089, NULL, NULL, 14, 12, 1, 700.00, 30.00, '307-08-23', 'Thermocouple Type S', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2090, NULL, NULL, 14, 12, 1, 700.00, 30.00, '307-08-24', 'Thermocouple Type E', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2091, NULL, NULL, 15, 16, 9, 1450.00, 1.00, '352-02-04', 'Protein Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2092, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-08-25', 'MMC Sonic Tape With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2093, NULL, NULL, 22, 57, 1, 700.00, 14.00, '341-01-18', 'PRESSUREFLOW TEST RIG', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2094, NULL, NULL, 9, 4, 1, 650.00, 14.00, '301-21-30', 'Differential Pressure Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2095, NULL, NULL, 14, 13, 1, 720.00, 21.00, '308-01-16', 'MMC Sonic Tape With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2096, NULL, NULL, 13, 11, 1, 1400.00, 10.00, '305-06-11', 'Digital Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2097, NULL, NULL, 13, 11, 1, 1400.00, 1.00, '305-06-10', 'Digital Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2098, NULL, NULL, 13, 11, 1, 1400.00, 1.00, '305-06-12', 'Digital Pressure Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2099, NULL, NULL, 10, 7, 1, 2200.00, 1.00, '310-01-14', 'Long Gauge Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2100, NULL, NULL, 10, 7, 1, 2200.00, 1.00, '310-01-15', 'Long Gauge Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:58', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2101, NULL, NULL, 10, 7, 1, 450.00, 1.00, '310-01-16', 'Gauge Block Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2102, NULL, NULL, 22, 57, 1, 3000.00, 1.00, '340-21-05', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2103, NULL, NULL, 22, 57, 1, 4000.00, 7.00, '341-01-19', 'Automated External Defibrillator AED Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2104, NULL, NULL, 22, 57, 1, 4000.00, 7.00, '341-01-20', 'Automated External Defibrillator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2105, NULL, NULL, 15, 16, 1, 1400.00, 3.00, '352-01-13', 'Versatile Environmental Test Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2106, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-01-22', 'Simulater Infared', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2107, NULL, NULL, 15, 16, 1, NULL, NULL, '352-04-17', 'Oven Uniform', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2108, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-15-07', 'Optic Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2109, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-89', 'Data Acquisition Indicator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2110, NULL, NULL, 18, 24, 1, 1.00, 1.00, '371-15-05', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2111, NULL, NULL, 19, 49, 1, 1500.00, 1.00, '311-01-08', 'Digital Illumination Photometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2112, NULL, NULL, 14, 13, 1, 1550.00, 25.00, '308-01-17', 'Infrared Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2113, NULL, NULL, 17, 26, 1, 2700.00, 7.00, '372-01-14', 'เครื่องวัดค่าการนำไฟฟ้า ยี่ห้อ Cyberscan รุ่น Con500 รหัส คพ.6665-011-0005-12542', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2114, NULL, NULL, 14, 12, 1, 720.00, 25.00, '307-02-12', 'Pressure Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2115, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-04-42', 'Pressure Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2116, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-21-31', 'Black Stack Thermometer SPRT Module PRT Scanner Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2117, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-23', 'Fetal Maternal Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2118, NULL, NULL, 22, 57, 1, 2000.00, 14.00, '341-01-24', 'Airflow Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2119, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-50-08', 'External Tube Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2120, NULL, NULL, 16, 23, 1, 1140.00, 14.00, '374-01-05', 'เทอร์โมไฮโกรมิเตอร์ ยี่ห้อ Extech รหัส คพ.s6685-004-0001-12553', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2121, NULL, NULL, 22, 57, 1, 1500.00, 14.00, '341-01-27', 'Irradiance Meter Bili-Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2122, NULL, NULL, 15, 16, 1, 820.00, 1.00, '352-09-12', 'Digital Dry Bath Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:54:59', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2123, NULL, NULL, 11, 9, 1, 1600.00, 1.00, '303-01-20', 'Moisture Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2124, NULL, NULL, 13, 11, 1, 1200.00, 7.00, '305-06-13', 'Dual Display Digital Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2125, NULL, NULL, 17, 27, 1, 2900.00, 7.00, '372-01-15', 'เครื่องวัดค่าความเป็นกรด-ด่าง ยี่ห้อ Mettler รุ่น FEP20 รหัส คพ.6665-011-2058-192558', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2126, NULL, NULL, 17, 27, 1, 2900.00, 7.00, '372-01-16', 'เครื่องวัดค่าความเป็นกรด-ด่าง ยี่ห้อ Thermo รุ่น Orion 3 star รหัส คพ.6665-011-0005-22550', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2127, NULL, NULL, 22, 57, 1, 4500.00, 14.00, '341-01-28', 'Electrosurgical Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2128, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-21-32', 'Signal Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2129, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-06-05', 'Standard Timer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2130, NULL, NULL, 22, 57, 1, 2500.00, 14.00, '341-23-07', 'TSI Mass Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2131, NULL, NULL, 18, 24, 1, 1.00, 1.00, '371-12-05', 'Beaker Stainless Steel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2132, NULL, NULL, 15, 16, 1, 850.00, 1.00, '352-09-13', 'Digital Dry Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2133, NULL, NULL, 16, 23, 1, 1960.00, 14.00, '374-01-06', 'Digital Thermo-Hygrograph', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2134, NULL, NULL, 14, 12, 1, 1.00, 1.00, '307-05-85', 'Thermolog', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2135, NULL, NULL, 18, 24, 1, 650.00, 10.00, '371-03-09', 'Density Bottle', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2136, NULL, NULL, 16, 23, 1, 1.00, 1.00, '374-10-02', 'Digital Humidity Controller', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2137, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-27-02', 'Tourniquet', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2138, NULL, NULL, 11, 8, 1, 400.00, 7.00, '303-01-21', 'Stainless Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2139, NULL, NULL, 9, 4, 1, 6300.00, 20.00, '301-13-40', 'Electrical Safety Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2140, NULL, NULL, 15, 16, 1, 1400.00, 1.00, '352-08-18', 'Refrigerated Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2141, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-21-33', 'Super - Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2142, NULL, NULL, 9, 4, 1, 2500.00, 14.00, '301-21-34', 'Tesla Gauss Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2143, NULL, NULL, 19, 64, 1, 1950.00, 14.00, '311-00-08', 'Infrared Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2144, NULL, NULL, 9, 4, 1, 1500.00, 14.00, '301-17-12', 'Thermometer Readout', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2145, NULL, NULL, 22, 57, 1, 2500.00, 14.00, '341-27-03', 'Gas Flow Calibration', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:00', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2146, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-10-03', 'Hygro Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2147, NULL, NULL, 10, 6, 1, 900.00, 21.00, '302-50-09', 'Master Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2148, NULL, NULL, 22, 57, 1, 3500.00, 10.00, '341-27-04', 'Thermal Mass Flowmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2149, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-11-05', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2150, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-50-10', 'Digital Dial Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2151, NULL, NULL, 22, 57, 1, 3500.00, 7.00, '341-27-05', 'Mechanical Fetel Heart', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2152, NULL, NULL, 13, 11, 1, 700.00, 1.00, '305-06-14', 'Dual Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2153, NULL, NULL, 19, 49, 1, 1550.00, 14.00, '311-00-09', 'Visible Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2154, NULL, NULL, 16, 23, 1, 1740.00, 14.00, '374-02-05', 'Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2155, NULL, NULL, 22, 57, 1, 4000.00, 1.00, '341-32-07', 'Defib Pacer Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2156, NULL, NULL, 13, 11, 1, 1500.00, 14.00, '305-16-15', 'HumidityTemperature Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2157, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-17-13', 'Digital Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2158, NULL, NULL, 17, 27, 3, 2900.00, 7.00, '372-02-16', 'Auto Titrette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2159, NULL, NULL, 9, 4, 1, 400.00, 10.00, '301-08-18', 'Power Qulity Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2160, NULL, NULL, 22, 57, 1, 2000.00, 10.00, '341-30-03', 'Plasma Thawer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2161, NULL, NULL, 18, 24, 1, 650.00, 14.00, '371-03-10', 'Transferpette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2162, NULL, NULL, 9, 4, 1, 700.00, 14.00, '301-08-19', 'CT Accuracy Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2163, NULL, NULL, 17, 29, 1, 1500.00, 7.00, '372-02-17', 'Salinity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2164, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-08-20', 'Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2165, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-03-11', 'Measuring Pipette Blow out', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2166, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-29', 'Turbo Vap LV', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2167, NULL, NULL, 15, 16, 1, 1600.00, 1.00, '352-10-08', 'Ultra Low Temperature Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2168, NULL, NULL, 15, 16, 1, 1600.00, 1.00, '352-10-09', 'Precision Temp. Enclosure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2169, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-02-03', 'Hermetic Uti Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2170, NULL, NULL, 10, 6, 1, 1200.00, 10.00, '302-13-13', 'Hermetic Uti Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2171, NULL, NULL, 22, 57, 1, 3500.00, 14.00, '341-30-04', 'Blood Collection Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2172, NULL, NULL, 17, 36, 1, 1500.00, 1.00, '373-01-04', 'pH Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2173, NULL, NULL, 2, 1, NULL, 1000.00, NULL, '320-02-03', 'Transportation services fee', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:01', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2174, NULL, NULL, 18, 25, 1, 700.00, 24.00, '371-08-17', 'Auto Titrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2175, NULL, NULL, 22, 57, 1, 3000.00, 1.00, '341-23-08', 'Digital Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2176, NULL, NULL, 15, 16, 1, 1300.00, 3.00, '352-06-30', 'Cold Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2177, NULL, NULL, 18, 24, 1, 720.00, 14.00, '371-03-12', 'ขวดปรับปริมาตร Volumetric Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2178, NULL, NULL, 22, 57, 1, 1500.00, 1.00, '341-23-09', 'Analog Gas Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2179, NULL, NULL, 15, 16, 1, 1300.00, 1.00, '352-06-31', 'Water Bath Shaker', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2180, NULL, NULL, 15, 16, 1, 820.00, 1.00, '352-09-14', 'Spectroquant', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2181, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-18-09', 'Pulse Oximetry Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2182, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-13-14', 'Gauge Box', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2183, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-25-07', 'Tool Positioning Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2184, NULL, NULL, 14, 12, 1, 300.00, 20.00, '307-08-26', 'Thermocouple Sensor Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2185, NULL, NULL, 22, 57, 1, 4000.00, 1.00, '341-10-03', 'DefibrillatorPacer Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2186, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-02-06', 'Volume Flow Hood', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2187, NULL, NULL, 10, 6, 1, 450.00, 1.00, '302-17-07', 'Standard Height', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2188, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-33-11', 'GO NO GO Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2189, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-12-34', 'Crimp Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2190, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-10-04', 'Multitester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2191, NULL, NULL, 22, 57, 5, 750.00, 7.00, '341-10-05', 'Pressure Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2192, NULL, NULL, 14, 12, 1, 300.00, 1.00, '307-08-27', 'Thermocouple Type N', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2193, NULL, NULL, 11, 9, 1, 1.00, 1.00, '304-02-11', 'Moisture Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2194, NULL, NULL, 14, 13, 1, 1950.00, 22.00, '308-01-18', 'Digital Thermometer With Probe Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2195, NULL, NULL, 9, 4, 1, NULL, 1.00, '301-11-12', 'Calibration Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2196, NULL, NULL, 13, 11, 11, 1400.00, 48.00, '305-04-59', 'Wireless Tire Pressure Monitoring System', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2197, NULL, NULL, 9, 4, 1, 600.00, 10.00, '301-13-41', 'Voltage Withstanding Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2198, NULL, NULL, 13, 11, 1, 1500.00, 1.00, '305-04-60', 'Data logger Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2199, NULL, NULL, 16, 23, 1, 1140.00, 14.00, '374-01-07', 'เทอร์โมไฮโกรมิเตอร์ ยี่ห้อ Extech รหัส คพ.s6685-004-0001-22553', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2200, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-48', 'เทอร์โม-ไฮโกรมิเตอร์ ยี่ห้อ Delta Trak รุ่น 13307 รหัส คพ.6610-016-0001-42548', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2201, NULL, NULL, 16, 23, 1, 1140.00, 14.00, '374-01-08', 'เทอร์โม-ไฮโกรมิเตอร์ ยี่ห้อ Delta Trak รุ่น 13307 รหัส คพ.6610-016-0001-112548', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2202, NULL, NULL, 16, 23, 1, 1140.00, 14.00, '374-01-09', 'เทอร์โม-ไฮโกรมิเตอร์ ยี่ห้อ Delta Trak รุ่น 13307 รหัส คพ.6610-016-0001-82548', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:02', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2203, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-49', 'VAC Measuring Instrument with HumidityTemperature sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2204, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-13-42', 'Multifunction Temperature Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2205, NULL, NULL, 19, 49, 1, 1600.00, 1.00, '309-01-20', 'Visible Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2206, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-50', 'เทอร์โมไฮโกรมิเตอร์', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2207, NULL, NULL, 10, 6, 1, 1.00, 1.00, '302-03-43', 'Linear Scale Rotary Encoder Type', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2208, NULL, NULL, 9, 4, 1, 550.00, 1.00, '301-13-43', 'นาฬิกาจับเวลา รหัส วล.6645-008-5001-22534', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2209, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-51', 'เทอร์โมไฮโกรมิเตอร์ ยี่ห้อ Delta Trak รุ่น 13307 รหัส คพ.6610-016-0001-52548', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2210, NULL, NULL, 17, 26, 1, 2700.00, 7.00, '372-01-17', 'เครื่องวัดค่าการนำไฟฟ้า ยี่ห้อ Eutech รุ่น CyberscanCon500 รหัส คพ.6665-011-0005-12542', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2211, NULL, NULL, 14, 13, 1, 720.00, 14.00, '308-01-19', 'Thermocouple Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2212, NULL, NULL, 17, 56, 1, 1500.00, 7.00, '372-11-03', 'DS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2213, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-25-07', 'Automatic Blood Pressure Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2214, NULL, NULL, 10, 7, 1, 450.00, 1.00, '310-01-17', 'Ceramic Gauge Blocks', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2215, NULL, NULL, 22, 57, 1, 4500.00, 1.00, '341-14-05', 'Electrosurgical Unit Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2216, NULL, NULL, 22, 57, 2, 800.00, 1.00, '341-07-14', 'Centrifuge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2217, NULL, NULL, 9, 4, 1, 650.00, 14.00, '301-13-44', 'RMSPeak Voltmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2218, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-03-44', 'Digit Height Master', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2219, NULL, NULL, 18, 25, 1, 650.00, 17.00, '371-08-18', 'Multipipette plus', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2220, NULL, NULL, 15, 20, 2, 2500.00, 1.00, '352-08-19', 'จ้างสอบเทียบตู้ควบคุมอุณหภูมิและความชื้น', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2221, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-18', 'Dilu Flux', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2222, NULL, NULL, 17, 36, 1, 1.00, 1.00, '373-09-01', 'Temperature Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2223, NULL, NULL, 14, 13, 1, 720.00, 14.00, '308-01-20', 'Infrared Thermometer With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2224, NULL, NULL, 14, 13, 1, 950.00, 15.00, '308-06-11', 'Thermocouple Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2225, NULL, NULL, 13, 11, 1, 500.00, 7.00, '305-04-61', 'Digital Differential Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2226, NULL, NULL, 22, 57, 5, 1500.00, 1.00, '341-30-05', 'Blood Mixing and Weighing Device', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2227, NULL, NULL, 14, 13, 1, 1650.00, 21.00, '308-06-12', 'Thermistor and Readout', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:03', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2228, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-19-03', 'Vital Signs Simulator Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2229, NULL, NULL, 22, 57, 1, 3500.00, 1.00, '341-11-06', 'Safety Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2230, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-52', 'Hert Stress Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2231, NULL, NULL, 10, 6, 1, 150.00, 1.00, '302-03-45', 'Thickness Foil Plate', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2232, NULL, NULL, 22, 57, 1, 700.00, 7.00, '341-11-07', 'Sphygmomanometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2233, NULL, NULL, 14, 12, 1, 720.00, 15.00, '307-01-15', 'เทอร์โมมิเตอร์แบบแท่งแก้ว รหัส ID.172-01-01', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2234, NULL, NULL, 14, 12, 1, 720.00, 15.00, '307-01-16', 'เทอร์โมมิเตอร์แบบแท่งแก้ว รหัส ID.172-20-01', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2235, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-53', 'เทอร์โมไฮโกรมิเตอร์ ยี่ห้อ Delta Trak รุ่น 13307 รหัส คพ.6610-016-0001-22548', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2236, NULL, NULL, 14, 13, 1, 2020.00, 25.00, '308-01-21', 'เทอร์โมมิเตอร์แบบแท่งแก้ว', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2237, NULL, NULL, 9, 4, 1, 720.00, 14.00, '301-13-45', 'AC 1 ph Multi-function', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2238, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-08-03', 'Centrifuge Evaporator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2239, NULL, NULL, 13, 11, 1, 1500.00, 1.00, '305-04-62', 'HumidityBarometerThermo Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2240, NULL, NULL, 10, 6, 10, 1200.00, 7.00, '302-03-46', 'Measuring Steel Tapes', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2241, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-54', 'Humidity Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2242, NULL, NULL, 16, 23, 1, 1400.00, 14.00, '374-03-55', 'Heat Stress Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2243, NULL, NULL, 10, 6, 1, 1.00, 1.00, '302-25-08', 'Step Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2244, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-01-17', 'Dual input Thermometer With Recording', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2245, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-28-06', 'BiliBlanket Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2246, NULL, NULL, 9, 4, 1, 440.00, 15.00, '301-08-21', 'AC Power Supply', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2247, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-25-09', 'Digital Gap Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2248, NULL, NULL, 9, 4, 1, 440.00, 14.00, '301-08-22', 'All In One Electric Appliances Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2249, NULL, NULL, 9, 4, 1, 400.00, 12.00, '301-08-23', 'Clamp On Power Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2250, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-32-08', 'Central Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2251, NULL, NULL, 10, 6, 5, 900.00, 24.00, '302-14-10', 'Four Side Applicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2252, NULL, NULL, 23, 61, 1, 85307.24, 1.00, '321-01-02', 'ค่าจ้างที่ปรึกษาโครงการจัดทำเครื่องมือประเมินสมรรถนะมาตรฐานอาชีพ สาขาวิชาชีพมาตรวิทยา งวดงานที่ 1', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2253, NULL, NULL, 23, 61, 1, 85307.24, 1.00, '321-01-03', 'ค่าจ้างที่ปรึกษาโครงการจัดทำเครื่องมือประเมินสมรรถนะมาตรฐานอาชีพ สาขาวิชาชีพมาตรวิทยา งวดงานที่ 2', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2254, NULL, NULL, 23, 62, 1, 287883.00, 1.00, '321-02-01', 'โครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขามาตรวิทยา ระยะที่ 2', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2255, NULL, NULL, 14, 13, 1, 720.00, 21.00, '308-01-22', 'Metrology Well With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2256, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-56', 'TemperatureHumidity Card Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2257, NULL, NULL, 10, 6, 1, 1000.00, 7.00, '302-14-11', 'Air jet', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:04', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2258, NULL, NULL, 15, 17, 10, 1600.00, 2.00, '353-01-19', 'Dial Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2259, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-32-09', 'NST', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2260, NULL, NULL, 17, 27, 1, 2900.00, 1.00, '372-11-05', 'pH Spear', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2261, NULL, NULL, 10, 6, 10, 900.00, 5.00, '302-06-03', 'Wire Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2262, NULL, NULL, 22, 57, 1, 3500.00, 10.00, '341-32-10', 'Flow Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2263, NULL, NULL, 11, 8, 1, 400.00, 7.00, '303-01-22', 'Plunger Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2264, NULL, NULL, 11, 8, 1, 400.00, 7.00, '303-01-23', 'Cone Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2265, NULL, NULL, 22, 57, 1, 700.00, 7.00, '341-32-11', 'Automatic Digital Blood Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2266, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-07-15', 'Pressure Meter Gas Flow Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2267, NULL, NULL, 11, 9, 1, 1600.00, 10.00, '304-02-12', 'Weighing Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2268, NULL, NULL, 18, 25, 1, 650.00, 10.00, '371-08-19', 'Multipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2269, NULL, NULL, 17, 27, 3, 2900.00, 10.00, '372-02-18', 'pH Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2270, NULL, NULL, 9, 4, 1, 1100.00, 15.00, '301-25-03', 'Head Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2271, NULL, NULL, 17, 36, 1, 1.00, 1.00, '373-09-02', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2272, NULL, NULL, 15, 16, 1, 1400.00, 2.00, '352-01-14', 'Dynamic Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2273, NULL, NULL, 15, 16, 1, 1400.00, 2.00, '352-01-15', 'CO2 Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2274, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-28-07', 'BiliBlanket Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2275, NULL, NULL, 15, 20, 1, 2000.00, 1.00, '352-08-20', 'Dest Type Temp Humid', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2276, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-01-23', 'Dry Well With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2277, NULL, NULL, 10, 7, 1, 1100.00, 14.00, '310-33-12', 'Screw Thread Limit Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2278, NULL, NULL, 14, 12, 1, 720.00, 15.00, '307-02-90', 'Documenting Process Calibrator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2279, NULL, NULL, 15, 20, 1, 3000.00, 3.00, '352-08-21', 'Constant Temp. Humid. Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2280, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-08-29', 'Thermocouple Sensor Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2281, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-07-01', 'Digital Temperature Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2282, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-91', 'Data Acquisition With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2283, NULL, NULL, 17, 31, 1, 1500.00, 7.00, '373-08-04', 'Unidrive S III', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2284, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-10-06', 'Defibrillator-Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2285, NULL, NULL, 9, 4, 2, 400.00, 7.00, '301-08-24', 'Multi-Purpose tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:05', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2286, NULL, NULL, 18, 24, 1, 700.00, 1.00, '371-08-20', 'Piston Burette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2287, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-92', 'Digital Clamp Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2288, NULL, NULL, 17, 28, 1, 5000.00, 7.00, '372-05-02', 'UV-VIS Spectrophotometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2289, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-03-57', 'Humidity Temperature Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2290, NULL, NULL, 17, 29, 1, 500.00, 1.00, '372-02-19', 'ค่าบริการสอบเทียบเครื่องมือบกพร่อง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2291, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-25-08', 'Automatic Blood Pressure Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2292, NULL, NULL, 14, 12, 1, 720.00, 1.00, '307-02-93', 'Digital Thermometer With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2293, NULL, NULL, 22, 57, 1, 1400.00, 12.00, '341-25-09', 'Calibration Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2294, NULL, NULL, 15, 21, 5, 1000.00, 1.00, '352-11-06', 'Compound Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2295, NULL, NULL, 14, 13, 1, 1420.00, 25.00, '308-03-35', 'Temperature Transducer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2296, NULL, NULL, 15, 21, 5, 500.00, 1.00, '352-11-07', 'Digital Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2297, NULL, NULL, 15, 20, 2, 2500.00, 4.00, '352-08-22', 'Climatic Chamber', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2298, NULL, NULL, 13, 11, 5, 470.00, 1.00, '305-02-23', 'Differential Pressure Air Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2299, NULL, NULL, 10, 7, 1, 1000.00, 1.00, '310-01-18', 'Snap Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2300, NULL, NULL, 10, 7, 1, 120.00, 1.00, '310-01-19', 'Pin Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2301, NULL, NULL, 10, 7, 1, 900.00, 1.00, '310-01-20', 'Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2302, NULL, NULL, 10, 7, 1, 900.00, 1.00, '310-01-21', 'Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2303, NULL, NULL, 10, 7, 1, 1100.00, 1.00, '310-01-22', 'Thread Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2304, NULL, NULL, 10, 7, 1, 1100.00, 1.00, '310-01-24', 'Thread Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2305, NULL, NULL, 10, 7, 1, 900.00, 1.00, '310-01-25', 'Tubular Inside Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2306, NULL, NULL, 10, 7, 1, 1100.00, 1.00, '310-01-23', 'Thread Measuring Wires', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2307, NULL, NULL, 10, 7, 1, 900.00, 1.00, '310-01-26', 'Screw Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2308, NULL, NULL, 10, 7, 1, 1100.00, 1.00, '310-01-27', 'Plain Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2309, NULL, NULL, 10, 7, 1, 130.00, 1.00, '310-01-28', 'Pin Gauge Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2310, NULL, NULL, 10, 7, 1, 1100.00, 1.00, '310-01-29', 'Setting Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:06', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2311, NULL, NULL, 10, 7, 1, 400.00, 1.00, '310-01-30', 'Three Wire', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2312, NULL, NULL, 9, 4, 2, 200.00, 1.00, '301-08-25', 'Survey Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2313, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-02-33', 'TRMS Clamp Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2314, NULL, NULL, 17, 26, 1, 1.00, 1.00, '372-01-18', 'pH Conductivity Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2315, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-12', 'Spirometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2316, NULL, NULL, 17, 26, 1, 720.00, 7.00, '372-02-20', 'ค่าสอบเทียบเพิ่มเติม', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2317, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-09-05', 'Handy Step Electronic', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2318, NULL, NULL, 14, 12, 1, 720.00, 30.00, '307-02-94', 'Dew-Point With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2319, NULL, NULL, 16, 23, 1, 1440.00, 4.00, '374-04-50', 'Temperature Humidity and Baromatic Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2320, NULL, NULL, 10, 7, 1, 1.00, 1.00, '310-01-31', 'Plain Plug Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2321, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-10-27', 'RTD Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2322, NULL, NULL, 10, 6, 1, 1100.00, 14.00, '310-01-32', 'Setting Ring', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2323, NULL, NULL, 14, 13, 1, 420.00, 30.00, '308-03-36', 'Dew-Point With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2324, NULL, NULL, 12, 10, 1, 3000.00, 2.00, '306-03-13', 'Torque Transducer and Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2325, NULL, NULL, 14, 12, 1, 720.00, 14.00, '307-02-95', 'Compact Thermo Logger With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2326, NULL, NULL, 14, 13, 1, 720.00, 10.00, '308-03-37', 'Transmitter with sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2327, NULL, NULL, 15, 16, 1, 1000.00, 1.00, '352-07-13', 'Digital Thermometer With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2328, NULL, NULL, 18, 24, 1, 700.00, 0.30, '371-09-06', 'Handy Step', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2329, NULL, NULL, 9, 4, 1, 600.00, 1.00, '301-15-44', 'Calibration Check Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2330, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-02-34', 'AC Leakage Current Clamp', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2331, NULL, NULL, 22, 57, 1, 1500.00, 7.00, '341-25-10', 'Oxygen Concentrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2332, NULL, NULL, 18, 24, 1, 250.00, 1.00, '371-05-06', 'บิวเรต', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2333, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-18', 'Thermocouple Extension Wire Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2334, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-19', 'Thermocouple Extension Wire Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:07', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2335, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-20', 'Thermocouple Extension Wire Type R', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2336, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-21', 'Thermocouple Extension Wire Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2337, NULL, NULL, 14, 13, 1, 720.00, 25.00, '308-05-22', 'Thermocouple Extension Wire Type E', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2338, NULL, NULL, 9, 4, 1, 440.00, 7.00, '301-02-35', 'Circuit Breaker Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2339, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-25-04', 'Bench-top simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2340, NULL, NULL, 18, 24, 1, 1.00, 1.00, '371-04-13', 'Graduated Pipette Blowout', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2341, NULL, NULL, 15, 16, 1, 3200.00, 1.00, '352-03-07', 'Refrigerator With Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2342, NULL, NULL, 10, 6, 1, 1.00, 1.00, '302-25-10', 'Digital Step Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2343, NULL, NULL, 9, 4, 1, 1.00, 1.00, '301-14-02', 'Digital Watt Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2344, NULL, NULL, 15, 2, 1, 1.00, 1.00, '350-01-02', 'Travelling Change', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2345, NULL, NULL, 18, 24, 1, 840.00, 4.00, '371-06-09', 'Separatory Funnel', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2346, NULL, NULL, 11, 8, 1, 500.00, 1.00, '303-01-24', 'Weight Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2347, NULL, NULL, 17, 26, 1, 2700.00, 10.00, '372-01-19', 'Conductivity Transmitter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2348, NULL, NULL, 22, 57, 1, 2000.00, 10.00, '341-25-11', 'ECG Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2349, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-02-29', 'Reference Thermometer with PRT', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2350, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-25-11', 'Clinch Diameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2351, NULL, NULL, 18, 25, 1, 700.00, 10.00, '371-07-04', 'Digital Titrette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2352, NULL, NULL, 2, 1, 1, 5000.00, 1.00, '399-01-07', 'Transportation Fee', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2353, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-03-12', 'Seam Ageng Testing', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2354, NULL, NULL, 17, 34, 1, 1400.00, 1.00, '373-03-13', 'Shaker Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2355, NULL, NULL, 14, 13, 1, 720.00, 4.00, '308-03-38', 'Multi-Detector', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2356, NULL, NULL, 15, 16, 9, 1400.00, 1.00, '352-04-18', 'Geer Oven', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2357, NULL, NULL, 12, 10, 1, 3000.00, 10.00, '306-03-14', 'Torque Wrench Analyser', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2358, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-09-19', 'Dial Gauge With Digital Display', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2359, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-23-10', 'Liquid Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2360, NULL, NULL, 22, 57, 1, 5000.00, 1.00, '341-23-11', 'TSI Mass Flow Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2361, NULL, NULL, 23, 63, 1, 1.00, 1.00, '321-03-01', 'ค่าตรวจประเมินตามข้อกำหนด ISOIEC 17025', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2362, NULL, NULL, 23, 63, 1, 1.00, 1.00, '321-03-02', 'ค่าเดินทางและที่พัก โครงการพิเศษ ECS', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2363, NULL, NULL, 23, 58, 1, 1.00, 1.00, '321-03-03', 'ค่าอบรม In-House training', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2364, NULL, NULL, 10, 6, 1, 900.00, 10.00, '302-12-35', 'Chamfering Measurement Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:08', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2365, NULL, NULL, 9, 4, 1, 400.00, 10.00, '301-08-26', 'AC Power Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2366, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-12-36', 'Precision Ruler', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2367, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-09-15', 'Digester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2368, NULL, NULL, 22, 57, 1, 3000.00, 14.00, '341-12-03', 'Calibration Syringe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2369, NULL, NULL, 17, 26, 1, 2700.00, 7.00, '373-03-14', 'EC-Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2370, NULL, NULL, 10, 7, 1, 120.00, 10.00, '310-16-12', 'Cable Torque Arm With Pan Torque Arm 24 lbs', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2371, NULL, NULL, 15, 16, 1, 1400.00, 1.00, '352-01-16', 'Refrigerated Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2372, NULL, NULL, 10, 6, 1, 1.00, 1.00, '302-01-18', 'Tube Well Measurement', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2373, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-01-19', 'Digital Vernier Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2374, NULL, NULL, 22, 57, 1, 2500.00, 7.00, '341-12-04', 'Multi-Parameter Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2375, NULL, NULL, 18, 25, 1, 650.00, 10.00, '371-08-21', 'ปิเปตวัดปริมาตร', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2376, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-28-09', 'Phototherapy Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2377, NULL, NULL, 15, 16, 1, 1400.00, 3.00, '352-01-17', 'Shaking Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2378, NULL, NULL, 10, 7, 1, 1.00, 1.00, '310-17-01', 'Comparator Ball Bearing', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2379, NULL, NULL, 19, 64, 1, 1550.00, 7.00, '311-01-09', 'Emission Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2380, NULL, NULL, 15, 16, 1, 1900.00, 3.00, '352-06-32', 'Deep Well Compact Bath', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2381, NULL, NULL, 15, 15, 1, 2050.00, 4.00, '351-10-01', 'Data Acquisition With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2382, NULL, NULL, 9, 4, 1, 330.00, 1.00, '301-08-27', 'pH Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2383, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-05-23', 'Temperature Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2384, NULL, NULL, 18, 25, 1, 700.00, 14.00, '371-08-22', 'Single Channel Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2385, NULL, NULL, 17, 35, 8, 5000.00, 3.00, '373-02-05', 'UV-VIS DOUBLE WAVELENGTH SPECTROPHOTOMETER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2386, NULL, NULL, 9, 4, 1, 400.00, 14.00, '301-08-28', 'Digital Test Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2387, NULL, NULL, 11, 9, 10, 1600.00, 1.00, '304-02-13', 'Centrifuge Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2388, NULL, NULL, 22, 57, 1, 5000.00, 7.00, '341-24-04', 'Ventilator Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2389, NULL, NULL, 10, 7, 1, 130.00, 1.00, '310-01-33', 'Piston Test Piece', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2390, NULL, NULL, 17, 34, 1, 1.00, 1.00, '373-08-05', 'Centrifuge for Speed Vacuum', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2391, NULL, NULL, 17, 34, 1, 1.00, 1.00, '373-08-06', 'Vortex Mixer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2392, NULL, NULL, 13, 11, 1, 1400.00, 5.00, '305-02-24', 'Miter Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2393, NULL, NULL, 13, 11, 1, 1500.00, 14.00, '305-02-25', 'Thermo-Hygrometer Barometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:09', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2394, NULL, NULL, 2, 1, 1, 300.00, 1.00, '399-01-08', 'Transportation Service 300 Baht', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2395, NULL, NULL, 17, 36, 1, 2900.00, 1.00, '373-02-02', 'Ion Selective Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2396, NULL, NULL, 11, 8, 1, 450.00, 1.00, '303-03-04', 'Check Weight', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2397, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-08-23', 'Glass Buret', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2398, NULL, NULL, 10, 6, 1, 1200.00, 7.00, '302-05-03', 'Electrical Comparator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2399, NULL, NULL, 9, 4, 2, 450.00, 14.00, '301-08-29', 'Digital Panel Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2400, NULL, NULL, 19, 49, 1, 1500.00, 10.00, '309-01-21', 'Chroma Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2401, NULL, NULL, 10, 6, 1, 900.00, 10.00, '302-05-04', 'Electronic Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2402, NULL, NULL, 17, 27, 3, 2900.00, 10.00, '372-01-20', 'pHmVCondDO Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2403, NULL, NULL, 11, 8, 1, 600.00, 10.00, '303-01-25', 'Weight Standard Mass', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2404, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-18-10', 'Pulse Oximeter Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2405, NULL, NULL, 11, 8, 1, 600.00, 14.00, '302-01-26', 'Standard Weight Set F1', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2406, NULL, NULL, 17, 36, 1, 2900.00, 1.00, '373-01-07', 'Ion Selective Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2407, NULL, NULL, 16, 23, 1, 1460.00, 11.00, '374-03-58', 'Hygropalm', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2408, NULL, NULL, 11, 9, 1, 1600.00, 10.00, '304-02-14', 'Precision Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2409, NULL, NULL, 22, 57, 1, 1200.00, 10.00, '341-25-12', 'ICP Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2410, NULL, NULL, 17, 26, 1, 880.00, 1.00, '372-01-21', 'pHORPDOCDTDSSalt Meter with Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2411, NULL, NULL, 13, 11, 5, 1500.00, 5.00, '305-15-22', 'Absolute Pressure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2412, NULL, NULL, 14, 12, 1, 950.00, 10.00, '307-02-96', 'Pressure Recorder With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2413, NULL, NULL, 9, 4, 1, 2500.00, 1.00, '301-08-30', 'Flux Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2414, NULL, NULL, 10, 7, 1, 1200.00, 14.00, '310-01-34', 'High Accuracy Digital External Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2415, NULL, NULL, 2, 1, 1, 100.00, 1.00, '320-04-03', 'ค่าธรรมเนียมในการแก้ไข certificate of calibration', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2416, NULL, NULL, 2, 1, 1, 1.00, 1.00, '399-04-01', 'Service Charge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2417, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-03-45', 'Multifunction Process Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2418, NULL, NULL, 14, 12, 1, 950.00, 10.00, '307-02-97', 'Waterproof Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2419, NULL, NULL, 9, 4, 1, 1350.00, 10.00, '301-08-31', 'Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2420, NULL, NULL, 9, 4, 1, 1500.00, 10.00, '301-02-36', 'Digital Multimeter With Probe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2421, NULL, NULL, 18, 24, 1, 650.00, 10.00, '371-08-24', 'Mixing Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2422, NULL, NULL, 22, 57, 1, 1500.00, 1.00, '341-32-13', 'O2 Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2423, NULL, NULL, 22, 57, 1, 1500.00, 10.00, '341-32-14', 'Feeding Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2424, NULL, NULL, 18, 24, 1, 840.00, 10.00, '371-08-25', 'Conical Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:10', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2425, NULL, NULL, 18, 24, 1, 650.00, 10.00, '371-08-26', 'Measurement Cylinder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2426, NULL, NULL, 13, 11, 1, 1500.00, 10.00, '305-15-23', 'Barometric Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2427, NULL, NULL, 10, 6, 1, 900.00, 14.00, '302-12-37', 'Transparent Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2428, NULL, NULL, 9, 4, 1, 450.00, 10.00, '301-08-32', 'Loresta AX', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2429, NULL, NULL, 22, 57, 1, 2500.00, 10.00, '341-32-15', 'Home Sleep Test', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2430, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-32-16', 'Digital Radiometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2431, NULL, NULL, 10, 6, 1, 900.00, 7.00, '302-12-38', 'Screw Thread Micrometers', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2432, NULL, NULL, 18, 24, 1, 650.00, 5.00, '371-08-27', 'Cylindrical Cup', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2433, NULL, NULL, 19, 49, 1, 1700.00, 1.00, '311-01-11', 'True RMS Thermal Multimeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2434, NULL, NULL, 22, 57, 1, 2000.00, 10.00, '341-32-17', 'Exhalometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2435, NULL, NULL, 18, 24, 1, 730.00, 1.00, '371-16-01', 'Imhoff Cone Plastic', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2436, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-18', 'C-Arm X-Ray', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2437, NULL, NULL, 22, 57, 1, 2000.00, 10.00, '341-32-19', 'CQM Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2438, NULL, NULL, 13, 11, 5, 1500.00, 10.00, '305-15-24', 'Barometric Pressure Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2439, NULL, NULL, 22, 57, 1, 3500.00, 10.00, '341-32-20', 'Pressure Flow Test RIG', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2440, NULL, NULL, 22, 57, 1, 650.00, 5.00, '341-32-21', 'Universal Pressure Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2441, NULL, NULL, 17, 27, 1, 1500.00, 10.00, '372-01-22', 'Pen Refractometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2442, NULL, NULL, 13, 11, 1, 1200.00, 10.00, '305-12-25', 'Pressure Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2443, NULL, NULL, 11, 8, 1, 500.00, 10.00, '303-01-26', 'Master Test Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2444, NULL, NULL, 10, 6, 1, 900.00, 10.00, '302-09-20', 'Dial Internal Caliper Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2445, NULL, NULL, 17, 27, 3, 2900.00, 10.00, '372-01-23', 'pH Meter With Electrode', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2446, NULL, NULL, 9, 4, 1, 440.00, 10.00, '301-02-37', '3-Phase Power-Clamp', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2447, NULL, NULL, 9, 4, 1, 440.00, 1.00, '301-02-38', 'GS610 Source Measure Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2448, NULL, NULL, 17, 33, 1, 900.00, 1.00, '372-01-24', 'pHORPDOCDTDSSalt Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2449, NULL, NULL, 15, 16, 1, 1600.00, 3.00, '352-01-18', 'Constant Temperature Air Cabinet', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2450, NULL, NULL, 15, 15, 1, 2050.00, 3.00, '351-11-01', 'Digital Thermometer with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2451, NULL, NULL, 10, 6, 1, 910.00, 10.00, '302-09-21', 'Gap Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2452, NULL, NULL, 10, 7, 1, 1100.00, 10.00, '310-01-35', 'Ring Gauge Set', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2453, NULL, NULL, 9, 4, 1, 1900.00, 10.00, '301-02-39', 'Resistance Substituter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2454, NULL, NULL, 22, 57, 1, 5000.00, 1.00, '341-32-22', 'AED TESTER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2455, NULL, NULL, 22, 57, 1, 1770.00, 1.00, '341-32-23', 'Strain Gauge Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2456, NULL, NULL, 9, 4, 1, 1070.00, 10.00, '301-02-40', 'Differential Pressure Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:11', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2457, NULL, NULL, 9, 4, 1, 450.00, 10.00, '301-02-41', 'Ohm Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2458, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-24', 'Operating Lamp', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2459, NULL, NULL, 9, 4, 1, 350.00, 1.00, '301-25-05', 'Strain Gauge Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2460, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-09-22', 'Inside-Dial Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2461, NULL, NULL, 17, 36, 1, 2300.00, 1.00, '373-01-08', 'Ion Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2462, NULL, NULL, 9, 4, 1, 450.00, 1.00, '301-25-06', 'Titrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2463, NULL, NULL, 18, 24, 1, 840.00, 1.00, '371-08-28', 'Flat Bottom Flask', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2464, NULL, NULL, 18, 24, 1, 840.00, 10.00, '371-08-29', 'Bottle', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2465, NULL, NULL, 16, 23, 1, 1460.00, 1.00, '374-03-59', 'Temperature Indicator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2466, NULL, NULL, 9, 4, 1, 1500.00, 1.00, '301-25-07', 'Electrical Safety Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2467, NULL, NULL, 15, 16, 1, 1500.00, 1.00, '352-06-33', 'Detergent Tank Small', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2468, NULL, NULL, 13, 11, 1, 1400.00, 1.00, '305-12-26', 'Reference Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2469, NULL, NULL, 16, 23, 1, 1460.00, 10.00, '374-03-60', 'Pocket Weather Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2470, NULL, NULL, 22, 57, 1, 2500.00, 10.00, '341-32-25', 'Digital Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2471, NULL, NULL, 10, 6, 1, 900.00, 2.00, '302-01-20', 'Calibration Arm for Dynamometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2472, NULL, NULL, 22, 57, 1, 700.00, 5.00, '341-32-26', 'IR Forehead Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2473, NULL, NULL, 13, 11, 1, 1400.00, 1.00, '305-12-27', 'Signal Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2474, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-32-27', 'Forehead Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2475, NULL, NULL, 10, 6, 1, 1300.00, 1.00, '302-01-21', 'Calibration target', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2476, NULL, NULL, 22, 57, 1, 2500.00, 1.00, '341-32-28', 'Bilirubin Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2477, NULL, NULL, 9, 4, 1, 1700.00, 1.00, '301-25-08', 'Pressure Module', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2478, NULL, NULL, 22, 57, 1, 2000.00, 2.00, '341-32-29', 'Rotameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2479, NULL, NULL, 9, 4, 1, 5160.00, 5.00, '301-02-42', 'Energy Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2480, NULL, NULL, 16, 23, 1, 1440.00, 5.00, '374-10-04', 'Airflow Meter Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2481, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-09-16', 'Dry Bath Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:12', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2482, NULL, NULL, 14, 13, 1, 1050.00, 14.00, '308-05-24', 'TC Reference Junction Type K', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2483, NULL, NULL, 14, 13, 1, 1050.00, 14.00, '308-05-25', 'TC Reference Junction Type J', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2484, NULL, NULL, 14, 13, 1, 1050.00, 14.00, '308-05-26', 'TC Reference Junction Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2485, NULL, NULL, 14, 13, 1, 1050.00, 14.00, '308-05-27', 'TC Reference Junction Type E', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2486, NULL, NULL, 14, 13, 1, 1050.00, 14.00, '308-05-28', 'TC Reference Junction Type R', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2487, NULL, NULL, 14, 13, 1, 1050.00, 14.00, '308-05-29', 'TC Reference Junction Type S', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2488, NULL, NULL, 11, 9, 10, 1600.00, 10.00, '304-02-15', 'Digital Scale', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2489, NULL, NULL, 11, 9, 10, 1600.00, 10.00, '304-02-16', 'Mam Compress', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2490, NULL, NULL, 9, 4, 1, 1350.00, 10.00, '301-09-70', 'Advanced Signal Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2491, NULL, NULL, 16, 23, 1, 1440.00, 14.00, '374-10-05', 'HumidityTemperature Datalogger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2492, NULL, NULL, 22, 57, 1, 1500.00, 10.00, '341-32-30', 'Syringe Infusion Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2493, NULL, NULL, 16, 23, 1, 1440.00, 1.00, '374-10-06', 'Temperature and Humidity Data Recorder', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2494, NULL, NULL, 14, 12, 1, 950.00, 10.00, '307-02-98', 'Pressure Calibrator With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2495, NULL, NULL, 18, 24, 1, 700.00, 3.00, '371-15-06', 'Grease Pycnometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2496, NULL, NULL, 9, 4, 1, 450.00, 5.00, '301-02-43', 'AC Leakage Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2497, NULL, NULL, 14, 13, 1, 1.00, 1.00, '308-04-22', 'Dew Point Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2498, NULL, NULL, 10, 6, 10, 1200.00, 10.00, '302-13-15', 'HERMetic UTImeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2499, NULL, NULL, 14, 13, 1, 720.00, 1.00, '308-02-30', 'HERMetic UTImeter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2500, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-09-03', 'External Pacemaker Analyzer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2501, NULL, NULL, 9, 4, 1, 1700.00, 5.00, '301-04-11', 'Oscilloscope Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2502, NULL, NULL, 9, 4, 1, 4200.00, 10.00, '301-09-71', 'Multifunctional Electrical Installation Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2503, NULL, NULL, 18, 25, 1, 900.00, 5.00, '371-08-30', 'Single Stroke Dispensers', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2504, NULL, NULL, 15, 16, 1, 1800.00, 3.00, '352-01-19', 'Cryostat', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2505, NULL, NULL, 18, 46, 1, 650.00, 10.00, '371-02-02', 'Sero Pipette', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2506, NULL, NULL, 9, 4, 1, 2050.00, 1.00, '301-08-33', 'Multi-Rang DC Power Supply', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2507, NULL, NULL, 22, 57, 1, 4500.00, 10.00, '341-12-05', 'Multi Parameter Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2508, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-21-05', 'Auto Thermoscan', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2509, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-21-06', 'Auto Thermoscan Pro', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2510, NULL, NULL, 9, 4, 1, 5160.00, 10.00, '301-05-20', 'Three-Phase Electrical Energy Loggers', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2511, NULL, NULL, 9, 4, 1, 3400.00, 10.00, '301-08-34', 'Dry Well Temperature Calibrator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:13', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2512, NULL, NULL, 9, 4, 1, 450.00, 10.00, '301-02-44', 'Voltage Meter Analog', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2513, NULL, NULL, 9, 4, 1, 450.00, 10.00, '301-02-45', 'ADC Digital Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2514, NULL, NULL, 9, 4, 1, 1000.00, 10.00, '301-05-21', 'Generator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2515, NULL, NULL, 15, 16, 1, 1000.00, 1.00, '352-07-14', 'DO Meter with Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2516, NULL, NULL, 9, 4, 1, 700.00, 5.00, '301-18-15', 'Handheld Tachometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2517, NULL, NULL, 17, 27, 3, 2900.00, 10.00, '372-02-21', 'Waterproof pH Meters', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2518, NULL, NULL, 22, 57, 1, 700.00, 1.00, '341-21-07', 'Auto Thermoscan Plus', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2519, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-33-01', 'Incubator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2520, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-33-02', 'Biosafety Cabinet', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2521, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-33-03', 'PCR CABINET', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2522, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-33-04', 'Automatic Nucleic Acid Purification System', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2523, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-33-05', 'Freezer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2524, NULL, NULL, 22, 57, 1, 2000.00, 10.00, '341-32-31', 'Power Resitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2525, NULL, NULL, 22, 57, 1, 4000.00, 14.00, '341-01-29', 'Air Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2526, NULL, NULL, 9, 4, 1, 700.00, 5.00, '301-02-46', 'Digital Capacitance Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2527, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-23-12', 'Flow Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2528, NULL, NULL, 22, 57, 1, 2800.00, 1.00, '341-32-33', 'Differential Pressure Manometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2529, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-10-07', 'Defibrillator with Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2530, NULL, NULL, 22, 57, 5, 1350.00, 5.00, '301-02-47', 'Source Measure Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2531, NULL, NULL, 14, 12, 1, 950.00, 4.00, '307-04-12', 'Multi-Channel Data Logger With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2532, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-03-47', 'Digit Micrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2533, NULL, NULL, 14, 13, 1, 1450.00, 5.00, '308-03-46', 'Temperature Data Logger', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2534, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-32-34', 'Code Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2535, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-35', 'Criticool', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2536, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-32-36', 'Olympic Brainz Monitor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2537, NULL, NULL, 18, 24, 1, 840.00, 1.00, '371-12-06', 'Beaker Plastic', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2538, NULL, NULL, 22, 57, 1, 1500.00, 1.00, '341-28-10', 'Double Phototherapy Unit', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2539, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-03-48', 'Micrometer Caliper', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2540, NULL, NULL, 10, 6, 1, 900.00, 1.00, '302-10-03', 'Linear Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2541, NULL, NULL, 18, 25, 1, 650.00, 17.00, '371-08-31', 'Multipette plus', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2542, NULL, NULL, 14, 13, 1, 950.00, 14.00, '308-06-13', 'Multiparameter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:14', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2543, NULL, NULL, 11, 8, 1, 500.00, 7.00, '304-05-06', 'Durometer Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2544, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-34-01', 'ทดสอบความปลอดภัยทางไฟฟ้า', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2545, NULL, NULL, 11, 8, 1, 500.00, 1.00, '303-02-26', 'Ball Pressure Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2546, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-28-11', 'Bili-Light Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2547, NULL, NULL, 13, 11, 1, 650.00, 1.00, '305-03-06', 'Vacuum Gauge Vacuum Pump', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2548, NULL, NULL, 11, 8, 1, 500.00, 7.00, '303-01-27', 'Needle for Penetro Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2549, NULL, NULL, 9, 4, 1, 720.00, 10.00, '301-02-48', 'Environment Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2550, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-09-17', 'Cooling Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2551, NULL, NULL, 10, 7, 1, 2200.00, 1.00, '310-01-36', 'Short Gauge Block', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2552, NULL, NULL, 10, 6, 1, 1200.00, 10.00, '302-13-16', 'Circle Measure', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2553, NULL, NULL, 22, 57, 1, 1000.00, 10.00, '341-28-12', 'Coagulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2554, NULL, NULL, 9, 4, 1, 5000.00, 7.00, '301-03-09', 'ACDC Magnetic Fieldmeter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2555, NULL, NULL, 9, 4, 1, 4200.00, 10.00, '301-02-49', 'Network Analyzer AR6', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2556, NULL, NULL, 9, 4, 1, 4200.00, 10.00, '301-02-50', 'Auditor CIRE-3', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2557, NULL, NULL, 14, 12, 1, 420.00, 10.00, '307-08-30', 'Thermocouple Sensor Type E', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2558, NULL, NULL, 14, 12, 1, 420.00, 10.00, '307-08-31', 'Thermocouple Sensor Type T', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2559, NULL, NULL, 15, 16, 1, 1.00, 1.00, '352-07-15', 'Orion Automation Compensation With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2560, NULL, NULL, 22, 57, 1, 1700.00, 10.00, '341-21-08', 'Non-Contact Infrared Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2561, NULL, NULL, 10, 7, 1, 450.00, 10.00, '310-01-37', 'Extention Pipes', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2562, NULL, NULL, 22, 57, 1, 1000.00, 1.00, '341-30-06', 'Electronic Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2563, NULL, NULL, 15, 16, 1, 720.00, 10.00, '352-07-16', 'TDS Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2564, NULL, NULL, 13, 11, 1, 12000.00, 1.00, '305-11-05', 'Hydraulic Pressure Balance', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2565, NULL, NULL, 17, 60, 1, 1.00, 1.00, '373-03-15', 'Turbidity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2566, NULL, NULL, 15, 16, 1, 950.00, 1.00, '352-07-17', 'pH Conductivity Meter With Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2567, NULL, NULL, 16, 23, 1, 1440.00, 10.00, '374-04-51', 'TS-WS-10 Wireless Indoor - Outdoor 8-Channael Thermo-Hygrometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2568, NULL, NULL, 17, 60, 1, 1400.00, 1.00, '373-08-07', 'Centrivap', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2569, NULL, NULL, 15, 16, 1, 1600.00, 1.00, '352-08-23', 'Centrivap Temperature', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2570, NULL, NULL, 16, 23, 1, 1460.00, 14.00, '374-03-61', 'Heat Index WBGT Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2571, NULL, NULL, 22, 57, 3, 700.00, 5.00, '341-32-37', 'Infrared Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2572, NULL, NULL, 17, 56, 1, 2000.00, 10.00, '372-11-06', 'Multiparameter TDS', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2573, NULL, NULL, 16, 23, 1, 1460.00, 14.00, '374-03-62', 'Smart Temperature Humidity Sensor', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:15', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2574, NULL, NULL, 23, 67, 1, 1.00, 1.00, '321-05-01', 'Outside Micrometer 0 mm - 25 mm', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2575, NULL, NULL, 17, 36, 3, 2900.00, 3.00, '373-01-09', 'pHConductivity Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2576, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-19-04', 'Health Kiosk', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2577, NULL, NULL, 17, 26, 1, 2700.00, 1.00, '372-01-25', 'pHORPISEECTDS Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2578, NULL, NULL, 22, 57, 1, 1200.00, 1.00, '341-34-02', 'Health Kiosk', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2579, NULL, NULL, 10, 7, 1, 1200.00, 10.00, '302-34-08', 'Screw Thread Ring Gauge', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2580, NULL, NULL, 18, 24, 1, 650.00, 1.00, '371-01-04', 'Volumetric Pipette Blow out', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2581, NULL, NULL, 10, 6, 1, 500.00, 1.00, '302-11-03', 'ค่าบริการสอบเทียบเครื่องมือบกพร่อง', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2582, NULL, NULL, 15, 16, 1, 1450.00, 1.00, '352-02-05', 'Melt Flow Index Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2583, NULL, NULL, 17, 33, 1, 950.00, 1.00, '372-09-10', 'Water Quality Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2584, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-05-02', 'Foetal Heart Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2585, NULL, NULL, 15, 16, 1, 1400.00, 1.00, '352-08-24', 'Centrifuge Evaporator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2586, NULL, NULL, 17, 33, 1, 950.00, 1.00, '372-09-11', 'Portable Multi-parameter Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2587, NULL, NULL, 14, 13, 1, 1450.00, 30.00, '308-06-14', 'Field Metrology Well', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2588, NULL, NULL, 15, 17, 10, 1600.00, 1.00, '353-01-20', 'Diluflux Pro', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2589, NULL, NULL, 17, 56, 1, 1000.00, 10.00, '372-01-26', 'ECTDSPH Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2590, NULL, NULL, 17, 28, 1, 5000.00, 7.00, '372-03-02', 'Spectrophotometer for Visible Light', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2591, NULL, NULL, 18, 25, 1, 700.00, 10.00, '371-09-07', 'Dispensette S Organic Analog', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2592, NULL, NULL, 18, 46, 1, 650.00, 10.00, '371-13-04', 'Syringe', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2593, NULL, NULL, 16, 23, 1, 1440.00, 10.00, '374-03-63', 'Multifunction Indoor Air Quality Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2594, NULL, NULL, 17, 33, 1, 900.00, 1.00, '372-01-32', 'CONDTDS METER', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2595, NULL, NULL, 17, 33, 1, 2200.00, 1.00, '372-12-01', 'COD Tester', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2596, NULL, NULL, 17, 33, 1, 2200.00, 1.00, '372-12-02', 'COD Meter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2597, NULL, NULL, 10, 6, 1, 1200.00, 10.00, '302-13-17', 'Outside Diameter', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2598, NULL, NULL, 22, 57, 1, 2000.00, 1.00, '341-01-30', 'Patient Simulator', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2599, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-01-31', 'IR Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (2600, NULL, NULL, 22, 57, 1, 1.00, 1.00, '341-01-32', 'IR Thermometer', NULL, NULL, NULL, NULL, NULL, '2021-08-17 23:55:16', NULL, 's0001', NULL, 1, NULL, 0.00, 0.00, 0.00, NULL, NULL, NULL, 0);
INSERT INTO `product` VALUES (26001, 1, 1, 4, 3, 22, 22.00, 222.00, 'dfdsf', 'dfdsfdf', NULL, NULL, NULL, NULL, NULL, '2021-10-28 18:11:06', NULL, '', NULL, 1, 5368, 22.00, 222.00, 0.00, 'Y', 3, '', 0);
INSERT INTO `product` VALUES (26002, 2, 2, 4, 3, 1, 200.00, 0.00, '001', 'กระเป๋าคาดเอว', NULL, NULL, NULL, NULL, NULL, '2021-11-27 14:26:14', NULL, '', NULL, 1, 1200, 2.00, 500.00, 0.00, 'Y', 4, '', 0);
INSERT INTO `product` VALUES (26003, 1, 2, 2, 1, 1, 500.00, 2.00, '002', 'กระติกน้ำ', NULL, NULL, NULL, NULL, NULL, '2021-12-02 11:02:56', NULL, '', NULL, 1, 1500, 2.00, 500.00, 0.00, 'Y', 2, '', 0);
INSERT INTO `product` VALUES (26004, 1, 1, 4, 3, 0, 0.00, 0.00, '003', 'กระติกน้ำ', NULL, NULL, NULL, NULL, NULL, '2021-12-02 11:15:49', NULL, '', NULL, 1, 0, 0.00, 0.00, 0.00, 'Y', -1, '', 0);
INSERT INTO `product` VALUES (26005, 1, 1, 4, 3, 0, 0.00, 0.00, '003', 'กระติกน้ำ', NULL, NULL, NULL, NULL, NULL, '2021-12-02 11:18:40', NULL, '', NULL, 1, 0, 0.00, 0.00, 0.00, 'Y', -1, '', 0);
INSERT INTO `product` VALUES (26006, 1, 1, 4, 3, 0, 0.00, 0.00, '003', 'กระติกน้ำ', NULL, NULL, NULL, NULL, NULL, '2021-12-02 11:20:08', NULL, '', NULL, 1, 0, 0.00, 0.00, 0.00, 'Y', -1, '', 0);

-- ----------------------------
-- Table structure for producttype
-- ----------------------------
DROP TABLE IF EXISTS `producttype`;
CREATE TABLE `producttype`  (
  `ID` int(10) UNSIGNED NOT NULL,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ชื่อย่อ',
  `NAME_TH` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NAME` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `REMARK` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'remark delete',
  `HISTORY` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'ประวัติการแก้ไข คั่นด้วย,',
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of producttype
-- ----------------------------
INSERT INTO `producttype` VALUES (1, 'P11', NULL, 'detecter', NULL, NULL, '2021-07-31 14:50:28', NULL, 's0001', NULL, 1);
INSERT INTO `producttype` VALUES (2, 'Z5', 'เครื่องจับสัญญาณ', 'tuner', NULL, NULL, '2021-07-31 14:50:28', NULL, 's0001', NULL, 1);

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project`  (
  `NAME` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `TITLE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`NAME`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('appscal', 'ระบบบริหารจัดการเครื่องมือสอบเทียบ BU-3 <br> สมาคมส่งเสริมเทคโนโลยี ไทย-ญี่ปุ่น');

-- ----------------------------
-- Table structure for promotion
-- ----------------------------
DROP TABLE IF EXISTS `promotion`;
CREATE TABLE `promotion`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `discount_type` enum('percentage','flat') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'flat',
  `discount_value` decimal(15, 2) NOT NULL DEFAULT 0.00,
  `start_date` date NULL DEFAULT NULL,
  `end_date` date NULL DEFAULT NULL,
  `active` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'yes',
  `created_at` timestamp NULL DEFAULT NULL,
  `promotion_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'promotion' COMMENT 'promotion,voucher ',
  `voucher_code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of promotion
-- ----------------------------

-- ----------------------------
-- Table structure for quotation
-- ----------------------------
DROP TABLE IF EXISTS `quotation`;
CREATE TABLE `quotation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_alias` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `document_date` date NULL DEFAULT NULL COMMENT 'วันที่เอกสาร',
  `code` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `parent_id` int(11) NULL DEFAULT 0 COMMENT 'อ้างอิงใบก่อนหน้า',
  `revise_seq` int(10) NOT NULL DEFAULT 0 COMMENT 'จำนวนครั้ง revise',
  `revise_code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `revise_by` int(20) NULL DEFAULT 0,
  `revise_at` datetime NULL DEFAULT NULL,
  `revise_note` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  `customertype_id` int(11) NULL DEFAULT NULL,
  `quotation_type` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `agent_id` int(11) NULL DEFAULT NULL,
  `agent_name` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sender_department` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender_email` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sender_tel` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `credit_day` int(10) NULL DEFAULT 0,
  `credit_id` int(11) NULL DEFAULT NULL,
  `statusservice_id` int(11) NULL DEFAULT NULL,
  `receive_member_id` int(11) NULL DEFAULT NULL COMMENT 'พนักงานที่รับ',
  `note_customers` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT 'Note ลูกค้า',
  `company_cert_id` int(11) NULL DEFAULT NULL COMMENT 'บริษัท (Cert)',
  `request_quotation_id` int(11) NULL DEFAULT NULL COMMENT 'เลขที่ขอใบเสนอราคาอ้างอิง',
  `cash_id` int(11) NULL DEFAULT NULL,
  `checkbox` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date_start` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `user_start` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `cert_address_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_address_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `cert_address_zipcode` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_address_phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cert_address_province` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_detail` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `address_province` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_zipcode` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_phone` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address_map` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `vat_cal` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'no',
  `vat_percent` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0.00',
  `vat_total` float(15, 2) NULL DEFAULT 0.00,
  `total_price` decimal(15, 2) NULL DEFAULT 0.00,
  `total_qty` float(10, 2) NULL DEFAULT 1.00,
  `grand_total` decimal(15, 2) NULL DEFAULT 0.00,
  `request_quotation_code` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'เลขที่ขอใบเสนอราคาอ้างอิง',
  `quotation_status` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'pending' COMMENT 'สถานะใบเสนอราคา',
  `approve_user` int(11) NULL DEFAULT 0,
  `approve_time` int(20) NULL DEFAULT 0,
  `approve_status` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `total_discount` decimal(15, 2) NULL DEFAULT 0.00,
  `cancel_remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `discount_other` decimal(15, 2) NULL DEFAULT 0.00,
  `revise_active` tinyint(1) NULL DEFAULT 0,
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `approver_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'รายชื่อผุ้อนุมัติแสดงบนเอกสาร',
  `approver_position` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ตำแหน่งผู้อนุมัติที่แสดงบนเอกสาร',
  `discount_promotion` decimal(15, 2) NULL DEFAULT 0.00,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 95 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quotation
-- ----------------------------
INSERT INTO `quotation` VALUES (80, 'quotation', '2021-11-17', 'P21110001', 0, 0, NULL, 0, NULL, '', 8, 1, 'P', 65, 'อินดัสทรี่', 'นายบี', 'บริการหลังการขาย', 'email@email.com', '026666666', 7, 0, 13, 2, '', 29, 0, 5, '', '2021-11-17 13:58:14', NULL, 2, 0, 3, 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', '12130', '', 'ปทุมธานี', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'no', '0.00', NULL, 1550.00, 1.00, 0.00, '', '13', 0, 0, 'pending', 100.00, 'ยกเลิกเพื่อเปิดใหม่', 0.00, 0, NULL, NULL, NULL, 0.00);
INSERT INTO `quotation` VALUES (81, 'quotation', '2021-11-17', 'S21110001', 0, 0, NULL, 0, NULL, '', 2, 1, 'S', 58, 'สายฟ้า ไพรวรรณ์', 'นายซี', 'บริการหลังการขาย', 'sureerat.s@sirivalai.co.th', '028888888', 0, 0, 13, 2, '', 19, 0, 1, '', '2021-11-17 15:06:30', NULL, 2, 0, 1, 'ฟาร์มโชคชัย  จำกัด', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', '12130', '', 'ปทุมธานี', 'ฟาร์มโชคชัย  จำกัด', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', 'ปทุมธานี', '12130', '0105521023304', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'no', '0.00', NULL, 9100.00, 1.00, 0.00, '', '13', 2, 1637136574, 'approved', 100.00, NULL, 0.00, 0, NULL, NULL, NULL, 0.00);
INSERT INTO `quotation` VALUES (82, 'quotation', '2021-11-27', 'P21110002', 0, 0, NULL, 0, NULL, '', 8, 1, 'P', 65, 'อินดัสทรี่', 'อินดัสทรี่', '', '', '0107538000533', 0, 0, 0, 2, '', 30, 0, 0, '', '2021-11-27 14:27:44', '2021-12-02 10:59:09', 2, 2, 1, '', '', '', '', '', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 868.00, 12400.00, 1.00, 13268.00, '', '13', 0, 0, 'draft', 0.00, NULL, 100.00, 0, NULL, NULL, NULL, 0.00);
INSERT INTO `quotation` VALUES (83, 'quotation', '2021-11-27', 'P21110002', 82, 1, 'P21110002', 2, '2021-12-10 13:52:27', 'เพิ่มระบบหมายเหตุ', 8, 1, 'P', 65, 'อินดัสทรี่', 'อินดัสทรี่', '', '', '0107538000533', 0, 0, 0, 2, '', 30, 0, 0, '', '2021-12-10 13:52:27', '2021-12-10 14:57:48', 2, 2, 1, '', '', '', '', '', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 868.00, 12400.00, 1.00, 13268.00, '', '13', 0, 0, 'draft', 0.00, NULL, 100.00, 1, '1. ลูกค้าจะต้องชำระเงินก่อนรังสินค้า||3. คืนนี้จำทำให้ตั้งค่าหมายเหตุได้|4. คืนนี้ทำให้ตั้งค่าหมายเหตุได้', NULL, NULL, 0.00);
INSERT INTO `quotation` VALUES (84, 'quotation', '2021-12-16', 'P21120001', 0, 0, NULL, 0, NULL, '', 8, 1, 'P', 66, 'สายฟ้า ไพรวรรณ์', 'อินดัสทรี่', '', '', '0107538000533', 0, 0, 0, 2, '', 29, 0, 1, '', '2021-12-16 10:57:57', '2022-01-06 15:43:12', 2, 2, 1, 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', '12130', '', 'ปทุมธานี', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 98.00, 1400.00, 1.00, 1498.00, '', '13', 0, 0, 'pending', 0.00, NULL, 0.00, 0, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', NULL, NULL, 0.00);
INSERT INTO `quotation` VALUES (87, 'quotation', '2021-12-16', 'P21120001', 84, 1, 'P21120001', 2, '2022-01-06 15:50:41', 'ทดสอบแก้ไขหมายเหตุตามประเภทของใบเสนอราคา', 8, 1, 'P', 66, 'สายฟ้า ไพรวรรณ์', 'อินดัสทรี่', '', '', '0107538000533', 0, 0, 0, 2, '', 30, 0, 1, '', '2022-01-06 15:50:41', '2022-01-06 15:59:59', 2, 2, 1, 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', '12130', '', 'ปทุมธานี', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 98.00, 1400.00, 1.00, 1498.00, '', '13', 0, 0, 'draft', 0.00, NULL, 0.00, 1, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', NULL, NULL, 0.00);
INSERT INTO `quotation` VALUES (88, 'quotation', '2022-01-06', 'P2210001', 0, 0, NULL, 0, NULL, '', 9, 5, 'P', 102, 'ยุทธพงค์  นาพิกุล', 'อินดัสทรี่', '', '', '0107538000533', 0, 0, 0, 2, '', 30, 0, 0, '', '2022-01-06 17:15:23', '2022-01-19 16:09:12', 2, 2, 1, '', '', '', '', '', 'test', 'test', 'จังหวัด', '1111111', 'โทรศัพท์', 'map', 'yes', '7', 0.00, 0.00, 1.00, 0.00, '', '13', 0, 0, 'draft', 0.00, NULL, 0.00, 1, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายไอที', 0.00);
INSERT INTO `quotation` VALUES (89, 'quotation', '2021-11-17', 'S21110001', 81, 0, NULL, 0, NULL, '', 2, 1, 'S', 56, 'สายฟ้า ไพรวรรณ์', 'นายซี', 'บริการหลังการขาย', 'sureerat.s@sirivalai.co.th', '028888888', 0, 0, 13, 2, '', 19, 0, 1, '', '2022-05-23 03:38:46', NULL, 2, 0, 1, 'ฟาร์มโชคชัย  จำกัด', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', '12130', '', 'ปทุมธานี', 'ฟาร์มโชคชัย  จำกัด', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', 'ปทุมธานี', '12130', '0105521023304', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 665.00, 9500.00, 1.00, 10165.00, '', '13', 0, 0, 'draft', 0.00, NULL, 0.00, 0, '', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายขาย', 0.00);
INSERT INTO `quotation` VALUES (90, 'quotation', '2021-11-17', 'S21110001', 81, 0, NULL, 0, NULL, '', 2, 1, 'S', 55, 'สายฟ้า ไพรวรรณ์', 'นายซี', 'บริการหลังการขาย', 'sureerat.s@sirivalai.co.th', '028888888', 0, 0, 13, 2, '', 19, 0, 1, '', '2022-05-23 03:53:35', NULL, 2, 0, 1, 'ฟาร์มโชคชัย  จำกัด', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', '12130', '', 'ปทุมธานี', 'ฟาร์มโชคชัย  จำกัด', 'สำนักงานใหญ่ ลำลูกกา ปทุมธานี คูคต', 'ปทุมธานี', '12130', '0105521023304', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 630.00, 9000.00, 1.00, 9630.00, '', '14', 0, 0, 'draft', 0.00, 'ยกเลิก', 0.00, 1, '', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายขาย', 0.00);
INSERT INTO `quotation` VALUES (91, 'quotation', '2022-05-23', 'P2205-0001', 0, 0, NULL, 0, NULL, '', 8, 1, 'P', 100, 'สายฟ้า ไพรวรรณ์', 'สายฟ้า ไพรวรรณ์', '', '', '0107538000533,098653254', 0, 0, 13, 2, '', 53, 0, 0, '', '2022-05-23 04:17:36', NULL, 2, 0, 1, '', '', '', '', '', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 109.00, 1560.00, 1.00, 1669.20, '', '12', 2, 1653279498, 'approved', 0.00, NULL, 0.00, 0, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายขาย', 0.00);
INSERT INTO `quotation` VALUES (92, 'quotation', '2022-05-23', 'P2205-0001', 91, 1, NULL, 0, NULL, '', 8, 1, 'P', 100, 'สายฟ้า ไพรวรรณ์', 'สายฟ้า ไพรวรรณ์', '', '', '0107538000533,098653254', 0, 0, 13, 2, '', 53, 0, 0, '', '2022-05-23 04:19:02', NULL, 2, 0, 1, '', '', '', '', '', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 424.00, 6060.00, 1.00, 6484.20, '', '13', 0, 0, 'draft', 0.00, NULL, 0.00, 0, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายขาย', 0.00);
INSERT INTO `quotation` VALUES (93, 'quotation', '2022-05-23', 'P2205-0001', 91, 2, 'P2205-0001', 2, '2022-05-23 04:55:51', '5555555555555', 8, 1, 'P', 100, 'สายฟ้า ไพรวรรณ์', 'สายฟ้า ไพรวรรณ์', '', '', '0107538000533,098653254', 0, 0, 13, 2, '', 53, 0, 0, '', '2022-05-23 04:55:51', NULL, 2, 0, 1, '', '', '', '', '', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 109.00, 1560.00, 1.00, 1669.20, '', '13', 0, 0, 'pending', 0.00, NULL, 0.00, 0, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายขาย', 0.00);
INSERT INTO `quotation` VALUES (94, 'quotation', '2022-05-23', 'P2205-0001', 93, 3, 'P2205-0001', 2, '2022-05-23 04:56:51', 'ทดสอบรันเลข revise ใหม่', 8, 1, 'P', 100, 'สายฟ้า ไพรวรรณ์', 'สายฟ้า ไพรวรรณ์', '', '', '0107538000533,098653254', 0, 0, 0, 2, '', 53, 0, 0, '', '2022-05-23 04:56:51', '2022-05-23 05:04:01', 2, 2, 1, '', '', '', '', '', 'ทิพยประกันภัย จำกัด (มหาชน)', 'สำนักงานใหญ่ เขตยานนาวา 1115 กรุงเทพมหานคร พระราม 3 ช่องนนทรี', 'กรุงเทพมหานคร', '12130', '0958658745,089658745', 'https://goo.gl/maps/YWyEH8SxEENfLYk89', 'yes', '7', 109.00, 1560.00, 1.00, 1669.20, '', '13', 0, 0, 'draft', 0.00, NULL, 0.00, 1, '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', 'นายยุทธพงค์ นาพิกุล', 'ผู้จัดการฝ่ายขาย', 0.00);

-- ----------------------------
-- Table structure for quotation_items
-- ----------------------------
DROP TABLE IF EXISTS `quotation_items`;
CREATE TABLE `quotation_items`  (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `quotation_id` int(11) NOT NULL,
  `instument_status` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'อุปกรณ์',
  `product_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `product_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `barcode_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufaturer_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `manufaturer_id` int(11) NULL DEFAULT 0,
  `model` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'รุ่น/แบบ',
  `serialnumber` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `id_no` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `test_point` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `lab_id` int(11) NULL DEFAULT NULL,
  `sublab_id` int(11) NULL DEFAULT NULL,
  `point` int(11) NULL DEFAULT NULL,
  `point_price` decimal(10, 2) NULL DEFAULT NULL,
  `hour` varchar(6) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range_value` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `range_price` decimal(15, 2) NULL DEFAULT NULL,
  `unit_id` int(11) NULL DEFAULT NULL,
  `unit_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pickup_date` date NULL DEFAULT NULL COMMENT 'วันที่ให้ไปรับ',
  `pono` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `quotation_number` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'เลขที่ใบเสนอราคา',
  `days_cer` date NULL DEFAULT NULL,
  `ems_date` date NULL DEFAULT NULL,
  `ems_receive` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'N',
  `date_start` timestamp NULL DEFAULT NULL,
  `date_update` timestamp NULL DEFAULT NULL,
  `user_start` int(11) NOT NULL,
  `user_update` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `requestservice_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `maker_id` int(11) NULL DEFAULT NULL,
  `qty` int(11) NULL DEFAULT 1 COMMENT 'จำนวนรายการ',
  `price` decimal(15, 2) NULL DEFAULT 0.00,
  `discount` float(15, 2) NULL DEFAULT 0.00,
  `total` decimal(15, 2) NULL DEFAULT 0.00,
  `qty_day` int(11) NULL DEFAULT NULL COMMENT 'จำนวนวันในการสอบเทียบ',
  PRIMARY KEY (`item_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 167 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of quotation_items
-- ----------------------------

-- ----------------------------
-- Table structure for request_quotation
-- ----------------------------
DROP TABLE IF EXISTS `request_quotation`;
CREATE TABLE `request_quotation`  (
  `ID` int(11) NOT NULL,
  `REQUEST_CODE` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `TITLE` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `DETAIL` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `CREATED_BY` int(11) NULL DEFAULT NULL,
  `CREATED_AT` datetime NULL DEFAULT NULL COMMENT '\'0000-00-00\'',
  `CONTACT_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'ที่อยู่ในการให้ไปรับเครื่องมือ',
  `CONTACT_LINE_ID` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `CONTACT_NAME` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `CONTACT_EMAIL` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL DEFAULT '',
  `CONTACT_PHONE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '',
  `REQUEST_STATUS` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL DEFAULT '' COMMENT 'penging, canceled, complated,',
  `TOOL_DELIVERY_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'ที่อยู่จัดส่งเครื่องมือ',
  `CERTIFICATE_DELIVERY_ADDRESS` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL COMMENT 'ที่อยู่จัดส่งใบรับรอง'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_bin ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of request_quotation
-- ----------------------------

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_US` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DESCRIPTION` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DESCRIPTION_US` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NOEDIT` int(11) NULL DEFAULT NULL COMMENT '1=not edit data',
  `STATUS_OFFVIEW` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=off',
  `REMARK_DELETE` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'administrator', 'admin', 'admin', NULL, NULL, '2023-11-27 01:08:52', NULL, NULL, NULL, 1, NULL, NULL);

-- ----------------------------
-- Table structure for roles_control
-- ----------------------------
DROP TABLE IF EXISTS `roles_control`;
CREATE TABLE `roles_control`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ROLES_ID` int(11) NULL DEFAULT NULL,
  `ROLES_ID_CHILD` int(11) NULL DEFAULT NULL COMMENT 'id roles child',
  `PERMIT_ID` int(11) NULL DEFAULT NULL,
  `ARIA` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ประเภทการตั้งระยะเวลา ban,assign	',
  `PERIOD_BEGIN` datetime NULL DEFAULT NULL COMMENT 'ระยะเวลาเริ่มต้น',
  `PERIOD_END` datetime NULL DEFAULT NULL COMMENT 'ระยะเวลาสิ้นสุด',
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS_OFFVIEW` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=off',
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `ROLES_ID`(`ROLES_ID`) USING BTREE,
  INDEX `PERMIT_ID`(`PERMIT_ID`) USING BTREE,
  INDEX `ROLES_ID_CHILD`(`ROLES_ID_CHILD`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_control
-- ----------------------------

-- ----------------------------
-- Table structure for roles_focus
-- ----------------------------
DROP TABLE IF EXISTS `roles_focus`;
CREATE TABLE `roles_focus`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STAFF_CHILD` int(11) NULL DEFAULT NULL COMMENT 'child',
  `STAFF_OWNER` int(11) NULL DEFAULT NULL COMMENT 'ผู้ดูแล',
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles_focus
-- ----------------------------

-- ----------------------------
-- Table structure for section
-- ----------------------------
DROP TABLE IF EXISTS `section`;
CREATE TABLE `section`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERS` int(11) NULL DEFAULT NULL,
  `NAME` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS_OFFVIEW` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '1=off',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 32 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of section
-- ----------------------------
INSERT INTO `section` VALUES (1, NULL, 'ฝ่าย CMK', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (2, NULL, 'ฝ่ายเบเกอรี่', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (3, NULL, 'ฝ่ายโชคชัยสเต็คเฮ้าส์ฟาร์', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (4, NULL, 'ฝ่ายโชคชัยสเต็คเฮ้าส์รังส', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (5, NULL, 'ฝ่ายโรงงานนม', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (6, NULL, 'ฝ่ายกฎหมาย', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (7, NULL, 'ฝ่ายการเงิน', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (8, NULL, 'ฝ่ายการตลาด', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (9, NULL, 'ฝ่ายขาย', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (10, NULL, 'ฝ่ายจัดซื้อ', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (11, NULL, 'ฝ่ายดูแลทรัพย์สินส่วนตัว', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (12, NULL, 'ฝ่ายท่องเที่ยว', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (13, NULL, 'ฝ่ายบริการเครื่องกลเกษตร', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (14, NULL, 'ฝ่ายบริหารบุคคล', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (15, NULL, 'ฝ่ายบัญชี', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (16, NULL, 'ฝ่ายปศุสัตว์', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (17, NULL, 'ฝ่ายพืชสวนไม้ผล', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (18, NULL, 'ฝ่ายพืชอาหารสัตว์', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (19, NULL, 'ฝ่ายวิศวกรรม', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (20, NULL, 'ฝ่ายสำนักงาน', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (21, NULL, 'ฝ่ายสำนักงานฟาร์ม', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);
INSERT INTO `section` VALUES (22, NULL, 'ศูนย์ฝึกสุนัขโชคชัย', '2023-07-04 01:21:44', NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT 'general',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'general', 'vat_rate', '7', 'อัตราภาษีมูลค่าเพิ่ม');
INSERT INTO `settings` VALUES (2, 'quotation', 'quotation_remark_permanent', '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ|3. สมาคมฯ เสียภาษีเงินได้พึงประเมินในมาตรา 40(8) จึงมิได้อยู่ในข่ายต้องหักภาษี ณ ที่จ่าย ตามคำสั่งกรรมสรรพกรที่ ทป.101/2544 ซึ่งมีผลบังคับใช้ตั้งแต่วันที่ 16 กรกฎาคม 2544', 'หมายเหตุใบเสนอราคา');
INSERT INTO `settings` VALUES (3, 'quotation', 'quotation_approver_name', 'นายยุทธพงค์ นาพิกุล', 'ชื่อผู้อนุมัติใบเสนอราคา');
INSERT INTO `settings` VALUES (4, 'quotation', 'quotation_approver_position', 'ผู้จัดการฝ่ายขาย', 'ตำแหน่งผู้อนุมัตติใบเสนอราคา');
INSERT INTO `settings` VALUES (5, 'request_service', 'bill_remark_default', '', 'หมายเหตุใบขอรับบริการ');
INSERT INTO `settings` VALUES (6, 'quotation', 'quotation_remark_onsite', '1. ค่าบริการข้างต้นเป็นเพียงราคาประมาณเท่านั้น ค่าใช้จ่ายที่เกิดขื้นจริงขื้นอยู่กับการสอบเทียบ/ปรับเทียบ จำนวนจุดทดสอบ Range หรือ Accuracy ของเครื่องมือนั้น ๆ|2. ทางสมาคมฯ จะไม่รับผิดชอบต่อความเสียหายใด ๆ ที่อาจเกิดขื้นจากความล่าช้า และอันเนื่องมาจากสภาพอายุการใช้งานของอุปกรณ์/เครื่องมือหรือเหตุสุดวิสัยที่อยู่นอกเหนือความรับผิดชอบของทางสมาคมฯ', NULL);
INSERT INTO `settings` VALUES (7, 'quotation', 'quotation_promotion', 'โปรโมชั่น', NULL);
INSERT INTO `settings` VALUES (8, 'bill', 'bill_remark_default', '', NULL);

-- ----------------------------
-- Table structure for staff
-- ----------------------------
DROP TABLE IF EXISTS `staff`;
CREATE TABLE `staff`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODE` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `EMPLOYEE_ID` int(11) NULL DEFAULT NULL,
  `USERNAME` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ARIA` varchar(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ประเภทการตั้งระยะเวลา ban,assign	',
  `PERIOD_BEGIN` datetime NULL DEFAULT NULL COMMENT 'ระยะเวลาเริ่มต้น',
  `PERIOD_END` datetime NULL DEFAULT NULL COMMENT 'ระยะเวลาสิ้นสุด',
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `VERIFY` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'staff id',
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '1',
  `permiss_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `EMPLOYEE_ID`(`EMPLOYEE_ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of staff
-- ----------------------------
INSERT INTO `staff` VALUES (1, NULL, 0, 'madmin', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL, NULL, '2023-01-31 08:56:02', NULL, '2023-01-31 13:04:05', '1', '1', '1', NULL);

-- ----------------------------
-- Table structure for status_alias
-- ----------------------------
DROP TABLE IF EXISTS `status_alias`;
CREATE TABLE `status_alias`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDERS` int(11) NULL DEFAULT NULL,
  `NAME` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `NAME_US` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ALIAS` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'ประเภทสถานะ',
  `DATE_STARTS` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of status_alias
-- ----------------------------
INSERT INTO `status_alias` VALUES (1, NULL, 'รอ', NULL, 'document', '2023-02-06 07:05:17', NULL, '1', NULL, 1);
INSERT INTO `status_alias` VALUES (2, NULL, 'กำลัง', NULL, 'document', '2023-02-06 07:05:17', NULL, '1', NULL, 1);
INSERT INTO `status_alias` VALUES (3, NULL, 'สำเร็จ', NULL, 'document', '2023-02-06 07:05:17', NULL, '1', NULL, 1);
INSERT INTO `status_alias` VALUES (4, NULL, 'ลบ', NULL, 'document', '2023-02-06 07:05:17', NULL, '1', NULL, 1);

-- ----------------------------
-- Table structure for statusservice
-- ----------------------------
DROP TABLE IF EXISTS `statusservice`;
CREATE TABLE `statusservice`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `document_alias` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sort` int(3) NULL DEFAULT 0,
  `status_code` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of statusservice
-- ----------------------------
INSERT INTO `statusservice` VALUES (1, 'request_service', 0, NULL, 'ปกติ', 'normal', 1);
INSERT INTO `statusservice` VALUES (2, 'request_service', 0, NULL, 'รอ PO / ใบสั่งอ้าง', 'Waiting PO / quote order', 1);
INSERT INTO `statusservice` VALUES (3, 'request_service', 0, NULL, 'รอรวม Invoice', 'Wait to include an invoice', 1);
INSERT INTO `statusservice` VALUES (4, 'request_service', 0, NULL, 'รอ Clear ราคา', 'Wait Clear Price', 1);
INSERT INTO `statusservice` VALUES (5, 'request_service', 0, NULL, 'ยกเลิก', 'cancel', 1);
INSERT INTO `statusservice` VALUES (6, 'request_service', 0, NULL, 'ออก lnv ล่วงหน้า', 'Exit lnv in advance', 1);
INSERT INTO `statusservice` VALUES (7, 'quotation', 0, 'loss', 'Loss', 'Loss', 1);
INSERT INTO `statusservice` VALUES (8, 'quotation', 0, 'completed', 'Completed', 'Completed', 1);
INSERT INTO `statusservice` VALUES (9, 'quotation', 0, 'waiting_invoice', 'Waiting Invoice', 'Waiting Invoice', 1);
INSERT INTO `statusservice` VALUES (10, 'quotation', 0, 'waiting_jobno', 'Waiting Job No', 'Waiting Job No', 1);
INSERT INTO `statusservice` VALUES (11, 'quotation', 0, 'waiting_po', 'Waiting PO', 'Waiting PO', 1);
INSERT INTO `statusservice` VALUES (12, 'quotation', 0, 'submit_quotation', 'Submit Quotation', 'Submit Quotation', 1);
INSERT INTO `statusservice` VALUES (13, 'quotation', 0, 'pending', 'Pending', 'Pending', 1);
INSERT INTO `statusservice` VALUES (14, 'quotation', 0, 'canceled', 'Canceled', 'Canceled', 1);
INSERT INTO `statusservice` VALUES (15, 'request_service_progress', 0, 'in_progress', 'อยู่ระหว่างดำเนินการ', 'In Progress', 1);
INSERT INTO `statusservice` VALUES (16, 'request_service_progress', 0, 'completed', 'เสร็จแล้ว', 'Completed', 1);
INSERT INTO `statusservice` VALUES (17, 'tracking_status', 1, NULL, 'ออก label', 'ออก label', 1);
INSERT INTO `statusservice` VALUES (18, 'tracking_status', 2, NULL, 'รับเข้า lab', 'รับเข้า lab', 1);
INSERT INTO `statusservice` VALUES (19, 'tracking_status', 3, NULL, 'รับรองผล', 'รับรองผล', 1);
INSERT INTO `statusservice` VALUES (20, 'tracking_status', 4, NULL, 'ออก Cert', 'ออก Cert', 1);
INSERT INTO `statusservice` VALUES (21, 'tracking_status', 5, NULL, 'ออกใบแจ้งหนี้', 'ออกใบแจ้งหนี้', 1);
INSERT INTO `statusservice` VALUES (22, 'tracking_status', 6, NULL, 'ลูกค้าชำระ', 'ลูกค้าชำระ', 1);
INSERT INTO `statusservice` VALUES (23, 'tracking_status', 7, NULL, 'รอส่งเครื่องมือ', 'รอส่งเครื่องมือ', 1);

-- ----------------------------
-- Table structure for sublab
-- ----------------------------
DROP TABLE IF EXISTS `sublab`;
CREATE TABLE `sublab`  (
  `ID` smallint(6) UNSIGNED NOT NULL AUTO_INCREMENT,
  `LAB_ID` smallint(6) NOT NULL,
  `CODE` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NAME` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `NAME_US` varchar(150) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `AMBIENTTEMPMIN` decimal(6, 2) NULL DEFAULT NULL,
  `AMBIENTTEMPMAX` decimal(6, 2) NULL DEFAULT NULL,
  `RELATIVEHUMDITYMIN` decimal(6, 2) NULL DEFAULT NULL,
  `RELATIVEHUMDITYMAX` decimal(6, 2) NULL DEFAULT NULL,
  `ATMOSPHERICMIN` decimal(6, 2) NULL DEFAULT NULL,
  `ATMOSPHERICMAX` decimal(6, 2) NULL DEFAULT NULL,
  `PROJECTCODE` varchar(15) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  `INTERVALTIME` decimal(5, 2) NULL DEFAULT NULL,
  `NOSHOWCER` tinyint(1) NULL DEFAULT NULL,
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `USER_STARTS` smallint(6) NULL DEFAULT NULL,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_UPDATE` smallint(6) NULL DEFAULT NULL,
  `STATUS` varchar(1) CHARACTER SET utf8 COLLATE utf8_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`ID`) USING BTREE,
  INDEX `LAB_ID`(`LAB_ID`) USING BTREE,
  INDEX `CODE`(`CODE`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 84 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sublab
-- ----------------------------
INSERT INTO `sublab` VALUES (1, 2, 'C', 'ค่าบริการรถรับ-ส่งเครื่องมือ/ค่าบริการขนส่ง / ค่าแก้ Cert.', 'CentralOffice', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '399', 0.00, NULL, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (2, 15, 'S', 'งานสอบเทียบนอกสถานที่ /ค่าอื่นๆ', 'On-Site Activities', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '350', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (3, 4, 'C-Asset', 'ครุภัณฑ์ (ส่วนกลาง)', 'Central Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '399', 0.00, NULL, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (4, 9, 'E', 'งานสอบเทียบไฟฟ้า', 'Electrical Lab', 23.00, 2.00, 50.00, 10.00, 0.00, 0.00, '301', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (5, 9, 'PH', 'ห้องปฏิบัติการสอบเทียบแสง', 'Photometry Lab', 23.00, 2.00, 50.00, 15.00, 0.00, 0.00, '309', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (6, 10, 'L', 'งานสอบเทียบมิติ', 'Dimensional Lab', 20.00, 2.00, 50.00, 15.00, 0.00, 0.00, '302', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (7, 10, 'G', 'งานสอบเทียบเกจบล็อก', 'Gaug Block Lab', 20.00, 1.00, 50.00, 10.00, 0.00, 0.00, '310', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (8, 11, 'M', 'งานสอบเทียบตุ้มน้ำหนัก', 'Mass Lab', 23.00, 2.00, 50.00, 15.00, 1010.00, 10.00, '303', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (9, 11, 'B', 'งานสอบเทียบเครื่องชั่ง/แรง/Durometer', 'Balance Lab', 23.00, 2.00, 50.00, 15.00, 1010.00, 10.00, '304', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (10, 12, 'F', 'ห้องปฏิบัติการสอบเทียบแรงบิด', 'Torque Lab', 23.00, 2.00, 50.00, 20.00, 1010.00, 10.00, '306', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (11, 13, 'P', 'ห้องปฏิบัติการสอบเทียบความดัน', 'Pressure Lab', 23.00, 2.00, 50.00, 15.00, 1013.00, 10.00, '305', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (12, 14, 'T', 'งานสอบเทียบอุณหภูมิ (Low Acc)', 'Temperature Lab(Low)', 25.00, 3.00, 50.00, 20.00, 0.00, 0.00, '307', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (13, 14, 'I', 'งานสอบเทียบอุณหภูมิ (High Acc)', 'Temperature Lab(High)', 25.00, 3.00, 50.00, 20.00, 0.00, 0.00, '308', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (14, 15, 'MD', 'ห้องปฏิบัติการสอบเทียบเครื่องมือแพทย์', 'Medical Lab', 23.00, 3.00, 50.00, 20.00, 0.00, 0.00, '340', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (15, 15, 'LM', 'งานสอบเทียบ Temp Chamber,Bath  ที่ส่งเข้าสสท. ของแผนก Onsite', 'InHouse(TempChamber)', 25.00, 3.00, 50.00, 20.00, 0.00, 0.00, '351', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (16, 15, 'TM', 'งานนอกสถานที่(อุณหภูมิ)', 'OnSite(Temperature)', 26.00, 10.00, 50.00, 30.00, 0.00, 0.00, '352', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (17, 15, 'MM', 'งานสอบเทียบนอกสถานที่ (เครื่องชั่ง)', 'OnSite(Balance)', 25.00, 10.00, 60.00, 30.00, 0.00, 0.00, '353', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (18, 15, 'DM', 'งานสอบเทียบนอกสถานที่(มิติ)', 'OnSite(Dimensional)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '353', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (19, 15, 'FM', 'งานสอบเทียบนอกสถานที่(แรง)', 'OnSite(Force)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '353', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (20, 15, 'HM', 'งานสอบเทียบนอกสถานที่(ความชื้น)', 'OnSite(Humidity)', 26.00, 10.00, 50.00, 30.00, 0.00, 0.00, '352', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (21, 15, 'PM', 'งานสอบเทียบนอกสถานที่(ความดัน)', 'OnSite(Pressure)', 23.00, 5.00, 50.00, 30.00, 0.00, 0.00, '352', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (22, 15, 'MDO', 'งานสอบเทียบนอกสถานที่ (เครื่องมือแพทย์)', 'OnSite(Medical)', 25.00, 10.00, 60.00, 30.00, 0.00, 0.00, '340', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (23, 16, 'H', 'งานสอบเทียบความชื้น', 'Humidity Lab', 25.00, 3.00, 50.00, 20.00, 0.00, 0.00, '374', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (24, 18, 'CG', 'งานสอบเทียบปริมตร (Glassware)', 'Volumetric Lab', 22.00, 2.50, 50.00, 10.00, 0.00, 0.00, '371', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (25, 18, 'CM', 'งานสอบเทียบปริมาตร (Micro Pipet)', 'Volumetric Lab', 25.00, 2.00, 50.00, 10.00, 0.00, 0.00, '371', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (26, 17, 'CC', 'งานสอบเทียบเคมี (Conductivity Meter)', 'Chem(Conductivity)', 25.00, 2.50, 50.00, 15.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (27, 17, 'CP', 'งานสอบเทียบเคมี (pH Meter) / In-House', 'Chem(pH)', 25.00, 2.50, 50.00, 15.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (28, 17, 'CS', 'งานสอบเทียบเคมี (Spectrophotometer)  / In-House', 'Chem(Spectrophotometer)', 25.00, 2.50, 50.00, 15.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (29, 17, 'CR', 'งานสอบเทียบเคมี (Refractometer)', 'Chem(Refractometer)', 20.00, 2.00, 65.00, 20.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (30, 17, 'CA', 'งานสอบเทียบเคมี (Salt Meter) / In-House', 'Chem( Salt Meter)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (31, 17, 'CF', 'งานสอบเทียบเคมี (Centrifuge) / In-House', 'Chem(Centrifuge)', 25.00, 2.50, 50.00, 20.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (32, 17, 'CT', 'งานสอบเทียบเคมี (Turbidity)', 'Chem(Turbidity)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (33, 17, 'TW', 'งานสอบเทียบเคมี (DO Meter)', 'Chem(DO Meter)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (34, 17, 'CFO', 'งานสอบเทียบเคมี (Centrifuge) / On-site', 'OnSite(Centrifuge)', 25.00, 5.00, 60.00, 20.00, 0.00, 0.00, '373', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (35, 17, 'CSO', 'งานสอบเทียบเคมี (Spectrophotometer)  / On-site', 'Onsite(Spectro)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '373', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (36, 17, 'CPO', 'งานสอบเทียบเคมี (pH Meter)  / On-site', 'OnSite(pH)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '373', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (37, 17, 'CAO', 'งานสอบเทียบเคมี (AAS)  / On-site', 'OnSite(AAS)', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '373', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (38, 9, 'E-Asset', 'ครุภัณฑ์ (Lab ไฟฟ้า)', 'Electrical Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (39, 10, 'L-Asset', 'ครุภัณฑ์ (Lab L)', 'Dimensional Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (40, 11, 'M-Asset', 'ครุภัณฑ์ (Lab M)', 'Mass Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (41, 12, 'F-Asset', 'ครุภัณฑ์ (Lab Torque)', 'Torque Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (42, 13, 'P-Asset', 'ครุภัณฑ์ (Lab P)', 'Pressure Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (44, 15, 'S-Asset', 'ครุภัณฑ์ (OnSite)', 'On-Site Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (45, 16, 'H-Asset', 'ครุภัณฑ์ (Lab H)', 'Humidity Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (46, 17, 'CHEM-Asset', 'ครุภัณฑ์ (Lab Chem)', 'Chemical Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (47, 18, 'GW-Asset', 'ครุภัณฑ์ (Lab Glassware)', 'Glassware Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (48, 15, 'MD-Asset', 'ครุภัณฑ์ (Medical Lab)', 'Medical', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (49, 17, 'CN', 'งานสอบเทียบเคมี (Salinity Meter)', 'Chem(Salinity)', 20.00, 2.00, 65.00, 20.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (50, 19, 'PH', 'งานสอบเทียบแสง', 'Photometry Lab', 23.00, 2.00, 50.00, 15.00, 0.00, 0.00, '309', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (52, 19, 'FI', 'งานสอบเทียบ SPRT by Fixed Point', 'SPRT by Fixed Point Lab', 25.00, 3.00, 50.00, 20.00, 0.00, 0.00, '312', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (53, 19, 'PH-Asset', 'ครุภัณฑ์ (Lab Photometry)', 'PH-Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (55, 19, 'FI-Asset', 'ครุภัณฑ์ (SPRT)', 'SPRT Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (56, 20, 'EL', 'สอบเทียบมิติ สาขาระยอง', 'Dimension EasternSeaboard', 20.00, 2.00, 50.00, 15.00, 0.00, 0.00, '381', 7.00, NULL, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (57, 20, 'EL-Asset', 'พัสดุทั่วไป สาขาระยอง', 'EL-Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 7.00, NULL, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (58, 21, 'Apprentice', 'นักศึกษาฝึกงาน', 'Apprentice', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, NULL, 0.00, NULL, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (59, 17, 'TD', 'งานสอบเทียบเคมี (TDS Meter)', 'Chem (TDS Meter)', 23.00, 1.00, 50.00, 10.00, 0.00, 0.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (60, 22, 'MD', 'ห้องปฏิบัติการสอบเทียบเครื่องมือแพทย์', 'Medical Lab', 23.00, 3.00, 50.00, 20.00, 0.00, 0.00, '340', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (61, 23, 'ECS', 'โครงการพิเศษ ECS', 'Equicment Care Services', 25.00, 5.00, 50.00, 15.00, 1010.00, 10.00, NULL, 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (62, 17, 'CL', 'งานสอบเทียบเครื่องวัดแอลกอฮอล์', 'Alcohol (Chem)', 25.00, 2.00, 50.00, 10.00, 1010.00, 10.00, '372', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (63, 17, 'CCO', 'งานสอบเทียบเคมี (CCO)  / On-site', 'OnSite(Conduct)', 25.00, 2.00, 40.00, 10.00, 10.00, 10.00, '373', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (64, 23, '321-01', 'ค่าจ้างที่ปรึกษาโครงการจัดทำเครื่องมือประเมินสมรรถนะมาตรฐานอาชีพ สาขาวิชาชีพมาตรวิทยา ระยะที่ 1', 'TPQI', 20.00, 5.00, 55.00, 25.00, 1000.00, 13.00, '321', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (65, 23, '321-02', 'ค่าจ้างที่ปรึกษาโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขามาตรวิทยา ระยะที่ 2 ', 'TPQI', 25.00, 5.00, 50.00, 5.00, 1000.00, 13.00, '321', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (69, 23, '321-03', 'ค่าบริการโครงการพิเศษ ECS', 'ECS Services', 25.00, 10.00, 50.00, 10.00, 1010.00, 10.00, '321', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (71, 19, 'IR', 'งานสอบเทียบ Infrared Thermometer', 'Infrared Thermometer Lab', 25.00, 3.00, 50.00, 20.00, 0.00, 0.00, '311', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (72, 19, 'T-Asset', 'ครุภัณฑ์ (Lab T)', 'Temperature Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '311', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (73, 19, 'IR-Asset', 'ครุภัณฑ์ (Lab Infrared Thermometer)', 'Infrared Thermomete Asset', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '311', 0.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (74, 23, '321-05', 'โครงการทดสอบความชำนาญห้องปฏิบัติการ (Proficiency Testing)', 'Proficiency Testing', 25.00, 1.00, 50.00, 1.00, 1013.00, 1.00, '321', 1.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (75, 23, '321-04', 'ค่าจ้างที่ปรึกษาโครงการจัดทำมาตรฐานอาชีพและคุณวุฒิวิชาชีพ สาขามาตรวิทยา ระยะที่ 3', 'TPQI', 20.00, 1.00, 50.00, 1.00, 1015.00, 1.00, '321', 1.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (76, 23, '321-06', 'องค์กรรับรองสมรรถนะของบุคคลตามมาตรฐานอาชีพ', 'องค์กรรับรองสมรรถนะของบุคคลตามมาตรฐานอาชีพ', 25.00, 1.00, 50.00, 10.00, 1015.00, 50.00, '321', 1.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (78, 24, 'EH', 'Electrical (High Accuracy) งบพิเศษ', 'Electrical (High Accuracy)', 23.00, 2.00, 50.00, 10.00, 0.00, 0.00, '301H', 10.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (79, 17, 'CRO', 'งานสอบเทียบเคมี (Refractometer) / On-site', 'Onsiter(Refractometer)', 20.00, 2.00, 60.00, 20.00, 0.00, 0.00, '373', 7.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (82, 25, 'S', 'งานสอบเทียบนอกสถานที่ / ค่าบริการสอบเทียบนอกสถานที่', 'On-Site Activities', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '350-02', 7.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');
INSERT INTO `sublab` VALUES (83, 26, 'S', 'งานสอบเทียบนอกสถานที่ / ค่าเดินทาง', 'On-Site Activeties', 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, '350-01', 7.00, 0, '2023-12-25 09:32:57', NULL, NULL, NULL, '1');

-- ----------------------------
-- Table structure for unit
-- ----------------------------
DROP TABLE IF EXISTS `unit`;
CREATE TABLE `unit`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of unit
-- ----------------------------
INSERT INTO `unit` VALUES (1, 'เครื่อง', 'The machine', 1);
INSERT INTO `unit` VALUES (2, 'ตัว', 'Body', 1);
INSERT INTO `unit` VALUES (3, 'Channel', 'Channel', 1);
INSERT INTO `unit` VALUES (4, 'Function', 'Function', 1);
INSERT INTO `unit` VALUES (5, 'ชิ้น', 'Part', 1);
INSERT INTO `unit` VALUES (6, 'Set', 'Set', 1);

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads`  (
  `upload_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `model_type` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `model_id` int(11) NULL DEFAULT NULL,
  `folder` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `filename` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(120) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `extention` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `size` int(20) NULL DEFAULT NULL,
  `created_at` datetime NULL DEFAULT NULL,
  `active` tinyint(1) NULL DEFAULT 1,
  PRIMARY KEY (`upload_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of uploads
-- ----------------------------

-- ----------------------------
-- Table structure for worktype
-- ----------------------------
DROP TABLE IF EXISTS `worktype`;
CREATE TABLE `worktype`  (
  `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `NAME` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `NAME_TH` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `DATE_STARTS` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `DATE_UPDATE` datetime NULL DEFAULT NULL,
  `USER_STARTS` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `USER_UPDATE` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `STATUS` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=off,1=on',
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worktype
-- ----------------------------
INSERT INTO `worktype` VALUES (1, 'full time', 'ประจำ', '2021-08-02 12:25:02', NULL, 's0001', NULL, 1);
INSERT INTO `worktype` VALUES (2, 'part time', 'ชั่วคราว', '2021-08-02 12:25:02', NULL, 's0001', NULL, 1);

-- ----------------------------
-- Table structure for zone
-- ----------------------------
DROP TABLE IF EXISTS `zone`;
CREATE TABLE `zone`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nameEn` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `dateStart` timestamp NULL DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zone
-- ----------------------------
INSERT INTO `zone` VALUES (1, 'โซน A', 'Zone A', '2021-01-11 13:11:18', 1);
INSERT INTO `zone` VALUES (2, 'โซน B', 'Zone B', '2021-01-11 13:11:18', 1);
INSERT INTO `zone` VALUES (3, 'โซน C', 'Zone C', '2021-01-11 13:11:18', 1);
INSERT INTO `zone` VALUES (4, 'โซน D', 'Zone D', NULL, 1);
INSERT INTO `zone` VALUES (5, 'kingkong', 'kingkong', NULL, 1);

SET FOREIGN_KEY_CHECKS = 1;
