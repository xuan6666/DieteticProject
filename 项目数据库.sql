create database OnlineOrderDB
go
use OnlineOrderDB
go
--�û���(User)
create table [User]
(
  Id int identity primary key,--�û����
  Name varchar(20),--�û�����
  Pwd varchar(16)--�û�����
)
go
--��Ʒ���ͱ�(FoodType)
create table FoodType
(
  Id int identity primary key,
  Name varchar(20)--��Ʒ������
)
go
--���ȱ�(Menu)
create table Menu
(
  Id int identity primary key,--��Ʒ���
  Name varchar(20),--��Ʒ����
  TypeId int ,--��Ʒ����
  Price float,--��Ʒ����
  Remark varchar(100)--��Ʒ��ע
)
go
--��λ��(Desk)
create table Desk
(
  Id int identity primary key,
  DeskNum varchar(20),--��λ��
  [State] bit default 0 --0Ϊ��λΪ�� 1Ϊ������
)
go
--������(Oders)
create table [Order]
(
  Id int identity primary key, --�������
  Name varchar(20),--�ͻ�����
  Num int,--����,
  TelPhone varchar(13),--��ϵ�绰
  [State] int default 0,--0���  1�ڵ�  2����
  DeskNum int default null,--���� ���ڵ�����,�����Ų�Ϊnull
  WorkId int,-- ��StateΪ0 �����,���򲻴���
  [Address] varchar(50),--�û���ַ ��StateΪ0 �����,���򲻴���
  BusiTime datetime
)
go
--������ϸ��(OrderDetail)
create table OrderDetail
(
  Id int identity primary key,
  Name varchar(20),--��ѡ��Ʒ
  TypeId int,--����Id
  Num int,--��Ʒ����
  Price float,--��Ʒ�۸�,
  TotalMoney float,--��ƷС��
  OrderId int,--�������
  [State] bit default 0 --0Ϊδ֧��,1Ϊ��֧��
)
go
--Ա����(Worker)
create table Worker
(
  Id int identity primary key,--Ա�����
  Name varchar(20),--Ա������
  Sex bit,--Ա���Ա�
  Nation varchar(20),--����
  TelPhone varchar(13)--��ϵ�绰
)
go
insert into Desk VALUES('A001',default),('A002',default),('A003',default),('A004',default),('A005',default),('A006',default),('A007',default),('A008',default),('A009',default),
                       ('B001',default),('B002',default),('B003',default),('B004',default),('B005',default),('B006',default),('B007',default),('B008',default),('B009',default),
					   ('C001',default),('C002',default),('C003',default),('C004',default),('C005',default),('C006',default),('C007',default),('C008',default),('C009',default),
					   ('D001',default),('D002',default),('D003',default),('D004',default),('D005',default),('D006',default),('D007',default),('D008',default),('D009',default)