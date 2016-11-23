/*==============================================================*/
/* DBMS name:      ORACLE Version 11g                           */
/* Created on:     2016/11/23 15:43:46                          */
/*==============================================================*/


alter table CONTRACT_PRODUCT_C
   drop constraint FK_CONTRACT_REFERENCE_CONTRACT;

alter table CONTRACT_PRODUCT_C
   drop constraint FK_CONTRACT_REFERENCE_FACTORY_;

alter table CONTRACT_PRODUCT_HIS_C
   drop constraint FK_CONTRACT_REFERENCE_CONTRAC2;

alter table EXPORT_PRODUCT_C
   drop constraint FK_EXPORT_P_REFERENCE_EXPORT_C;

alter table EXPORT_PRODUCT_C
   drop constraint FK_EXPORT_P_REFERENCE_FACTORY_;

alter table EXT_CPRODUCT_C
   drop constraint FK_EXT_CPRO_REFERENCE_FACTORY_;

alter table EXT_CPRODUCT_C
   drop constraint FK_EXT_CPRO_REFERENCE_CONTRAC2;

alter table EXT_CPRODUCT_HIS_C
   drop constraint FK_EXT_CPRO_REFERENCE_CONTRACT;

alter table EXT_EPRODUCT_C
   drop constraint FK_EXT_EPRO_REFERENCE_EXPORT_P;

alter table EXT_EPRODUCT_C
   drop constraint FK_EXT_EPRO_REFERENCE_FACTORY_;

alter table FINANCE_C
   drop constraint FK_FINANCE__REFERENCE_PACKING_;

alter table INVOICE_C
   drop constraint FK_INVOICE__REFERENCE_PACKING_;

alter table SHIPPING_ORDER_C
   drop constraint FK_SHIPPING_REFERENCE_PACKING_;

drop table CONTRACT_C cascade constraints;

drop table CONTRACT_HIS_C cascade constraints;

drop table CONTRACT_PRODUCT_C cascade constraints;

drop table CONTRACT_PRODUCT_HIS_C cascade constraints;

drop table EXPORT_C cascade constraints;

drop table EXPORT_PRODUCT_C cascade constraints;

drop table EXT_CPRODUCT_C cascade constraints;

drop table EXT_CPRODUCT_HIS_C cascade constraints;

drop table EXT_EPRODUCT_C cascade constraints;

drop table FACTORY_C cascade constraints;

drop table FINANCE_C cascade constraints;

drop table INVOICE_C cascade constraints;

drop table LOGIN_LOG_P cascade constraints;

drop table ONLINEINFO_T cascade constraints;

drop table PACKING_LIST_C cascade constraints;

drop table SHIPPING_ORDER_C cascade constraints;

drop table SYS_CODE_B cascade constraints;

/*==============================================================*/
/* Table: CONTRACT_C                                            */
/*==============================================================*/
create table CONTRACT_C 
(
   CONTRACT_ID          VARCHAR2(40)         not null,
   OFFEROR              VARCHAR2(200),
   CONTRACT_NO          VARCHAR2(50),
   SIGNING_DATE         TIMESTAMP,
   INPUT_BY             VARCHAR2(30),
   CHECK_BY             VARCHAR2(30),
   INSPECTOR            VARCHAR2(30),
   TOTAL_AMOUNT         NUMBER(10,2),
   IMPORT_NUM           INT,
   CREQUEST             VARCHAR2(2000),
   CUSTOM_NAME          VARCHAR2(200),
   DELIVERY_PERIOD      TIMESTAMP,
   SHIP_TIME            TIMESTAMP,
   TRADE_TERMS          VARCHAR2(30),
   REMARK               VARCHAR2(600),
   PRINT_STYLE          CHAR(1),
   OLD_STATE            INT,
   STATE                INT,
   OUT_STATE            INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_CONTRACT_C primary key (CONTRACT_ID)
);

comment on table CONTRACT_C is
'����ο��û��ṩ�ġ�������ͬ��
�˸��ֶδӡ�������ͬ���л�ȡ����һ�����ܽ������ֶ�
�ĸ��ֶδӡ��������л�ȡ
���������ֶ�
����Ȩ���ֶ�';

comment on column CONTRACT_C.CONTRACT_NO is
'�Զ�����';

comment on column CONTRACT_C.TOTAL_AMOUNT is
'���࣬�Զ����㣬����*����';

comment on column CONTRACT_C.IMPORT_NUM is
'��ӡʱ��ʶ������,��Ӧ˵���е�����
ֱ�Ӵ�����ǿ����𣿿���CHAR(6)����jspҳ��jstl�ж����������ַ�ʧ�ܡ�';

comment on column CONTRACT_C.CUSTOM_NAME is
'����:������';

comment on column CONTRACT_C.DELIVERY_PERIOD is
'����:������';

comment on column CONTRACT_C.SHIP_TIME is
'����:������';

comment on column CONTRACT_C.TRADE_TERMS is
'����:������';

comment on column CONTRACT_C.PRINT_STYLE is
'��2:һҳ��������  խ1:һҳһ������';

comment on column CONTRACT_C.OLD_STATE is
'�鵵ǰ״̬, �������';

comment on column CONTRACT_C.STATE is
'0�ݸ� 1���ϱ�������

�鵵��, ����ѡ���ͬ�ĵط���ȥ��.
��ʾ��ͬ�����, �����Ƿ��ͬ�Ļ����Ƿ�ȫ���������, ��Ϊ���⸶���������';

comment on column CONTRACT_C.OUT_STATE is
'0δ�߻� 1���� 2ȫ��

�鵵��, ����ѡ���ͬ�ĵط���ȥ��.
��ʾ��ͬ�����, �����Ƿ��ͬ�Ļ����Ƿ�ȫ���������, ��Ϊ���⸶���������';

/*==============================================================*/
/* Table: CONTRACT_HIS_C                                        */
/*==============================================================*/
create table CONTRACT_HIS_C 
(
   CONTRACT_ID          VARCHAR2(40)         not null,
   OFFEROR              VARCHAR2(200),
   CONTRACT_NO          VARCHAR2(50),
   SIGNING_DATE         TIMESTAMP,
   INPUT_BY             VARCHAR2(30),
   CHECK_BY             VARCHAR2(30),
   INSPECTOR            VARCHAR2(30),
   TOTAL_AMOUNT         NUMBER(10,2),
   IMPORT_NUM           CHAR(6),
   CREQUEST             VARCHAR2(2000),
   CUSTOM_NAME          VARCHAR2(200),
   DELIVERY_PERIOD      TIMESTAMP,
   SHIP_TIME            TIMESTAMP,
   TRADE_TERMS          VARCHAR2(30),
   REMARK               VARCHAR2(600),
   PRINT_STYLE          CHAR(1),
   OLD_STATE            INT,
   STATE                INT,
   OUT_STATE            INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_CONTRACT_HIS_C primary key (CONTRACT_ID)
);

comment on table CONTRACT_HIS_C is
'��ʷ��ͻ������������������ֶζ����ı䣻�����¼��ת�ơ�

Mapperӳ���ļ��ͺͺ�ͬ������������贴��po�������ú�ͬ��';

comment on column CONTRACT_HIS_C.CONTRACT_NO is
'�Զ�����';

comment on column CONTRACT_HIS_C.TOTAL_AMOUNT is
'����';

comment on column CONTRACT_HIS_C.IMPORT_NUM is
'��ӡʱ��ʶ������,��Ӧ˵���е�����';

comment on column CONTRACT_HIS_C.PRINT_STYLE is
'��2:һҳ��������  խ1:һҳһ������';

comment on column CONTRACT_HIS_C.OLD_STATE is
'�鵵ǰ״̬, �������';

comment on column CONTRACT_HIS_C.STATE is
'0�ݸ� 1���ϱ�������

�鵵��, ����ѡ���ͬ�ĵط���ȥ��.
��ʾ��ͬ�����, �����Ƿ��ͬ�Ļ����Ƿ�ȫ���������, ��Ϊ���⸶���������';

comment on column CONTRACT_HIS_C.OUT_STATE is
'0δ�߻� 1���� 2ȫ��

�鵵��, ����ѡ���ͬ�ĵط���ȥ��.
��ʾ��ͬ�����, �����Ƿ��ͬ�Ļ����Ƿ�ȫ���������, ��Ϊ���⸶���������';

/*==============================================================*/
/* Table: CONTRACT_PRODUCT_C                                    */
/*==============================================================*/
create table CONTRACT_PRODUCT_C 
(
   CONTRACT_PRODUCT_ID  VARCHAR2(40)         not null,
   CONTRACT_ID          VARCHAR2(40),
   FACTORY_ID           VARCHAR2(40),
   FACTORY_NAME         VARCHAR2(50),
   PRODUCT_NO           VARCHAR2(50),
   PRODUCT_IMAGE        VARCHAR2(200),
   PRODUCT_DESC         VARCHAR2(600),
   CNUMBER              INT,
   OUT_NUMBER           INT,
   LOADING_RATE         VARCHAR2(10),
   BOX_NUM              INT,
   PACKING_UNIT         VARCHAR2(10),
   PRICE                NUMBER(10,2),
   AMOUNT               NUMBER(10,2),
   FINISHED             INT,
   EXTS                 VARCHAR2(50),
   ORDER_NO             INT,
   constraint PK_CONTRACT_PRODUCT_C primary key (CONTRACT_PRODUCT_ID)
);

comment on table CONTRACT_PRODUCT_C is
'װ�ʺ���������ҵ��ʹ�ã���ͬҵ��ʹ�á�';

comment on column CONTRACT_PRODUCT_C.FACTORY_NAME is
'����';

comment on column CONTRACT_PRODUCT_C.OUT_NUMBER is
'�ִ��߻�';

comment on column CONTRACT_PRODUCT_C.LOADING_RATE is
'����ҵ��ʹ��X/Y';

comment on column CONTRACT_PRODUCT_C.BOX_NUM is
'����ҵ��ʹ��=��������װ�ʵķ�ĸ��������λΪ����
�Ƚ�������װСֽ���ӣ�Ȼ����װ��װ��';

comment on column CONTRACT_PRODUCT_C.PACKING_UNIT is
'PCS/SETS';

comment on column CONTRACT_PRODUCT_C.AMOUNT is
'���� �Զ�����: ����x����';

comment on column CONTRACT_PRODUCT_C.FINISHED is
'0δ���1���';

comment on column CONTRACT_PRODUCT_C.EXTS is
'���࣬������������
������ӦSYS_CODE�еĸ����������ƣ�����û��з�������û�и�����д�ޡ�����������ͬʱ�ϲ���';

/*==============================================================*/
/* Table: CONTRACT_PRODUCT_HIS_C                                */
/*==============================================================*/
create table CONTRACT_PRODUCT_HIS_C 
(
   CONTRACT_PRODUCT_ID  VARCHAR2(40)         not null,
   CONTRACT_ID          VARCHAR2(40),
   FACTORY_ID           VARCHAR2(40),
   FACTORY_NAME         VARCHAR2(50),
   PRODUCT_NO           VARCHAR2(50),
   PRODUCT_IMAGE        VARCHAR2(200),
   PRODUCT_DESC         VARCHAR2(600),
   CNUMBER              INT,
   OUT_NUMBER           INT,
   LOADING_RATE         VARCHAR2(10),
   BOX_NUM              INT,
   PACKING_UNIT         VARCHAR2(10),
   PRICE                NUMBER(10,2),
   AMOUNT               NUMBER(10,2),
   FINISHED             INT,
   ORDER_NO             INT,
   constraint PK_CONTRACT_PRODUCT_HIS_C primary key (CONTRACT_PRODUCT_ID)
);

comment on column CONTRACT_PRODUCT_HIS_C.FACTORY_NAME is
'����';

comment on column CONTRACT_PRODUCT_HIS_C.OUT_NUMBER is
'�ִ��߻�';

comment on column CONTRACT_PRODUCT_HIS_C.LOADING_RATE is
'����ҵ��ʹ��X/Y';

comment on column CONTRACT_PRODUCT_HIS_C.BOX_NUM is
'����ҵ��ʹ��=��������װ�ʵķ�ĸ��������λΪ����
�Ƚ�������װСֽ���ӣ�Ȼ����װ��װ��';

comment on column CONTRACT_PRODUCT_HIS_C.PACKING_UNIT is
'PCS/SETS';

comment on column CONTRACT_PRODUCT_HIS_C.AMOUNT is
'���� �Զ�����: ����x����';

comment on column CONTRACT_PRODUCT_HIS_C.FINISHED is
'0δ���1���';

/*==============================================================*/
/* Table: EXPORT_C                                              */
/*==============================================================*/
create table EXPORT_C 
(
   EXPORT_ID            VARCHAR2(40)         not null,
   INPUT_DATE           TIMESTAMP,
   CONTRACT_IDS         VARCHAR2(500),
   CUSTOMER_CONTRACT    VARCHAR2(200),
   LCNO                 VARCHAR2(10),
   CONSIGNEE            VARCHAR2(100),
   MARKS                VARCHAR2(1000),
   REMARK               VARCHAR2(100),
   SHIPMENT_PORT        VARCHAR2(100),
   DESTINATION_PORT     VARCHAR2(100),
   TRANSPORT_MODE       VARCHAR2(10),
   PRICE_CONDITION      VARCHAR2(10),
   STATE                INT,
   GROSS_WEIGHT         NUMBER(5,2),
   NET_WEIGHT           NUMBER(5,2),
   MEASUREMENT          NUMBER(8,2),
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_EXPORT_C primary key (EXPORT_ID)
);

comment on table EXPORT_C is
'һ�����˵��ɶ����ͬ��
����ƣ�������ֱ��һ�Զ����������CONTRACT_IDS��¼������ϵ��

�����ƣ�ʵ����Ծ��ѯ';

comment on column EXPORT_C.CONTRACT_IDS is
'ID���ϴ�

x,y,z';

comment on column EXPORT_C.CUSTOMER_CONTRACT is
'�ͻ��ĺ�ͬ��,��ѡ������ͬ';

comment on column EXPORT_C.LCNO is
'����֤��L/C T/T';

comment on column EXPORT_C.TRANSPORT_MODE is
'SEA/AIR';

comment on column EXPORT_C.PRICE_CONDITION is
'FOB/CIF';

comment on column EXPORT_C.STATE is
'0-�ݸ� 1-���ϱ� 2-װ�� 3-ί�� 4-��Ʊ 5-����';

comment on column EXPORT_C.GROSS_WEIGHT is
'���࣬Ϊί�з���һ�����˵���ë��';

comment on column EXPORT_C.NET_WEIGHT is
'���࣬Ϊί�з���һ�����˵��ܾ���

';

comment on column EXPORT_C.MEASUREMENT is
'���࣬Ϊί�з���һ�����˵������

=��x��x��/100 00 00

cmת��Ϊm3 ������

';

/*==============================================================*/
/* Table: EXPORT_PRODUCT_C                                      */
/*==============================================================*/
create table EXPORT_PRODUCT_C 
(
   EXPORT_PRODUCT_ID    VARCHAR2(40)         not null,
   EXPORT_ID            VARCHAR2(40),
   FACTORY_ID           VARCHAR2(40),
   FACTORY_NAME         VARCHAR2(50),
   PRODUCT_NO           VARCHAR2(50),
   PACKING_UNIT         VARCHAR2(10),
   CNUMBER              INT,
   BOX_NUM              INT,
   GROSS_WEIGHT         NUMBER(8,2),
   NET_WEIGHT           NUMBER(8,2),
   SIZE_LENGTH          NUMBER(8,2),
   SIZE_WIDTH           NUMBER(8,2),
   SIZE_HEIGHT          NUMBER(8,2),
   EX_PRICE             NUMBER(8,2),
   PRICE                NUMBER(10,2),
   TAX                  NUMBER(8,2),
   ORDER_NO             INT,
   constraint PK_EXPORT_PRODUCT_C primary key (EXPORT_PRODUCT_ID)
);

comment on column EXPORT_PRODUCT_C.FACTORY_NAME is
'����';

comment on column EXPORT_PRODUCT_C.PACKING_UNIT is
'PCS/SETS';

comment on column EXPORT_PRODUCT_C.CNUMBER is
'�ִ��߻��ڴ�����';

comment on column EXPORT_PRODUCT_C.BOX_NUM is
'���Ǻ�ͬ�е�����';

comment on column EXPORT_PRODUCT_C.EX_PRICE is
'sales confirmation �еļ۸����';

/*==============================================================*/
/* Table: EXT_CPRODUCT_C                                        */
/*==============================================================*/
create table EXT_CPRODUCT_C 
(
   EXT_CPRODUCT_ID      VARCHAR2(40)         not null,
   CONTRACT_PRODUCT_ID  VARCHAR2(40),
   FACTORY_ID           VARCHAR2(40),
   FACTORY_NAME         VARCHAR2(50),
   CTYPE                INT,
   PRODUCT_NO           VARCHAR2(50),
   PRODUCT_IMAGE        VARCHAR2(200),
   PRODUCT_DESC         VARCHAR2(600),
   CNUMBER              INT,
   PACKING_UNIT         VARCHAR2(10),
   PRICE                NUMBER(10,2),
   AMOUNT               NUMBER(10,2),
   PRODUCT_REQUEST      VARCHAR2(2000),
   ORDER_NO             INT,
   constraint PK_EXT_CPRODUCT_C primary key (EXT_CPRODUCT_ID)
);

comment on table EXT_CPRODUCT_C is
'�����ͻ���Ĳ�ͬ�����˸������ͺ�Ҫ��ͬʱ���������ͬ�������������';

comment on column EXT_CPRODUCT_C.FACTORY_NAME is
'����';

comment on column EXT_CPRODUCT_C.CTYPE is
'SYS_CODE_B 0104';

comment on column EXT_CPRODUCT_C.AMOUNT is
'�Զ�����: ����x����';

/*==============================================================*/
/* Table: EXT_CPRODUCT_HIS_C                                    */
/*==============================================================*/
create table EXT_CPRODUCT_HIS_C 
(
   EXT_CPRODUCT_ID      VARCHAR2(40)         not null,
   CONTRACT_PRODUCT_ID  VARCHAR2(40),
   FACTORY_ID           VARCHAR2(40),
   FACTORY_NAME         VARCHAR2(50),
   CTYPE                INT,
   PRODUCT_NO           VARCHAR2(50),
   PRODUCT_IMAGE        VARCHAR2(200),
   PRODUCT_DESC         VARCHAR2(600),
   CNUMBER              INT,
   PACKING_UNIT         VARCHAR2(10),
   PRICE                NUMBER(10,2),
   AMOUNT               NUMBER(10,2),
   PRODUCT_REQUEST      VARCHAR2(2000),
   ORDER_NO             INT,
   constraint PK_EXT_CPRODUCT_HIS_C primary key (EXT_CPRODUCT_ID)
);

comment on column EXT_CPRODUCT_HIS_C.FACTORY_NAME is
'����';

comment on column EXT_CPRODUCT_HIS_C.CTYPE is
'SYS_CODE_B 0104';

comment on column EXT_CPRODUCT_HIS_C.PACKING_UNIT is
'PCS/SETS';

comment on column EXT_CPRODUCT_HIS_C.AMOUNT is
'�Զ�����: ����x����';

/*==============================================================*/
/* Table: EXT_EPRODUCT_C                                        */
/*==============================================================*/
create table EXT_EPRODUCT_C 
(
   EXT_EPRODUCT_ID      VARCHAR2(40)         not null,
   EXPORT_PRODUCT_ID    VARCHAR2(40),
   FACTORY_ID           VARCHAR2(40),
   FACTORY_NAME         VARCHAR2(50),
   CTYPE                INT,
   PRODUCT_NO           VARCHAR2(50),
   PRODUCT_IMAGE        VARCHAR2(200),
   PRODUCT_DESC         VARCHAR2(600),
   CNUMBER              INT,
   PACKING_UNIT         VARCHAR2(10),
   PRICE                NUMBER(10,2),
   AMOUNT               NUMBER(10,2),
   PRODUCT_REQUEST      VARCHAR2(2000),
   ORDER_NO             INT,
   constraint PK_EXT_EPRODUCT_C primary key (EXT_EPRODUCT_ID)
);

comment on table EXT_EPRODUCT_C is
'ֱ�Ӹ��ƺ�ͬ�������������ࣻ���ٺ���ҵ���ȡ����
��Ƽ򵥣�������Ӧ����仯';

comment on column EXT_EPRODUCT_C.FACTORY_NAME is
'����';

comment on column EXT_EPRODUCT_C.CTYPE is
'SYS_CODE_B 0104';

comment on column EXT_EPRODUCT_C.PACKING_UNIT is
'PCS/SETS';

comment on column EXT_EPRODUCT_C.AMOUNT is
'�Զ�����: ����x����';

/*==============================================================*/
/* Table: FACTORY_C                                             */
/*==============================================================*/
create table FACTORY_C 
(
   FACTORY_ID           VARCHAR2(40)         not null,
   FULL_NAME            VARCHAR2(200),
   FACTORY_NAME         VARCHAR2(50),
   CONTACTS             VARCHAR2(30),
   PHONE                VARCHAR2(20),
   MOBILE               VARCHAR2(20),
   FAX                  VARCHAR2(20),
   NOTE                 VARCHAR2(1000),
   INSPECTOR            VARCHAR2(30),
   STATE                CHAR(1),
   ORDER_NO             INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_FACTORY_C primary key (FACTORY_ID)
);

comment on column FACTORY_C.STATE is
'1����0ͣ��';

comment on column FACTORY_C.ORDER_NO is
'
';

/*==============================================================*/
/* Table: FINANCE_C                                             */
/*==============================================================*/
create table FINANCE_C 
(
   FINANCE_ID           VARCHAR2(40)         not null,
   INPUT_DATE           TIMESTAMP,
   INPUT_BY             VARCHAR2(30),
   STATE                INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_FINANCE_C primary key (FINANCE_ID)
);

comment on table FINANCE_C is
'��װ�䵥һ��һ';

comment on column FINANCE_C.STATE is
'0�ݸ� 1���ϱ�';

/*==============================================================*/
/* Table: INVOICE_C                                             */
/*==============================================================*/
create table INVOICE_C 
(
   INVOICE_ID           VARCHAR2(40)         not null,
   SC_NO                VARCHAR2(100),
   BL_NO                VARCHAR2(100),
   TRADE_TERMS          VARCHAR2(100),
   STATE                INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_INVOICE_C primary key (INVOICE_ID)
);

comment on table INVOICE_C is
'��װ�䵥һ��һ';

comment on column INVOICE_C.INVOICE_ID is
'PACKING_LIST_IDֵ';

comment on column INVOICE_C.SC_NO is
'packing.getExportNos S/C���Ǳ��˵ĺ�ͬ��';

comment on column INVOICE_C.STATE is
'0�ݸ� 1���ϱ�';

/*==============================================================*/
/* Table: LOGIN_LOG_P                                           */
/*==============================================================*/
create table LOGIN_LOG_P 
(
   LOGIN_LOG_ID         VARCHAR2(40)         not null,
   LOGIN_NAME           VARCHAR2(50),
   IP_ADDRESS           VARCHAR2(20),
   LOGIN_TIME           TIMESTAMP,
   constraint PK_LOGIN_LOG_P primary key (LOGIN_LOG_ID)
);

/*==============================================================*/
/* Table: ONLINEINFO_T                                          */
/*==============================================================*/
create table ONLINEINFO_T 
(
   A1                   CHAR(2)              not null,
   constraint PK_ONLINEINFO_T primary key (A1)
);

/*==============================================================*/
/* Table: PACKING_LIST_C                                        */
/*==============================================================*/
create table PACKING_LIST_C 
(
   PACKING_LIST_ID      VARCHAR2(40)         not null,
   SELLER               VARCHAR2(200),
   BUYER                VARCHAR2(200),
   INVOICE_NO           VARCHAR2(30),
   INVOICE_DATE         TIMESTAMP,
   MARKS                VARCHAR2(200),
   DESCRIPTIONS         VARCHAR2(200),
   EXPORT_IDS           VARCHAR2(200),
   EXPORT_NOS           VARCHAR2(200),
   STATE                INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_PACKING_LIST_C primary key (PACKING_LIST_ID)
);

comment on table PACKING_LIST_C is
'ѡ�������˽���һ��װ��';

comment on column PACKING_LIST_C.EXPORT_IDS is
'����ID����';

comment on column PACKING_LIST_C.EXPORT_NOS is
'����NO����x,y|z,h';

comment on column PACKING_LIST_C.STATE is
'0�ݸ� 1���ϱ�';

/*==============================================================*/
/* Table: SHIPPING_ORDER_C                                      */
/*==============================================================*/
create table SHIPPING_ORDER_C 
(
   SHIPPING_ORDER_ID    VARCHAR2(40)         not null,
   ORDER_TYPE           CHAR(6),
   SHIPPER              VARCHAR2(200),
   CONSIGNEE            VARCHAR2(200),
   NOTIFY_PARTY         VARCHAR2(200),
   LC_NO                VARCHAR2(30),
   PORT_OF_LOADING      VARCHAR2(30),
   PORT_OF_TRANS        VARCHAR2(30),
   PORT_OF_DISCHARGE    VARCHAR2(30),
   LOADING_DATE         TIMESTAMP,
   LIMIT_DATE           TIMESTAMP,
   IS_BATCH             CHAR(1),
   IS_TRANS             CHAR(1),
   COPY_NUM             VARCHAR2(20),
   CNOTE                VARCHAR2(200),
   SPECIAL_CONDITION    VARCHAR2(200),
   FREIGHT              VARCHAR2(200),
   CHECK_BY             VARCHAR2(30),
   STATE                INT,
   CREATE_BY            VARCHAR2(40),
   CREATE_DEPT          VARCHAR2(40),
   CREATE_TIME          TIMESTAMP,
   constraint PK_SHIPPING_ORDER_C primary key (SHIPPING_ORDER_ID)
);

comment on table SHIPPING_ORDER_C is
'һ��ί������һ��װ��';

comment on column SHIPPING_ORDER_C.SHIPPING_ORDER_ID is
'����PACKING_LIST_ID';

comment on column SHIPPING_ORDER_C.ORDER_TYPE is
'SEA����AIR����';

comment on column SHIPPING_ORDER_C.IS_BATCH is
'1��0��';

comment on column SHIPPING_ORDER_C.IS_TRANS is
'1��0��';

comment on column SHIPPING_ORDER_C.STATE is
'0�ݸ� 1���ϱ�';

/*==============================================================*/
/* Table: SYS_CODE_B                                            */
/*==============================================================*/
create table SYS_CODE_B 
(
   SYS_CODE_ID          VARCHAR2(40)         not null,
   NAME                 VARCHAR2(100),
   PARENT_ID            VARCHAR2(40),
   PARENT_NAME          VARCHAR2(100),
   LAYER_NUM            INT,
   IS_LEAF              INT,
   QUOTE_NUM            INT,
   CNOTE                VARCHAR2(100),
   ICO                  VARCHAR2(20),
   ORDER_NO             INT,
   STATE                CHAR(1),
   CREATED_BY           VARCHAR2(40),
   CREATED_TIME         TIMESTAMP,
   UPDATED_BY           VARCHAR2(40),
   UPDATED_TIME         TIMESTAMP,
   constraint PK_SYS_CODE_B primary key (SYS_CODE_ID)
);

comment on table SYS_CODE_B is
'�����ֵ�';

comment on column SYS_CODE_B.STATE is
'0ͣ��1����';

alter table CONTRACT_PRODUCT_C
   add constraint FK_CONTRACT_REFERENCE_CONTRACT foreign key (CONTRACT_ID)
      references CONTRACT_C (CONTRACT_ID);

alter table CONTRACT_PRODUCT_C
   add constraint FK_CONTRACT_REFERENCE_FACTORY_ foreign key (FACTORY_ID)
      references FACTORY_C (FACTORY_ID);

alter table CONTRACT_PRODUCT_HIS_C
   add constraint FK_CONTRACT_REFERENCE_CONTRAC2 foreign key (CONTRACT_ID)
      references CONTRACT_HIS_C (CONTRACT_ID);

alter table EXPORT_PRODUCT_C
   add constraint FK_EXPORT_P_REFERENCE_EXPORT_C foreign key (EXPORT_ID)
      references EXPORT_C (EXPORT_ID);

alter table EXPORT_PRODUCT_C
   add constraint FK_EXPORT_P_REFERENCE_FACTORY_ foreign key (FACTORY_ID)
      references FACTORY_C (FACTORY_ID);

alter table EXT_CPRODUCT_C
   add constraint FK_EXT_CPRO_REFERENCE_FACTORY_ foreign key (FACTORY_ID)
      references FACTORY_C (FACTORY_ID);

alter table EXT_CPRODUCT_C
   add constraint FK_EXT_CPRO_REFERENCE_CONTRAC2 foreign key (CONTRACT_PRODUCT_ID)
      references CONTRACT_PRODUCT_C (CONTRACT_PRODUCT_ID);

alter table EXT_CPRODUCT_HIS_C
   add constraint FK_EXT_CPRO_REFERENCE_CONTRACT foreign key (CONTRACT_PRODUCT_ID)
      references CONTRACT_PRODUCT_HIS_C (CONTRACT_PRODUCT_ID);

alter table EXT_EPRODUCT_C
   add constraint FK_EXT_EPRO_REFERENCE_EXPORT_P foreign key (EXPORT_PRODUCT_ID)
      references EXPORT_PRODUCT_C (EXPORT_PRODUCT_ID);

alter table EXT_EPRODUCT_C
   add constraint FK_EXT_EPRO_REFERENCE_FACTORY_ foreign key (FACTORY_ID)
      references FACTORY_C (FACTORY_ID);

alter table FINANCE_C
   add constraint FK_FINANCE__REFERENCE_PACKING_ foreign key (FINANCE_ID)
      references PACKING_LIST_C (PACKING_LIST_ID);

alter table INVOICE_C
   add constraint FK_INVOICE__REFERENCE_PACKING_ foreign key (INVOICE_ID)
      references PACKING_LIST_C (PACKING_LIST_ID);

alter table SHIPPING_ORDER_C
   add constraint FK_SHIPPING_REFERENCE_PACKING_ foreign key (SHIPPING_ORDER_ID)
      references PACKING_LIST_C (PACKING_LIST_ID);

