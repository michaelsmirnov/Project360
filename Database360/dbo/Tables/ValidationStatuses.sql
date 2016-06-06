CREATE TABLE [dbo].[ValidationStatuses] (
    [ID]   INT           NOT NULL IDENTITY,
    [Name] VARCHAR (255) NOT NULL,
    CONSTRAINT [PK_ValidationStatuses] PRIMARY KEY CLUSTERED ([ID] ASC)
);

