
go
use trainTickets
go

--Customer�� ���֤�ţ����룬��ʵ�������ֻ��ţ�����
CREATE TABLE Customer
(
	sid varchar(30) not null primary key,
	password varchar(30) not null,
	username varchar(30) not null,
	telphone varchar(30) not null,
	email varchar(30) not null,
)


--Train ���� ����ʱ�� ��վʱ�� ����վ �յ�վ �˿����� Ʊ�� ʣ��Ʊ��  
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




--���� 1������ 2����ʱ�� 3������Ϣ 4���֤ 5���� 6���� 7��λ��Ϣ 8֧����ʽ 9֧��״̬
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


--����Ա 1.id
CREATE TABLE Admin
(
	a_id varchar(30) not null primary key,
	a_passwd varchar(30) not null
)