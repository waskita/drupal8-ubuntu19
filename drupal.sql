create database drupal;
CREATE USER 'drupal'@'localhost' IDENTIFIED BY 'drupal'; 
grant all privileges on drupal.* to 'drupal'@'localhost';
ALTER USER 'drupal'@'localhost' IDENTIFIED WITH mysql_native_password BY 'drupal';
flush privileges;
