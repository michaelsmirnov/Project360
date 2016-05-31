CREATE TABLE [dbo].[EmployeeToGroups] (
    [ID]         INT IDENTITY (1, 1) NOT NULL,
    [EmployeeID] INT NOT NULL,
    [GroupID]    INT NOT NULL,
    CONSTRAINT [PK_EmployeeToGroups] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_EmployeeToGroups_EmployeeGroups] FOREIGN KEY ([GroupID]) REFERENCES [dbo].[EmployeeGroups] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_EmployeeToGroups_Employees] FOREIGN KEY ([EmployeeID]) REFERENCES [dbo].[Employees] ([ID])
);

