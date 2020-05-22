/**
     * ID: maintenancetype
     * Description: 维保类型
     */
CREATE VIEW V1701 AS SELECT 
/*维保类型编号*/ t0.MTID MTID , 
/*维保类型名称*/ t0.MTNAME MTNAME FROM F1701 t0;