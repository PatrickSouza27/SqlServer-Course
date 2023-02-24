CREATE OR ALTER VIEW X AS
SELECT TOP 100
    [Categoria].[ID],
    [Categoria].[Nome],
    COUNT([Curso].[CategoriaId]) AS [QTDcurso]
FROM
    [Categoria]
    INNER JOIN [Curso] ON [Curso].[CategoriaId] = [Categoria].[ID]
    GROUP BY
    [Categoria].[ID],
    [Categoria].[Nome],
    [Curso].[CategoriaId]
    HAVING
    COUNT([Curso].[CategoriaId]) > 2;


SELECT * FROM X;

--------------------------------------------------------

CREATE OR ALTER PROCEDURE [X]
    @NomeCategoria NVARCHAR(60)
AS  
    DECLARE @IDCate INT 
    SET @IDCate = (SELECT TOP 1 [ID] FROM [Categoria] WHERE [Nome] = @NomeCategoria)
    SELECT * FROM [Curso] WHERE [CategoriaId] = @IDCate;
EXEC [X] 'Back';
SELECT * FROM [Categoria]
