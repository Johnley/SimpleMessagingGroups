CREATE TABLE [dbo].[AddressesInGroups]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [AddressID] INT NULL, 
    [GroupID] INT NULL, 
    CONSTRAINT [FK_AddressesInGroups_AddressBook] FOREIGN KEY ([AddressID]) REFERENCES [AddressBook]([Id]), 
    CONSTRAINT [FK_AddressesInGroups_MessagingGroups] FOREIGN KEY ([GroupID]) REFERENCES [MessagingGroups]([Id])
)
