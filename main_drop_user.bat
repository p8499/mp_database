chcp 65001
set NLS_LANG=SIMPLIFIED CHINESE_CHINA.AL32UTF8
sqlplus username/password@db02 as sysdba @%~dp0main_drop_user.sql
pause
