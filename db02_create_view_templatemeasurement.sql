/**
     * ID: templatemeasurement
     * Description: 模板测量
     */
CREATE VIEW V2003 AS SELECT 
/*测量序号*/ t0.TSID TSID , 
/*规程序号*/ t0.TSTPID TSTPID , 
/*排序*/ t0.TSSEQ TSSEQ , 
/*测量名称*/ t0.TSNAME TSNAME , 
/*枚举类型编号*/ t0.TSETID TSETID , 
/*最小值*/ t0.TSMIN TSMIN , 
/*最大值*/ t0.TSMAX TSMAX , 
/*单位*/ t0.TSUNIT TSUNIT , 
/*照片必须性*/ t0.TSPHOTO TSPHOTO , 
/*模板序号*/ t1.TPTTID TSTTID , 
/*模板名称*/ t1.TPTTNAME TSTTNAME , 
/*模板类型*/ t1.TPTTTYPE TSTTTYPE , 
/*规程排序*/ t1.TPSEQ TSTPSEQ , 
/*规程描述*/ t1.TPDESCRIPTION TSTPDESCRIPTION , 
/*规程照片可选性*/ t1.TPPHOTO TSTPPHOTO FROM F2003 t0
LEFT JOIN (SELECT TPID, TPTTID, TPTTNAME, TPTTTYPE, TPSEQ, TPDESCRIPTION, TPPHOTO FROM V2002) t1 ON t1.TPID = t0.TSTPID;
