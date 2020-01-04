create database simple_cms_development;
create database simple_cms_test;
create user 'rails_user'@'%';
grant all privileges on simple_cms_development.* to 'rails_user'@'%';
grant all privileges on simple_cms_test.* to 'rails_user'@'%';
alter user 'rails_user'@'%' identified with mysql_native_password by 'secretpassword';
set collation_database='utf8mb4_general_ci';
