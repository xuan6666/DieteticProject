create database OnlineOrderDB
go
use OnlineOrderDB
go
create table UserLogin
(
	Id int primary key identity,
	Name varchar(50),		--真实姓名
	UserName	varchar(50),--登录账户
	Pwd varchar(50),	--登录密码
	Sex bit,	--用户性别
	Age int,	--用户年龄
	Address	varchar(50),--地址
	Chooser int,   --权限   管理员   用户
)
go
--菜品类型表(FoodType)
create table FoodType
(
  Id int identity primary key,
  Name varchar(20)--菜品类型名
)
go
--菜肴表(Menu)
create table Menu
(
  Id int identity primary key,--菜品编号
  Name varchar(20),--菜品名称
  TypeId int ,--菜品类型
  Price float,--菜品单价
  Remark varchar(100)--菜品备注
)
go
--桌位表(Desk)
create table Desk
(
  Id int identity primary key,
  DeskNum varchar(20),--座位号
  [State] bit default 0 --0为桌位为空 1为已有人
)
go
--订单表(Oders)
create table [Order]
(
  Id int identity primary key, --订单编号
  Name varchar(20),--客户姓名
  Num int,--人数,
  TelPhone varchar(13),--联系电话
  [State] int default 0,--0打包  1在店  2外卖
  DeskNum int default null,--桌号 若在店消费,则桌号不为null
  WorkId int,-- 若State为0 则存在,否则不存在
  [Address] varchar(50),--用户地址 若State为0 则存在,否则不存在
  BusiTime datetime
)
go
--订单明细表(OrderDetail)
create table OrderDetail
(
  Id int identity primary key,
  Name varchar(20),--所选菜品
  TypeId int,--类型Id
  Num int,--菜品数量
  Price float,--菜品价格,
  TotalMoney float,--菜品小计
  OrderId int,--订单编号
  [State] bit default 0 --0为未支付,1为已支付
)
go
--员工表(Worker)
create table Worker
(
  Id int identity primary key,--员工编号
  Name varchar(20),--员工姓名
  Sex bit,--员工性别
  Nation varchar(20),--民族
  TelPhone varchar(13)--联系电话
)
go
insert into Desk VALUES('A001',default),('A002',default),('A003',default),('A004',default),('A005',default),('A006',default),('A007',default),('A008',default),('A009',default),
                       ('B001',default),('B002',default),('B003',default),('B004',default),('B005',default),('B006',default),('B007',default),('B008',default),('B009',default),
					   ('C001',default),('C002',default),('C003',default),('C004',default),('C005',default),('C006',default),('C007',default),('C008',default),('C009',default),
					   ('D001',default),('D002',default),('D003',default),('D004',default),('D005',default),('D006',default),('D007',default),('D008',default),('D009',default)