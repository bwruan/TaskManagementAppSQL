CREATE TABLE dbo.UserToProject
(
	Id bigint not null primary key identity(1, 1),
	AccountId bigint not null foreign key references dbo.Account(Id), 
	ProjectId bigint not null foreign key references dbo.Project(ProjectId)
);