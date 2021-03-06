/* TABLES */
CREATE TABLE BEER (
    ID: INT(11) AUTO_INCREMENT,
    NAME_BEER: VARCHAR(30) NOT NULL,
    TYPE_BEER: VARCHAR(30) NOT NULL,
    DESCRIPTION_BEER: VARCHAR(300)
);

CREATE TABLE PROVIDER (
    ID: INT(11) AUTO_INCREMENT,
    NAME_PROVIDER: VARCHAR(30) NOT NULL,
    EMAIL: VARCHAR(30) NOT NULL
);

CREATE TABLE LOT(
    ID: INT(11) AUTO_INCREMENT,
    ID_BEER: INT(11),
    ID_PROVIDER: INT(11),
    DT_RECEIVED: INT(11)
    DT_VALIDITY: INT(11),
    QUANTITY: INT(11),
    VALUE_UNIT: DECIMAL(15,2)
);

CREATE TABLE SALE_DETAIL(
    ID: INT(11),
    ID_LOT: INT(11),
    QUANTITY: INT(11),
    BASE_SALE_PERCENT: DECIMAL(3,2),
    DT_AVALIABLE_INI: INT(11),
    DT_AVALIABLE_FIM: INT(11),
    ACTIVE: BOOLEAN
);

CREATE TABLE SALE(
    ID_SALE_DETAIL: INT(11),
    ID_USER: INT(11),
    QUANTITY: INT(11),
    DT_SALE: INT(11),
    PRICE: DECIMAL(15,2),
    PAID: BOOLEAN
);

CREATE TABLE USER(
    ID: INT(11),
    ID_ACCESS_TYPE: INT(11),
    FULL_NAME: VARCHAR(30) NOT NULL,
    USER: VARCHAR(8) NOT NULL,
    PASS: VARCHAR(32) NOT NULL
);

CREATE TABLE ACCESS_TYPE(
    ID: INT(11),
    NAME_ACCESS_TYPE: VARCHAR(30),
    DESCRIPTION_ACCESS_TYPE: VARCHAR(300)
);

CREATE USER_DATA(
    ID_USER: INT(11),
    DESCRIPTION_USER_DATA: VARCHAR(30),
    TYPE_USER: VARCHAR(30),
    DOCUMENT_NUMBER: VARCHAR
);