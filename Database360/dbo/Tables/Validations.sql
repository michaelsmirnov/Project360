CREATE TABLE [dbo].[Validations] (
    [ID]             INT           IDENTITY (1, 1) NOT NULL,
    [ValidationDate] DATETIME      NOT NULL,
    [StartDate]      DATETIME      NOT NULL,
    [EndDate]        DATETIME      NOT NULL,
    [Name]           VARCHAR (255) NOT NULL,
    [Description]    VARCHAR (MAX) NOT NULL,
    [StatusID]       INT           NOT NULL,
    CONSTRAINT [PK_Estimations] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Validations_ValidationStatuses] FOREIGN KEY ([StatusID]) REFERENCES [dbo].[ValidationStatuses] ([ID])
);

