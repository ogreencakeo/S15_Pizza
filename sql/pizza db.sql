create database pizzadb;

use pizzadb;

select * from MenuTable;
select * from Non_memberTable;
select * from MemberTable;
select * from OderTable;
select * from  AddressTale;
select * from AddMenuTable;
select * from OrderHistoryTable;


CREATE TABLE MenuTable (
	MENUNAME VARCHAR(20)	NOT NULL,
	MENUPRICE  INT	NOT NULL,
	MENUDESCRIPTION	VARCHAR(20)	NOT NULL,
	MENUSIZE INT	NOT NULL,
	MENUNUTRIENT	VARCHAR(20)	NOT NULL,
	MENUORIGIN	VARCHAR(20)	NOT NULL
);

CREATE TABLE Non_memberTable (
	ORDERNUM	int	NOT NULL
);

CREATE TABLE MemberTable (
	ID	VARCHAR(20)	NOT NULL,
	PWD	VARCHAR(20)	NOT NULL
);

CREATE TABLE OderTable (
	ORDERNUM	int	NOT NULL,
	ORDERSELECT	int	NOT NULL,
	ORDERTIME	Date	NOT NULL,
	MEMBERID	VARCHAR(20)	NOT NULL
);

-- EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'배달주문 :1  포장주문 :2' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'OderTable', @level2type=N'COLUMN',@level2name=N'ORDERSELECT';

CREATE TABLE AddressTale (
	ORDERSHOP	VARCHAR(20)	NOT NULL,
	DELIBERYPLACE	VARCHAR(20)	NULL,
	ORDERNUM	int	NOT NULL
);

CREATE TABLE  AddMenuTable(
	ADDMENUID	int	NOT NULL,
	ADDMENUNAME	VARCHAR(20)	NULL
);

-- EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:치즈 2:올리브 4:페페로니 64 128' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Untitled', @level2type=N'COLUMN',@level2name=N'ADDMENUID';

CREATE TABLE OrderHistoryTable(
	ORDERDATE	DATE	NOT NULL,
	QUANTITY	int	NOT NULL,
	ADDMENUID	int	NOT NULL,
	MENUNAME	VARCHAR(20)	NOT NULL,
	ORDERNUM	int	NOT NULL
);

-- EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'1:치즈 2:올리브 4:페페로니 64 128' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'or', @level2type=N'COLUMN',@level2name=N'ADDMENUID';

