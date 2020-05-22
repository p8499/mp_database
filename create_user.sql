alter profile default limit password_life_time unlimited;
create user username identified by password;
alter user username quota unlimited on users;
grant create session to username;
grant create table to username;
grant create view to username;
grant create sequence to username;
