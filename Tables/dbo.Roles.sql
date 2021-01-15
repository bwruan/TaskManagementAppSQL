Create table dbo.Roles
(
	Id int PRIMARY KEY Identity(1,1) NOT NULL,
    [Name] varchar(25) not null,
	CreatedDate datetime2(7) not null default getdate(),
	UpdatedDate datetime2(7)
);