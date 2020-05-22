/**
     * ID: templateprocedure
     * Description: 模板规程
     */
CREATE VIEW V2002 AS SELECT 
/*规程序号*/ t0.TPID TPID , 
/*模板序号*/ t0.TPTTID TPTTID , 
/*顺序*/ t0.TPSEQ TPSEQ , 
/*规程描述*/ t0.TPDESCRIPTION TPDESCRIPTION , 
/*照片必须性*/ t0.TPPHOTO TPPHOTO , 
/*模板名称*/ t1.TTNAME TPTTNAME , 
/*模板类型*/ t1.TTTYPE TPTTTYPE , 
/*测量数*/ COALESCE(t1.SZE, 0) TPSIZE FROM F2002 t0
LEFT JOIN (SELECT TTID, TTNAME, TTTYPE FROM V2001) t1 ON t1.TTID = t0.TPTTID
LEFT JOIN (SELECT TSTPID, COUNT(TSID) SZE FROM F2003 GROUP BY TSTPID) t1 ON t1.TSTPID = t0.TPID;