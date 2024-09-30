CREATE USER 'hk_stage_wp_dev'@'%' IDENTIFIED BY 'password';
CREATE DATABASE hk_stage_wp_dev;
GRANT ALL ON hk_stage_wp_dev.* TO 'hk_stage_wp_dev'@'%';
FLUSH PRIVILEGES;