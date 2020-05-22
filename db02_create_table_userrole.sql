/**
 * ID: userrole
 * Description: 用户角色关系
 */
CREATE TABLE F00921 ( 
/*序号*/ URID NUMBER(8,0) , 
/*用户序号*/ URUSID NUMBER(8,0) , 
/*角色编号*/ URROID NVARCHAR2(8) );
ALTER TABLE F00921 ADD CONSTRAINT F00921_PRIMARY PRIMARY KEY ( URID );
ALTER TABLE F00921 ADD CONSTRAINT F00921_UNIQUE_1 UNIQUE ( URUSID , URROID );
ALTER TABLE F00921 ADD CONSTRAINT F00921_REFERENCE_1 FOREIGN KEY ( URUSID ) REFERENCES F0092 ( USID );
ALTER TABLE F00921 ADD CONSTRAINT F00921_REFERENCE_2 FOREIGN KEY ( URROID ) REFERENCES F0094 ( ROID );
CREATE SEQUENCE F00921_URID MINVALUE 0 START WITH 1;