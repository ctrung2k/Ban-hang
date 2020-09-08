CREATE TABLE Product(	--sản phẩm
Id INT(11) auto INCREMENT PRIMARY KEY,
TypeID (11) not null,
SupplierID int(11) not null,
Name Varchar(200) not null,
UnitPrice INT(11) not null,
Description Varchar(200) not null,
Amount INT(6) not null,
); --done

CREATE TABLE ReciptDetail(	--chi tiết hóa đơn
ReceiptTime datetime not null,
ProductId INT(11) not null,
ReceiptId INT(11) auto increment primary key,
Amount INT(6) not null,
UnitPrice double(11) not null,
TotalPrice double(11) not null,
);--done

create table Supplier(	--nhà cung cấp
SupplierID int(11) auto increment primary key,
SupplierName varchar(200) not null,
SupplierAddress varchar(200) not null,,
SupplierPhone INT(11) not null,
);--done

create table Storage(	--kho
ProductId int(11),
ProductName varchar(200),
Amount int(11),
Ngaynhap DATE , --done
)

create table Revenue(	--doanh thu
RevenueDay double,
RevenueMonth double,
StatisticsDate TIMESTAMP --DONE
)

create table ProductType(	--loại sản phẩm
TypeID int(11), auto increment primary key,
TypeName varchar(200),
)--done

create table Cart(      --giỏ hàng
ProductName varchar(200),
Amount int(11),
UnitPrice double(11),
TotalPrice double(11), -- total price = amount * unit price
)-- done

create table CustomerAccount(	--tài khoản khách hàng
Email varchar(100),
Pass varchar(100),
CustomerName varchar(200),
CustomerAddress varchar(200),
CustomerPhone int(11),
CustomerGender BOOLEAN,
ID INT auto increment PRIMARY KEY
)
create table StaffAccount(	--tài khoản nhân viên
Pass varchar(100),
CustomerName varchar(200),
CustomerAddress varchar(200),
CustomerPhone int(11),
CustomerGender BOOLEAN,
ID INT auto increment PRIMARY KEY
)
