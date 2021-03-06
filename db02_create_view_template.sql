/**
     * ID: template
     * Description: 模板
     */
CREATE VIEW V2001 AS SELECT 
/*模板序号*/ t0.TTID TTID , 
/*模板名称*/ t0.TTNAME TTNAME , 
/*模板类型*/ t0.TTTYPE TTTYPE , 
/*规程数*/ COALESCE(t1.SZE, 0) TTSIZE FROM F2001 t0
LEFT JOIN (SELECT TPTTID, COUNT(TPID) SZE FROM F2002 GROUP BY TPTTID) t1 ON t1.TPTTID = t0.TTID;
