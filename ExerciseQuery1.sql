CREATE OR ALTER VIEW X AS
SELECT 
    [Course].[Id],
    [Course].[Tag],
    [Course].[Title] AS [Titulo Curso],
    [Course].[Url],
    [Course].[Summary],
    [Category].[Title] AS [Titulo Category],
    [Author].[Name]
FROM [Course]
    INNER JOIN [Category] ON [Course].[CategoryId] = [Category].[Id]
    INNER JOIN [Author] ON [Course].[AuthorId] = [Author].[Id]
WHERE 
    [Active] = 1;