/**
     * ID: equipment
     * Description: 设备
     */
CREATE VIEW V1201 AS SELECT 
/*设备序号*/ t0.EQID EQID , 
/*设备短号*/ t0.EQSERIAL EQSERIAL , 
/*JDE资产号*/ t0.EQNUMB EQNUMB , 
/*设备名称*/ t0.EQNAME EQNAME , 
/*班组序号*/ t0.EQCWID EQCWID , 
/*班组名称*/ t1.CWNAME EQCWNAME , 
/*工作中心编号*/ t2.WCMCU EQWCMCU , 
/*工作中心名称*/ t2.WCDL01 EQWCDL01 FROM F1201 t0
LEFT JOIN (SELECT CWID, CWNAME, CWWCMCU FROM V3003) t1 ON t1.CWID = t0.EQCWID
LEFT JOIN (SELECT WCMCU, WCDL01 FROM V3000) t2 ON t2.WCMCU = t1.CWWCMCU;
