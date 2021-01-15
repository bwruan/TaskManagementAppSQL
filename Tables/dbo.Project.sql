CREATE TABLE dbo.Project
(
	ProjectId bigint not null primary key identity(1, 1),
	ProjectName varchar(50) not null,
	ProjectDescription varchar(max) not null,
	OwnerAccountId bigint not null foreign key references dbo.Account(Id), 
	CreatedDate datetime2(7) not null default GETDATE(),
	UpdatedDate datetime2(7) not null default GETDATE()
);