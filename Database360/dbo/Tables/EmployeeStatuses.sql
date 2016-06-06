CREATE TABLE [dbo].[EmployeeStatuses] (
    [ID]   INT           NOT NULL IDENTITY,
    [Name] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_EmployeeStatuses] PRIMARY KEY CLUSTERED ([ID] ASC)
);

