CREATE TABLE Product(	--sản phẩm
Id INT(11) auto INCREMENT PRIMARY KEY,
TypeID (11),
Name Varchar(200) not null,
UnitPrice INT(11) not null,
Description Varchar(200) not null,
);

CREATE TABLE ReciptDetail(	--chi tiết hóa đơn
ReceiptTime datetime,
ProductId INT(11),
ReceiptId INT(11),
Amount INT(6) not null,
);

create table Supplier(	--nhà cung cấp
SupplierID int(11) auto increment primary key,
ProductId INT(11),
ProductName varchar(200) not null,
ProductPrice double(11),
Amount INT(6) not null,
);

create table Storage(	--kho
ProductId int(11),
ProductName varchar(200),
Amount int(11),
)

create table Revenue(	--doanh thu
RevenueDay int(11),
RevenueMonth int(11),
)

create table ProductType(	--loại sản phẩm
TypeID int(11), auto increment primary key,
TypeName varchar(200),
)

create table Cart(      --giỏ hàng
ProductName varchar(200),
Amount int(11),
UnitPrice double(11),
TotalPrice double(11), -- total price = amount * unit price
)

create table HistoryTransaction(	--lịch sử giao dịch

)