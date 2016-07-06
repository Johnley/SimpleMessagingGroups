CREATE TABLE [dbo].[MessagingGroups]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] VARCHAR(50) NULL, 
    [Owner] INT NULL, 
    [SendEmails] BIT NOT NULL DEFAULT 1, 
    [SendTexts] BIT NOT NULL DEFAULT 0, 
    [Active] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [FK_MessagingGroups_AddressBook] FOREIGN KEY ([Owner]) REFERENCES [AddressBook]([Id])
)
