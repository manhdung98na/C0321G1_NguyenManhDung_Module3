-- Lấy user theo id 
DELIMITER $$
DROP PROCEDURE IF EXISTS get_user_by_id;
CREATE PROCEDURE get_user_by_id(IN user_id INT)
BEGIN
    SELECT users.name, users.email, users.country
    FROM users
    where users.id = user_id;
END$$
DELIMITER ;

-- thêm user
DELIMITER $$
DROP PROCEDURE IF EXISTS insert_user;
CREATE PROCEDURE insert_user(IN user_name varchar(50),
                             IN user_email varchar(50),
                             IN user_country varchar(50))
BEGIN
    INSERT INTO users(name, email, country) VALUES (user_name, user_email, user_country);
END$$
DELIMITER ;

-- lấy hết tất cả user
DELIMITER $$
DROP PROCEDURE IF EXISTS get_list_user;
CREATE PROCEDURE get_list_user()
BEGIN
    SELECT * FROM users;
END
$$ DELIMITER ;

-- sửa thông tin users theo id
DELIMITER $$
DROP PROCEDURE IF EXISTS update_user;
CREATE PROCEDURE update_user(IN new_id INT, IN new_name varchar(120), IN new_email varchar(120),
                             IN new_country varchar(120))
BEGIN
    UPDATE users
    SET `name`  = new_name,
        email   = new_email,
        country = new_country
    WHERE id = new_id;
END;
$$ DELIMITER ;

-- xoá user theo id
DELIMITER $$
DROP PROCEDURE IF EXISTS remove_user;
CREATE PROCEDURE remove_user(IN remove_id INT)
BEGIN
    DELETE
    FROM users
    WHERE id = remove_id;
END
$$ DELIMITER ;