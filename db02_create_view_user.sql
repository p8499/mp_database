/**
     * ID: user
     * Description: 用户
     */
CREATE VIEW V0092 AS SELECT 
/*用户序号*/ t0.USID USID , 
/*JDE地址号*/ t0.USAN8 USAN8 , 
/*手机号*/ t0.USCELL USCELL , 
/*电子邮箱*/ t0.USMAIL USMAIL , 
/*姓名*/ t0.USNAME USNAME , 
/*密码*/ t0.USPSWD USPSWD , 
/*状态*/ t0.USSTATUS USSTATUS FROM F0092 t0;