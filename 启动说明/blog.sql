CREATE DATABASE jfinal_demo;

USE jfinal_demo;

CREATE TABLE `blog` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(200) NOT NULL,
  `content` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `blog` VALUES ('1', 'JFinal Demo Title here', 'JFinal Demo Content here');
INSERT INTO `blog` VALUES ('2', 'test 1', 'test 1');
INSERT INTO `blog` VALUES ('3', 'test 2', 'test 2');
INSERT INTO `blog` VALUES ('4', 'test 3', 'test 3');
INSERT INTO `blog` VALUES ('5', 'test 4', 'test 4');



drop table if exists ds_user;

/*==============================================================*/
/* Table: ds_user                                               */
/*==============================================================*/
create table ds_user
(
   user_id              int not null,
   login_id             varchar(20),
   psd                  varchar(128) not null,
   user_name            varchar(128),
   birthday             date not null,
   user_type            char(2) not null comment '用户类型：00 超级管理员；01 管理员；02 普通用户',
   sex                  char(2) comment '性别：01 男，02 女， 03 其他',
   note                 varchar(128),
   primary key (user_id)
);

alter table ds_user comment '用户信息表';
