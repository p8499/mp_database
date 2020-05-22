chcp 65001
set NLS_LANG=SIMPLIFIED CHINESE_CHINA.AL32UTF8
sqlplus username/password@db02 as sysdba @%~dp0main_create_user.sql
pause
