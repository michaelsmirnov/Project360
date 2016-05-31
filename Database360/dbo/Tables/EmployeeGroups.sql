CREATE TABLE [dbo].[EmployeeGroups] (
    [ID]   INT           IDENTITY (1, 1) NOT NULL,
    [Name] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_EmployeeGroups] PRIMARY KEY CLUSTERED ([ID] ASC)
);

