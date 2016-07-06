CREATE TABLE [dbo].[AddressBook]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NULL, 
    [Email] VARCHAR(100) NULL, 
    [Phone] NCHAR(10) NULL, 
    [RecieveTexts] BIT NOT NULL DEFAULT 0
)
