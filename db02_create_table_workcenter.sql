/**
 * ID: workcenter
 * Description: 工作中心
 */
CREATE TABLE F3000 ( 
/*工作中心编号*/ WCMCU NVARCHAR2(12) , 
/*工作中心名称*/ WCDL01 NVARCHAR2(30) );
ALTER TABLE F3000 ADD CONSTRAINT F3000_PRIMARY PRIMARY KEY ( WCMCU );