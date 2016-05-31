CREATE TABLE [dbo].[Questions] (
    [ID]               INT            IDENTITY (1, 1) NOT NULL,
    [ParentQuestionID] INT            NULL,
    [MainText]         VARCHAR (255)  NULL,
    [Description]      VARCHAR (4096) NULL,
    [OrderNum]         INT            NOT NULL,
    CONSTRAINT [PK_Questions] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Questions_Questions] FOREIGN KEY ([ParentQuestionID]) REFERENCES [dbo].[Questions] ([ID])
);

