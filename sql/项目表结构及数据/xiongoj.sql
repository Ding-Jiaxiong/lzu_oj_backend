/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : xiongoj

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 19/07/2024 11:07:07
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for post
-- ----------------------------
DROP TABLE IF EXISTS `post`;
CREATE TABLE `post`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签列表（json 数组）',
  `thumbNum` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `favourNum` int NOT NULL DEFAULT 0 COMMENT '收藏数',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '帖子' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post
-- ----------------------------

-- ----------------------------
-- Table structure for post_favour
-- ----------------------------
DROP TABLE IF EXISTS `post_favour`;
CREATE TABLE `post_favour`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `postId` bigint NOT NULL COMMENT '帖子 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postId`(`postId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帖子收藏' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_favour
-- ----------------------------

-- ----------------------------
-- Table structure for post_thumb
-- ----------------------------
DROP TABLE IF EXISTS `post_thumb`;
CREATE TABLE `post_thumb`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `postId` bigint NOT NULL COMMENT '帖子 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_postId`(`postId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '帖子点赞' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of post_thumb
-- ----------------------------

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `title` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标题',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '内容',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '标签列表（json 数组）',
  `answer` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '题目答案',
  `submitNum` int NOT NULL DEFAULT 0 COMMENT '题目提交数',
  `acceptedNum` int NOT NULL DEFAULT 0 COMMENT '题目通过数',
  `judgeCase` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '判题用例（json 数组）',
  `judgeConfig` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL COMMENT '判题配置（json 对象）',
  `thumbNum` int NOT NULL DEFAULT 0 COMMENT '点赞数',
  `favourNum` int NOT NULL DEFAULT 0 COMMENT '收藏数',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1814127296079372290 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '题目' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1813178717240193025, 'A + B', '## Description\n\nCalculate a+b\n\n\n\n## Input\n\nTwo integer a,b (0<=a,b<=10)\n\n\n\n## Output\n\nOutput a+b\n\n\n\n## Sample Input\n\n```\n1 2\n```\n\n\n\n## Sample Output\n\n```\n3\n```\n\n\n\n## Hint\n\nQ: Where are the input and the output?\n\nA: Your program shall always read input from stdin (Standard Input) and write output to stdout (Standard Output). For example, you can use \'scanf\' in C or \'cin\' in C++ to read from stdin, and use \'printf\' in C or \'cout\' in C++ to write to stdout.\n\nYou shall not output any extra data to standard output other than that required by the problem, otherwise you will get a \"Wrong Answer\".\n\nUser programs are not allowed to open and read from/write to files. You will get a \"Runtime Error\" or a \"Wrong Answer\"if you try to do so.', '[\"栈\",\"简单\"]', '暴力破解', 0, 0, '[{\"input\":\"1 2\",\"output\":\"3\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1813104869044023297, '2024-07-16 19:47:48', '2024-07-18 17:05:52', 0);
INSERT INTO `question` VALUES (1813179778067755010, 'A + D', '新的题目内容', '[\"二叉树\",\"困难\"]', '新的答案', 0, 0, '[{\"input\":\"新的示例输入\",\"output\":\"新的示例输出\"}]', '{\"timeLimit\":1,\"memoryLimit\":1,\"stackLimit\":1}', 0, 0, 1813104869044023297, '2024-07-16 19:52:01', '2024-07-16 19:59:22', 0);
INSERT INTO `question` VALUES (1813180052895330306, 'A + CC', '题目内容', '[\"栈\",\"简单\"]', '暴力破解', 0, 0, NULL, NULL, 0, 0, 1813104869044023297, '2024-07-16 19:53:06', '2024-07-17 09:49:03', 1);
INSERT INTO `question` VALUES (1813387004577488897, 'A + B前端创建更新', '题目内容', '[\"栈\",\"简单\"]', '暴力破解', 0, 0, '[{\"input\":\"1 2\",\"output\":\"3 4\"}]', '{\"timeLimit\":1,\"memoryLimit\":1,\"stackLimit\":1}', 0, 0, 1813104869044023297, '2024-07-17 09:35:27', '2024-07-17 10:06:37', 0);
INSERT INTO `question` VALUES (1814127296079372289, '两数之和', '请输出 a + b\n\n#### 示例输入\n\n1 2\n\n#### 示例输出\n\n3', '[\"简单\"]', '阿巴巴 sum(a + b)', 0, 0, '[{\"input\":\"1 2\",\"output\":\"3\"},{\"input\":\"3 4\",\"output\":\"7\"}]', '{\"timeLimit\":1000,\"memoryLimit\":1000,\"stackLimit\":1000}', 0, 0, 1813104869044023297, '2024-07-19 10:37:06', '2024-07-19 10:37:06', 0);

-- ----------------------------
-- Table structure for question_submit
-- ----------------------------
DROP TABLE IF EXISTS `question_submit`;
CREATE TABLE `question_submit`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `language` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '编程语言',
  `code` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户代码',
  `judgeInfo` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL COMMENT '判题信息（json 对象）',
  `status` int NOT NULL DEFAULT 0 COMMENT '判题状态 (0-待判题、1-判题中、2-成功、3-失败) ',
  `questionId` bigint NOT NULL COMMENT '题目 id',
  `userId` bigint NOT NULL COMMENT '创建用户 id',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_questionId`(`questionId` ASC) USING BTREE,
  INDEX `idx_userId`(`userId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1814128428839247875 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '题目提交' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question_submit
-- ----------------------------
INSERT INTO `question_submit` VALUES (1813182514020626433, 'java', 'a + b', '{}', 0, 1813178717240193025, 1813104869044023297, '2024-07-16 20:02:53', '2024-07-16 20:02:53', 0);
INSERT INTO `question_submit` VALUES (1813414821402963969, 'java', 'public static void main(String[] args) {\r\n    SpringApplication.run(XiongOjBackendApplication.class, args);\r\n}', '{}', 0, 1813178717240193025, 1813104869044023297, '2024-07-17 11:25:59', '2024-07-17 11:25:59', 0);
INSERT INTO `question_submit` VALUES (1813489999503876098, 'java', 'javajava', '{\"message\":\"Wrong Answer\",\"memory\":100,\"time\":100}', 2, 1813178717240193025, 1813104869044023297, '2024-07-17 16:24:43', '2024-07-17 16:24:43', 0);
INSERT INTO `question_submit` VALUES (1813861718668279810, 'java', 'public class Main {\r\n\r\n    public static void main(String[] args) {\r\n        int a = Integer.parseInt(args[0]);\r\n        int b = Integer.parseInt(args[1]);\r\n        System.out.println(\"结果:\" + (a + b));\r\n    }\r\n}', '{\"message\":\"Wrong Answer\",\"memory\":0,\"time\":70}', 2, 1813178717240193025, 1813104869044023297, '2024-07-18 17:01:48', '2024-07-18 17:01:48', 0);
INSERT INTO `question_submit` VALUES (1813862969892077569, 'java', 'public class Main {\r\n\r\n    public static void main(String[] args) {\r\n        int a = Integer.parseInt(args[0]);\r\n        int b = Integer.parseInt(args[1]);\r\n        System.out.println(a + b);\r\n    }\r\n}', '{\"message\":\"Accepted\",\"memory\":0,\"time\":78}', 2, 1813178717240193025, 1813104869044023297, '2024-07-18 17:06:46', '2024-07-18 17:06:47', 0);
INSERT INTO `question_submit` VALUES (1814113128932638722, 'java', 'int main', '{}', 1, 1813178717240193025, 1813104869044023297, '2024-07-19 09:40:49', '2024-07-19 09:40:49', 0);
INSERT INTO `question_submit` VALUES (1814116699417788417, 'java', 'int mainmain', '{}', 1, 1813178717240193025, 1813104869044023297, '2024-07-19 09:55:00', '2024-07-19 09:55:00', 0);
INSERT INTO `question_submit` VALUES (1814128428839247874, 'java', 'public class Main {\r\n\r\n    public static void main(String[] args) {\r\n        int a = Integer.parseInt(args[0]);\r\n        int b = Integer.parseInt(args[1]);\r\n        System.out.println(a + b);\r\n    }\r\n}', '{\"message\":\"Accepted\",\"memory\":0,\"time\":86}', 2, 1814127296079372289, 1813104869044023297, '2024-07-19 10:41:36', '2024-07-19 10:41:37', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '密码',
  `unionId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '微信开放平台id',
  `mpOpenId` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '公众号openId',
  `userName` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `userAvatar` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户头像',
  `userProfile` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '用户简介',
  `userRole` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user' COMMENT '用户角色：user/admin/ban',
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_unionId`(`unionId` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1814112042528198659 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1813104869044023297, 'dingjiaxiong', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, 'dingding', 'https://avatars.githubusercontent.com/u/61930795?v=4', '风轻轻拂半山', 'admin', '2024-07-16 14:54:21', '2024-07-16 14:55:08', 0);
INSERT INTO `user` VALUES (1813124408200818690, 'dingdingtwo', 'b0dd3697a192885d7c055db46155b26a', NULL, NULL, NULL, NULL, NULL, 'user', '2024-07-16 16:11:59', '2024-07-16 16:11:59', 0);
INSERT INTO `user` VALUES (1814112042528198658, 'dingding', '36c8e9015dc8fa1a07f91947b602e18b', NULL, NULL, NULL, NULL, NULL, 'user', '2024-07-19 09:36:30', '2024-07-19 09:36:30', 0);

SET FOREIGN_KEY_CHECKS = 1;
