SELECT TOP 100 * FROM Curso;
UPDATE 
    [Curso] 
SET
    [Nome] = 'Fundamentos de Flutter'
WHERE
    [ID] = 6;

SELECT TOP 100 
    [ID], [Nome]
FROM
    [Curso]
WHERE 
    [Nome] LIKE '%Fundamentos%'; 

SELECT TOP 100
    *
FROM 
    [Curso]
WHERE 
    [Nome] IN ('Flutter', 'Teste');

SELECT TOP 100 
    [ID], [Nome]
FROM
    [Curso]
WHERE 
    [Nome] IN('Flutter', 'Teste') OR [Nome] LIKE '%Fundamentos%';


SELECT * FROM [Curso]
WHERE   
    [Nome] BETWEEN 'Flutter' AND 'Teste';

---------------------------------------------------------------------------

USE Cursos;
SELECT TOP 10
    *
FROM
    [Curso]
    INNER JOIN [Categoria]
    ON
    [Curso].[CategoriaId] = [Categoria].[ID];


SELECT TOP 100
    *
    FROM
    [Curso]
    FULL OUTER JOIN [Categoria]
    ON
    [Curso].[CategoriaId] = [Categoria].[ID];
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('QWE', 8);
INSERT INTO [Categoria]([Nome]) VALUES ('TesteTTTTTSSSEEEEEEEEE');
SELECT * FROM [Curso];
INSERT INTO [Curso]([Nome], [CategoriaId]) VALUES ('Teste3', 5);
ALTER TABLE [Curso]
    DROP CONSTRAINT [FK_Curso_Categoria];
 
    SELECT TOP 100
        [ID], [NOME]
        FROM
            [Curso]
    UNION

    SELECT TOP 100
        [ID], [NOME]
        FROM
            [Categoria];
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

