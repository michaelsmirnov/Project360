CREATE TABLE [dbo].[ValidationResults] (
    [ID]               INT      IDENTITY (1, 1) NOT NULL,
    [ValidationTaskID] INT      NOT NULL,
    [QuestionID]       INT      NOT NULL,
    [Estimation]       INT      NOT NULL,
    [EstimationDate]   DATETIME CONSTRAINT [DF_ValidationResults_EstimationDate] DEFAULT (getdate()) NOT NULL,
    CONSTRAINT [PK_ValidationResults] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_ValidationResults_Questions] FOREIGN KEY ([QuestionID]) REFERENCES [dbo].[Questions] ([ID]) ON DELETE CASCADE,
    CONSTRAINT [FK_ValidationResults_ValidationTasks] FOREIGN KEY ([ValidationTaskID]) REFERENCES [dbo].[ValidationTasks] ([ID]) ON DELETE CASCADE
);

