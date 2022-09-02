CREATE TABLE [dbo].[Products] (
    [Id]              INT            IDENTITY (1, 1) NULL,
    [Name]            NVARCHAR (MAX) NULL,
    [Description]     NVARCHAR (MAX) NULL,
    [Price]           FLOAT (53)     NULL,
    [ImageURL]        NVARCHAR (MAX) NULL,
    [productCategory] INT            NOT NULL,
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([Id] ASC)
);

