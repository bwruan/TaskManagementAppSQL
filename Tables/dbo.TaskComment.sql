CREATE TABLE dbo.TaskComment
(
    CommentId bigint PRIMARY KEY Identity(1,1) NOT NULL,
	Comment varchar(max) not null,
	TaskId bigint Foreign key references dbo.Task(TaskId) not null,
	CommenterId bigint Foreign key references dbo.Account(Id) not null
);