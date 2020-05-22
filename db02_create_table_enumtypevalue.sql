/**
 * ID: enumtypevalue
 * Description: 枚举类型值
 */
CREATE TABLE F0005 ( 
/*枚举类型值序号*/ EVID NUMBER(8,0) , 
/*枚举类型编号*/ EVETID NVARCHAR2(4) , 
/*数值*/ EVVAL NUMBER(1,0) , 
/*数值涵义*/ EVDESCRIPTION NVARCHAR2(8) );
ALTER TABLE F0005 ADD CONSTRAINT F0005_PRIMARY PRIMARY KEY ( EVID );
ALTER TABLE F0005 ADD CONSTRAINT F0005_UNIQUE_1 UNIQUE ( EVETID , EVVAL );
ALTER TABLE F0005 ADD CONSTRAINT F0005_REFERENCE_1 FOREIGN KEY ( EVETID ) REFERENCES F0004 ( ETID );
CREATE SEQUENCE F0005_EVID MINVALUE 0 START WITH 1;