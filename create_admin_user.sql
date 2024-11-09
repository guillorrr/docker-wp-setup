SET @username = 'admin';
SET @password = MD5('password'); 
SET @email = 'admin@example.com';
SET @display_name = 'Admin';

INSERT INTO wp_users (user_login, user_pass, user_nicename, user_email, user_status, display_name, user_registered)
VALUES (@username, @password, @display_name, @email, 0, @display_name, NOW());

SET @user_id = LAST_INSERT_ID();

INSERT INTO wp_usermeta (user_id, meta_key, meta_value)
VALUES (@user_id, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');

INSERT INTO wp_usermeta (user_id, meta_key, meta_value)
VALUES (@user_id, 'wp_user_level', '10');