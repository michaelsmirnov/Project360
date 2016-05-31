CREATE TABLE [dbo].[ValidationTasks] (
    [ID]                   INT      IDENTITY (1, 1) NOT NULL,
    [ValidationID]         INT      NOT NULL,
    [ValidatingEmployeeID] INT      NOT NULL,
    [ValidatedEmployeeID]  INT      NOT NULL,
    [StatusID]             INT      NOT NULL,
    [StartDate]            DATETIME NOT NULL,
    [EndDate]              DATETIME NOT NULL,
    CONSTRAINT [PK_ValidationTasks] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ValidationTasks_Employees] FOREIGN KEY ([ValidatingEmployeeID]) REFERENCES [dbo].[Employees] ([ID]),
    CONSTRAINT [FK_ValidationTasks_Employees1] FOREIGN KEY ([ValidatedEmployeeID]) REFERENCES [dbo].[Employees] ([ID]),
    CONSTRAINT [FK_ValidationTasks_Validations] FOREIGN KEY ([ValidationID]) REFERENCES [dbo].[Validations] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_ValidationTasks_ValidationTaskStatuses] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[ValidationTaskStatuses] ([ID])
);

