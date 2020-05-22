/**
 * ID: maintenancetype
 * Description: 维保类型
 */
CREATE TABLE F1701 ( 
/*维保类型编号*/ MTID NVARCHAR2(4) , 
/*维保类型名称*/ MTNAME NVARCHAR2(8) );
ALTER TABLE F1701 ADD CONSTRAINT F1701_PRIMARY PRIMARY KEY ( MTID );