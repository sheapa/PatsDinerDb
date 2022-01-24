CREATE PROCEDURE [dbo].[spFood_All]
	
AS
begin
	set nocount on;

	select [Id], [Title], [Description], [Price]
	from dbo.food;

end
