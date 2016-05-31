CREATE TABLE [dbo].[Employees] (
    [ID]            INT           NOT NULL,
    [Name]          VARCHAR (255) NOT NULL,
    [PrimaryRoleID] INT           NOT NULL,
    [ExternalID]    VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Employees_Roles] FOREIGN KEY ([PrimaryRoleID]) REFERENCES [dbo].[Roles] ([ID])
);

