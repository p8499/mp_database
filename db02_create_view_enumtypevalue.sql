/**
     * ID: enumtypevalue
     * Description: 枚举类型值
     */
CREATE VIEW V0005 AS SELECT 
/*枚举类型值序号*/ t0.EVID EVID , 
/*枚举类型编号*/ t0.EVETID EVETID , 
/*数值*/ t0.EVVAL EVVAL , 
/*数值涵义*/ t0.EVDESCRIPTION EVDESCRIPTION , 
/*枚举类型名称*/ t1.ETNAME EVETNAME FROM F0005 t0
LEFT JOIN (SELECT ETID, ETNAME FROM F0004) t1 ON t1.ETID = t0.EVETID;