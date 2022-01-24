/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if not exists (select * from dbo.food)
begin
    insert into dbo.food(Title,[Description], Price)
    values ('Cheeseburger Meal', 'A cheeseburger, fries and drink', 5.95),
    ('Chili Dog Meal', 'Two Chili Dogs, fries and drink', 4.15),
    ('Vegan Meal', 'A large salad, soup and drink', 6.95);
end
GO
