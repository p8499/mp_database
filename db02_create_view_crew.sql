/**
     * ID: crew
     * Description: 班组
     */
CREATE VIEW V3003 AS SELECT 
/*班组序号*/ t0.CWID CWID , 
/*班组名称*/ t0.CWNAME CWNAME , 
/*JDE地址号*/ t0.CWAN8 CWAN8 , 
/*工作中心编号*/ t0.CWWCMCU CWWCMCU , 
/*工作中心名称*/ t1.WCDL01 CWWCDL01 FROM F3003 t0
LEFT JOIN (SELECT WCMCU, WCDL01 FROM V3000) t1 ON t1.WCMCU = t0.CWWCMCU;