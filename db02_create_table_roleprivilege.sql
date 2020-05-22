/**
 * ID: roleprivilege
 * Description: 角色权限关系
 */
CREATE TABLE F00941 ( 
/*序号*/ RPID NUMBER(8,0) , 
/*角色编号*/ RPROID NVARCHAR2(4) , 
/*权限编号*/ RPPRID NVARCHAR2(4) );
ALTER TABLE F00941 ADD CONSTRAINT F00941_PRIMARY PRIMARY KEY ( RPID );
ALTER TABLE F00941 ADD CONSTRAINT F00941_UNIQUE_1 UNIQUE ( RPROID , RPPRID );
ALTER TABLE F00941 ADD CONSTRAINT F00941_REFERENCE_1 FOREIGN KEY ( RPROID ) REFERENCES F0094 ( ROID );
ALTER TABLE F00941 ADD CONSTRAINT F00941_REFERENCE_2 FOREIGN KEY ( RPPRID ) REFERENCES F0095 ( PRID );
CREATE SEQUENCE F00941_RPID MINVALUE 0 START WITH 1;