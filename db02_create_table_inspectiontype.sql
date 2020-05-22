/**
 * ID: inspectiontype
 * Description: 巡视类型
 */
CREATE TABLE F1700 ( 
/*巡视类型编号*/ ITID NVARCHAR2(4) , 
/*巡视类型名称*/ ITNAME NVARCHAR2(8) );
ALTER TABLE F1700 ADD CONSTRAINT F1700_PRIMARY PRIMARY KEY ( ITID );