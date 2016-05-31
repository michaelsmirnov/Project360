CREATE TABLE [dbo].[QuestionToRoles] (
    [ID]         INT IDENTITY (1, 1) NOT NULL,
    [RoleID]     INT NOT NULL,
    [QuestionID] INT NOT NULL,
    CONSTRAINT [PK_QuestionToRoles] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_QuestionToRoles_Questions] FOREIGN KEY ([QuestionID]) REFERENCES [dbo].[Questions] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_QuestionToRoles_Roles] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([ID]) ON DELETE CASCADE
);

