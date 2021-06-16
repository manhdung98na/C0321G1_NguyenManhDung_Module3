-- [Thực hành] Store Procedure
Use classicmodels;
DELIMITER //
CREATE PROCEDURE findAllCustomers()
BEGIN

  SELECT * FROM customers;

END //
DELIMITER ;

call findAllCustomers();


DROP PROCEDURE IF EXISTS `findAllCustomers`;
DELIMITER //
CREATE PROCEDURE findAllCustomers()

BEGIN

SELECT * FROM customers where customerNumber = 175;

END //
DELIMITER ;order

call findAllCustomers();