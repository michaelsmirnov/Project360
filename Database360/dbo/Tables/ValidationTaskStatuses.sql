CREATE TABLE [dbo].[ValidationTaskStatuses] (
    [ID]   INT           NOT NULL IDENTITY,
    [Name] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_ValidationTaskStatuses] PRIMARY KEY CLUSTERED ([ID] ASC)
);

