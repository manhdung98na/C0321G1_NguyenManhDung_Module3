-- Bước 1:
CREATE DATABASE demo;
USE demo;

CREATE TABLE products (
    id INT PRIMARY KEY,
    product_code VARCHAR(25),
    product_name VARCHAR(25),
    product_price INT,
    product_amount INT,
    product_descriptiON VARCHAR(25),
    product_status BIT
);

-- Bước 2:
TRUNCATE TABLE products;
-- Tạo bảng Products với các trường dữ liệu
INSERT INTO products VALUE (1,'code1','name 1', 10000, 1, 'descriptiON 1', 1),
							(2,'code2','name 2', 20000, 2, 'descriptiON 2', 1),
							(3,'code3','name 3', 30000, 3, 'descriptiON 3', 0),
							(4,'code4','name 4', 40000, 4, 'descriptiON 4', 1),
							(5,'code5','name 5', 40000, 4, 'descriptiON 4', 1),
							(6,'code6','name 6', 40000, 4, 'descriptiON 4', 1),
							(7,'code7','name 7', 40000, 4, 'descriptiON 4', 1),
							(8,'code8','name 8', 40000, 4, 'descriptiON 4', 1),
							(9,'code9','name 9', 40000, 4, 'descriptiON 4', 1),
							(10,'code10','name 10', 40000, 4, 'descriptiON 4', 1),
							(11,'code11','name 11', 40000, 4, 'descriptiON 4', 1),
							(12,'code12','name 12', 40000, 4, 'descriptiON 4', 1),
							(13,'code13','name 13', 40000, 4, 'descriptiON 4', 1);
-- Bước 3
DROP INDEX UNIQUE_INDEX ON products;
DROP INDEX composite_INDEX ON products;

-- Tạo Unique Index trên bảng Products (sử dụng cột productCode để tạo chỉ mục)
CREATE UNIQUE INDEX UNIQUE_INDEX ON products(product_code);
-- Tạo Composite Index trên bảng Products (sử dụng 2 cột productName và productPrice)
CREATE INDEX composite_INDEX ON products(product_name, product_price);
-- Sử dụng câu lệnh EXPLAIN để biết được câu lệnh SQL của bạn thực thi như nào
EXPLAIN SELECT * FROM products WHERE product_code = 'code3';
EXPLAIN SELECT * FROM products WHERE product_name = 'name 12' AND product_price = '40000';

-- Bước 4:
-- Tạo view lấy về các thông tin: productCode, productName, productPrice, productStatus từ bảng products.
CREATE VIEW product_infomatiON AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        products;
        
SELECT 
    *
FROM
    product_infomatiON;
-- Tiến hành sửa đổi view
CREATE OR REPLACE VIEW product_infomatiON AS
    SELECT 
        product_code, product_name, product_price, product_status
    FROM
        products
    WHERE
        product_status = 1;

-- Tiến hành xoá view        
DROP VIEW product_infomatiON;

-- Bước 5:
-- Tạo store procedure lấy tất cả thông tin của tất cả các sản phẩm trong bảng product
DELIMITER //
CREATE PROCEDURE get_info_of_all_products()
BEGIN
	SELECT * FROM products;
END
// DELIMITER ;

CALL get_info_of_all_products();

-- Tạo store procedure thêm một sản phẩm mới
DELIMITER // 
CREATE PROCEDURE them_san_pham(IN id int, IN product_code varchar(25), IN product_name varchar(25))
BEGIN
	INSERT INTO products(id, product_code, product_name) value(id, product_code, product_name);
END
// DELIMITER ;

CALL them_san_pham(14, 'code 14', 'name 14');

-- Tạo store procedure sửa thông tin sản phẩm theo id
DELIMITER // 
CREATE PROCEDURE sua_thong_tin_theo_id(IN in_id int, IN in_product_code varchar(25), IN in_product_name varchar(25))
BEGIN
	UPDATE products SET product_code = in_product_code, product_name = in_product_name WHERE id = in_id;
END
// DELIMITER ;

CALL sua_thong_tin_theo_id(5,'Code 5', 'tên 5');
CALL get_info_of_all_products();