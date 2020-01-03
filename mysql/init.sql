create database demo_development;
create database demo_test;
create user 'rails_user'@'%';
grant all privileges on demo_development.* to 'rails_user'@'%';
grant all privileges on demo_test.* to 'rails_user'@'%';
alter user 'rails_user'@'%' identified with mysql_native_password by 'pass';
