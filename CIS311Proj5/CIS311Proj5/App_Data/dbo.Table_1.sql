CREATE TABLE [dbo].[Table1] (
    [Id]      INT         IDENTITY (1, 1) NOT NULL,
    [Name]    NCHAR (50)  NULL,
    [Email]   NCHAR (50)  NULL,
    [Subject] NCHAR (50)  NULL,
    [Message] NCHAR (100) NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

