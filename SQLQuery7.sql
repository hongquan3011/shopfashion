*/1.Bảng  products
INSERT INTO products
    (id, male_or_female, amount, create_day, description, discount, image, name, status, brand, category)
VALUES
    ('MSP001','true', '45', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '50%', 'aopolo.png','Áo POLO','true','DR5','AN'),
	('MSP002','true', '75', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '20%', 'aopolo.png','Áo Sơ Mi','true','GG5','AN'),
	('MSP003','true', '145', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '10%', 'aopolo.png','Radar shirt','true','CN5','AN'),
	('MSP004','false', '95', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '15%', 'aopolo.png','Jackbot Shirt','true','VT5','AN'),
	('MSP005','false', '25', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '20%', 'aopolo.png','Old Sschool Varsity','true','AK','AK'),
	('MSP006','true', '84', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '40%', 'aopolo.png','Pirate Varsity','true','BR5','AK'),
	('MSP007','true', '89', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '30%', 'aopolo.png','The Clould','true','GG5','AN'),
	('MSP008','false', '71', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '10%', 'aopolo.png','Greek Shirt','true','BR5','AN'),
	('MSP009','false', '93', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '40%', 'aopolo.png','Sky Pant','true','DR5','QD'),
	('MSP0010','false', '215', '2021-10-25', 'Chất liệu vải mỏng nhẹ cho mùa hè', '30%', 'aopolo.png','Rock Pants','true','VS5','QD')



*/2.Bảng brands
INSERT INTO brands
	(id,name)
VALUES
	('GG5','GUCCI'),
	('DR5','DIOR'),
	('VT5','Louis Vuittion'),
	('CN5','Chanel'),
	('PD5','Prada'),
	('BR5','Burberry'),
	('VS5','Versace')

*/3.Bảng Categories

INSERT INTO categories
    (id, name)
VALUES
    ('AK','Áo khoác'),
	('AL','Áo len'),
	('AN','Áo ngắn'),
	('QD','Quần dài'),
	('QN','Quần ngắn'),
	('DH','Đồng hồ'),
	('TX','Túi xách')



*/4.Bảng Color

INSERT INTO colors
    (id, name)
VALUES
    ('MD','Màu đỏ'),
	('MH','Màu hồng'),
	('MXB','Màu xanh da trời'),
	('MD0','Màu đen'),
	('MXC','Màu xanh nõn chuối'),
	('MD1','Màu đà'),
	('MV','Màu vàng')





*/5.Bảng tablecolor

INSERT INTO tablecolors
    (id, color, product)
VALUES
    ('TB1','MV', 'MSP001'),
	('TB2','MD1', 'MSP002'),
	('TB3','MD', 'MSP003'),
	('TB4','MXB', 'MSP004'),
	('TB5','MXC', 'MSP005'),
	('TB6','MV', 'MSP006'),
	('TB7','MD1', 'MSP007'),
	('TB8','MD', 'MSP008'),
	('TB9','MXB', 'MSP009'),
	('TB10','MXC', 'MSP0010')



*/6.Bảng Size

INSERT INTO sizes
    (id, name)
VALUES
    ('00','Size M'),
	('01','Size L'),
	('02','Size XL'),
	('03','Size 2XL'),
	('28','Size 28'),
	('29','Size 29'),
	('30','Size 30'),
	('31','Size 31'),
	('32','Size 32'),
	('34','Size 34'),
	('35','Size 35'),
	('36','Size 36'),
	('37','Size 37'),
	('38','Size 38'),
	('39','Size 39'),
	('40','Size 40'),
	('41','Size 41')

**// Nếu nó báo lỗi off thì chạy câu lệnh này cho các bảng báo lỗi
SET IDENTITY_INSERT sizes ON 

*/7.Bảng Tablesizes

INSERT INTO tablesizes
    (id, product, size)
VALUES
    ('001','MSP1', '01'),
	('002','MSP2', '02'),
	('003','MSP3', '03'),
	('004','MSP4', '28'),
	('005','MSP5', '29'),
	('006','MSP6', '31'),
	('007','MSP7', '40'),
	('008','MSP8', '29'),
	('009','MSP9', '31'),
	('0010','MSP10', '03')

