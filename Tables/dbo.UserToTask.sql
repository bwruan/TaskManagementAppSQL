CREATE TABLE dbo.UserToTask 
(
    Id bigint PRIMARY KEY Identity(1,1) NOT NULL,
    AccountId bigint Foreign key references dbo.Account(Id) not null,
	TaskId bigint Foreign key references dbo.Task(TaskId) not null
);