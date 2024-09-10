@echo off
REM Replace the placeholders with your actual values
set ORACLE_HOME=D:\Oracle\Home
set PATH=%ORACLE_HOME%\BIN;%PATH%
set USERNAME=MY_USERNAME
set PASSWORD=MY_PASSWORD
set HOSTNAME=localhost
set PORT=1521
set SID=DB_NAME

REM Prompt user for backup filename
set /p BACKUPFILENAME="Enter backup filename (DB_NAME_dump): "

REM Save SQL queries in a separate file (e.g., queries.sql)
echo alter session set "_oracle_script"=TRUE; > queries.sql
echo drop user USERNAME cascade; >> queries.sql
echo create user USERNAME identified by "USERNAME"; >> queries.sql
echo GRANT CONNECT, RESOURCE, DBA TO USERNAME; >> queries.sql
echo grant create session to USERNAME; >> queries.sql
echo grant create table to USERNAME; >> queries.sql
echo alter user USERNAME quota unlimited on users; >> queries.sql
echo grant create view, create procedure, create sequence to USERNAME; >> queries.sql
echo EXIT; >> queries.sql

sqlplus %USERNAME%/%PASSWORD%@%HOSTNAME%:%PORT%/%SID% AS SYSDBA @queries.sql

impdp MY_USERNAME/MY_PASSWORD schemas=GLOBAL directory=data_pump_dir dumpfile=%BACKUPFILENAME%.dmp logfile=%BACKUPFILENAME%.log
