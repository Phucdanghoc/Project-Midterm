drop table if exists ADMIN;

drop table if exists BRAND;

drop table if exists CART;

drop table if exists CATETORY;

drop table if exists COLOR;

drop table if exists PRODUCT;

drop table if exists TRANSACTION;

drop table if exists USER;

/*==============================================================*/
/* Table: ADMIN                                                 */
/*==============================================================*/
create table ADMIN
(
   ID                   int not null,
   NAME                 varchar(50),
   USERNAME             varchar(50),
   PASSWORD             varchar(50),
   primary key (ID)
);

/*==============================================================*/
/* Table: BRAND                                                 */
/*==============================================================*/
create table BRAND
(
   ID                   int not null,
   NAME                 varchar(50),
   ADDRESS              varchar(50),
   PHONE                varchar(50),
   primary key (ID)
);

/*==============================================================*/
/* Table: CART                                                  */
/*==============================================================*/
create table CART
(
   ID                   int not null,
   PRO_ID               int not null,
   TRA_ID               int not null,
   QUANTITY             int,
   CREATED_AD           datetime,
   primary key (ID)
);

/*==============================================================*/
/* Table: CATETORY                                              */
/*==============================================================*/
create table CATETORY
(
   ID                   int not null,
   NAME                 varchar(50),
   primary key (ID)
);

/*==============================================================*/
/* Table: COLOR                                                 */
/*==============================================================*/
create table COLOR
(
   ID                   int not null,
   NAME                 varchar(20),
   primary key (ID)
);

/*==============================================================*/
/* Table: PRODUCT                                               */
/*==============================================================*/
create table PRODUCT
(
   ID                   int not null,
   COL_ID               int not null,
   CAT_ID               int not null,
   BRA_ID               int not null,
   NAME                 varchar(100),
   PRICE                float,
   DETAIL               text,
   RATE                 float,
   IMG_SRC              char(10),
   primary key (ID)
);

/*==============================================================*/
/* Table: TRANSACTION                                           */
/*==============================================================*/
create table TRANSACTION
(
   ID                   int not null,
   USE_ID               int not null,
   TOTAL_PRICE          float,
   MESSAGE              text,
   STATUS               int,
   CREATED_ADD          datetime,
   primary key (ID)
);

/*==============================================================*/
/* Table: USER                                                  */
/*==============================================================*/
create table USER
(
   ID                   int not null,
   NAME                 varchar(50),
   EMAIL                varchar(50),
   PASSWORD             varchar(20),
   ADDRESS              varchar(100),
   PHONE                varchar(15),
   CREATED_ADD          datetime,
   primary key (ID)
);

alter table CART add constraint FK_ASSOCIATION_1 foreign key (TRA_ID)
      references TRANSACTION (ID) on delete restrict on update restrict;

alter table CART add constraint FK_RELATIONSHIP_2 foreign key (PRO_ID)
      references PRODUCT (ID) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_RELATIONSHIP_3 foreign key (CAT_ID)
      references CATETORY (ID) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_ASSOCIATION_4 foreign key (BRA_ID)
      references BRAND (ID) on delete restrict on update restrict;

alter table PRODUCT add constraint FK_ASSOCIATION_5 foreign key (COL_ID)
      references COLOR (ID) on delete restrict on update restrict;

alter table TRANSACTION add constraint FK_ASSOCIATION_6 foreign key (USE_ID)
      references USER (ID) on delete restrict on update restrict;
