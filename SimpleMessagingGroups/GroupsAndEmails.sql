CREATE VIEW [dbo].[GroupsAndEmails]
    AS SELECT        dbo.MessagingGroups.Id AS GroupID, dbo.MessagingGroups.Name AS GroupName, dbo.AddressBook.Email
    FROM            dbo.AddressesInGroups INNER JOIN
                             dbo.MessagingGroups ON dbo.AddressesInGroups.GroupID = dbo.MessagingGroups.Id LEFT OUTER JOIN
                             dbo.AddressBook ON dbo.AddressesInGroups.AddressID = dbo.AddressBook.Id
    WHERE        (dbo.MessagingGroups.SendEmails = 1)
