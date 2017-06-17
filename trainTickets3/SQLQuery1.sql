
go
use trainTickets
go

--Customer表 身份证号，密码，真实姓名，手机号，邮箱
CREATE TABLE Customer
(
	sid varchar(30) not null primary key,
	password varchar(30) not null,
	username varchar(30) not null,
	telphone varchar(30) not null,
	email varchar(30) not null,
)


--Train 车次 出发时间 到站时间 出发站 终点站 乘客人数 票价 剩余票数  
CREATE TABLE Train
(
	num varchar(30) not null primary key,
	stime varchar(30) not null,
	etime char(15) not null,
	sstation varchar(30) not null,
	estation varchar(30) not null,
	customcount varchar(30) not null,
	leftcount varchar(30) not null,
	price varchar(30) not null
)




--订单 1订单号 2创建时间 3车次信息 4身份证 5数量 6单价 7座位信息 8支付方式 9支付状态
CREATE TABLE Orders
(
	ordernum varchar(90) not null primary key,
	time varchar(30) not null,
	train varchar(30) not null,
	sid varchar(30) not null,
	ticketcount varchar(50) not null,
	price varchar(50) null,
	seatnum varchar(50) null,
	type varchar(30) not null, 
	status varchar(50) null
)

go
use trainTickets
go


--管理员 1.id
CREATE TABLE Admin
(
	a_id varchar(30) not null primary key,
	a_passwd varchar(30) not null
)