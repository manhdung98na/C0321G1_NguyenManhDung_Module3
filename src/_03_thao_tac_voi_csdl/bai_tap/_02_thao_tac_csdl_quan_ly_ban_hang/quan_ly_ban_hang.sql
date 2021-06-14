-- Thao tác với CSDL Quản lý bán hàng
insert into customer value (1, 'Minh Quan', 10), (2, 'Ngoc Oanh', 20), (3, 'Hong Ha', 50);
insert into `order`(oID, cID, oDate) value (1, 1, '2006-03-21'), (2,2,'2006/03/23'), (3,1,'2006/03/16');
insert into product value (1,'May Giat', 3),(2, 'Tu Lanh', 5),(3,'Dieu Hoa', 7),(4,'Quat',1),(5,'Bep Dien',2);
insert into orderdetail value (1,1,3),(1,3,7),(1,4,2),(2,1,1),(3,1,8),(2,5,4),(2,3,3);

-- Hiển thị các thông tin  gồm oID, oDate, oPrice của tất cả các hóa đơn trong bảng Order
SELECT 
    oID, oDate, oTotalPrice
FROM
    `order`;

-- Hiển thị danh sách các khách hàng đã mua hàng, và danh sách sản phẩm được mua bởi các khách
SELECT 
    c.cname AS Ten_KH, p.pname AS Ten_SP, od.odqty AS So_Luong
FROM
    customer c
        JOIN
    `order` o ON c.cid = o.cid
        JOIN
    orderdetail od ON od.oid = o.oid
        JOIN
    product p ON p.pid = od.pid
ORDER BY ten_kh ASC , so_luong DESC;

-- Hiển thị tên những khách hàng không mua bất kỳ một sản phẩm nào
SELECT 
    c.cname
FROM
    customer c
        LEFT JOIN
    `order` o ON c.cid = o.cid
WHERE
    O.oid IS NULL;

-- Hiển thị mã hóa đơn, ngày bán và giá tiền của từng hóa đơn (giá một hóa đơn được tính bằng tổng giá bán của từng loại mặt hàng xuất hiện trong hóa đơn. Giá bán của từng loại được tính = odQTY*pPrice)
SELECT 
    o.oid AS ma_hoa_don,
    o.odate AS ngay_ban,
    SUM(od.odqty * p.pprice) AS tong_tien
FROM
    `order` o
        JOIN
    orderdetail od ON o.oid = od.oid
        JOIN
    product p ON p.pid = od.pid
GROUP BY ma_hoa_don;