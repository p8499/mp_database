/**
     * ID: workcenter
     * Description: 工作中心
     */
CREATE VIEW V3000 AS SELECT 
/*工作中心编号*/ t0.WCMCU WCMCU , 
/*工作中心名称*/ t0.WCDL01 WCDL01 FROM F3000 t0;