CREATE TABLE dbo.Account 
(
    Id bigint PRIMARY KEY Identity(1,1) NOT NULL,
    [Name] varchar(25) not null,
	Email varchar(50) not null,
	[Password] varchar(32) not null,
	RoleId int Foreign key references dbo.Roles(Id) not null,
	ProfilePic varbinary(max),
	[Status] bit default 0 not null,
	CreatedDate datetime2(7) not null default getdate(),
	UpdatedDate datetime2(7),
	Active bit default 1 not null
);