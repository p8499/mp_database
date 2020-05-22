/**
     * ID: branch
     * Description: 楼盘
     */
CREATE VIEW V3001 AS SELECT 
/*楼盘编号*/ t0.BPMCU BPMCU , 
/*楼盘名称*/ t0.BPDL01 BPDL01 , 
/*工作中心编号*/ t0.BPWCMCU BPWCMCU , 
/*工作中心名称*/ t1.WCDL01 BPWCDL01 FROM F3001 t0
LEFT JOIN (SELECT WCMCU, WCDL01 FROM V3000) t1 ON t1.WCMCU = t0.BPWCMCU;