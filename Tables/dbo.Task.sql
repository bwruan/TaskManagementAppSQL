CREATE TABLE dbo.Task 
(
    TaskId bigint PRIMARY KEY Identity(1,1) NOT NULL,
    TaskName varchar(50) not null,
	TaskDescription varchar(max) not null,
	ProjectId bigint Foreign key references dbo.Project(ProjectId) not null,
	CreatedDate datetime2(7) not null default getdate(),
	UpdatedDate datetime2(7) not null default getdate(),
	CompletedDate datetime2(7) not null,
	DueDate datetime2(7) not null
);