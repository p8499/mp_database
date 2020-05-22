/**
     * ID: inspectiontype
     * Description: 巡视类型
     */
CREATE VIEW V1700 AS SELECT 
/*巡视类型编号*/ t0.ITID ITID , 
/*巡视类型名称*/ t0.ITNAME ITNAME FROM F1700 t0;