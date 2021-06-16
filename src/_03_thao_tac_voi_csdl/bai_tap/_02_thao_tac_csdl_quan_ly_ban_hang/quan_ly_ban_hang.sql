-- Thao tác với CSDL Quản lý bán hàng
insert into customer value (1, 'Minh Quan', 10), (2, 'Ngoc Oanh', 20), (3, 'Hong Ha', 50);
insert into `order`(order_id, customer_id, order_date) value (1, 1, '2006-03-21'), (2,2,'2006/03/23'), (3,1,'2006/03/16');
insert into product value (1,'May Giat', 3),(2, 'Tu Lanh', 5),(3,'Dieu Hoa', 7),(4,'Quat',1),(5,'Bep Dien',2);
insert into order_detail value (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hiển thị các thông tin  gồm order_id, order_date, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    order_id, order_date, order_total_price
FROM
    `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.customer_name AS Ten_KH,
    p.product_name AS Ten_SP,
    od.order_detail_quantity AS So_Luong
FROM
    customer c
        JOIN
    `order` o ON c.customer_id = o.customer_id
        JOIN
    order_detail od ON od.order_id = o.order_id
        JOIN
    product p ON p.product_id = od.product_id
ORDER BY ten_kh ASC , so_luong DESC;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.customer_name
FROM
    customer c
        LEFT JOIN
    `order` o ON c.customer_id = o.customer_id
WHERE
    O.order_id IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = order_detail_quantity*product_price)
SELECT 
    o.order_id AS ma_hoa_don,
    o.order_date AS ngay_ban,
    SUM(od.order_detail_quantity * p.product_price) AS tong_tien
FROM
    `order` o
        JOIN
    order_detail od ON o.order_id = od.order_id
        JOIN
    product p ON p.product_id = od.product_id
GROUP BY ma_hoa_don;