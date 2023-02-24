CREATE INDEX [IX_ALUNO] ON [Aluno]([Email]);
DROP INDEX [IX_ALUNO] ON [Aluno];
ALTER TABLE [Curso]
    ADD COLUMN [ID] INT IDENTITY(1, 1);
ALTER TABLE [Aluno]
    ADD CONSTRAINT [PK_ID] PRIMARY KEY([ID]);
SELECT * FROM Aluno;

----------------------------------------------------------------------------------------
CREATE TABLE [Curso](
    [ID] INT,
    [Nome] NVARCHAR(80) NOT NULL,
    CONSTRAINT [PK_Aluno] PRIMARY KEY ([ID]),
)
ALTER TABLE [Curso]
    ADD CONSTRAINT [FK_Categoria] FOREIGN KEY([CategoriaID])
        REFERENCES[Categoria]([ID]);
----------------------------------------------------------------------
CREATE TABLE [ProgressoCurso](
    [AlunoID] INT NOT NULL,
    [CursoID] INT NOT NULL,
    [Progresso] INT NOT NULL,
    [UltimaAtualizadocao] DATETIME NOT NULL DEFAULT(GETDATE())

    CONSTRAINT [PK_ProgressoCurso] PRIMARY KEY([AlunoID], [CursoID])
)
GO

CREATE TABLE [Categoria](
    [ID] INT,
    [Nome] NVARCHAR(80) NOT NULL
    CONSTRAINT [PK_CATEGORIA] PRIMARY KEY([ID])
);
GO

ALTER TABLE [Curso]
    ADD CONSTRAINT [FK_]

--------------------------------------------------------------------------
SELECT * FROM [Categoria];
BEGIN TRANSACTION
UPDATE 
    [Categoria] 
SET 
    [Nome] = 'Azure'
WHERE
    [ID] = 4

SELECT * FROM [Categoria]

ROLLBACK;
SELECT 
    COUNT(*)
FROM
    [Categoria]

--------------------------------------------------------------------------
CREATE TABLE [Curso](
    [ID] INT NOT NULL IDENTITY(1, 1),
    [Nome] NVARCHAR(80) NOT NULL,
    [CategoriaId] INT NOT NULL

    CONSTRAINT [PK_ID_Curso] PRIMARY KEY([ID]),
    CONSTRAINT [FK_Curso_Categoria] FOREIGN KEY([CategoriaId])
        REFERENCES [Categoria]([ID])
);

GO


INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Fundamentos do Java', 1)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Flutter', 3)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Angular', 2)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Teste', 1)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Teste', 3)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Teste', 2)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Teste do Java', 1)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Teste', 3)
INSERT INTO [Curso]([Nome], CategoriaId) VALUES ('Teste', 2)

SELECT TOP 12
    [ID], [Nome], [CategoriaId]
FROM 
    [Curso];
SELECT  
    [ID], [Nome], [CategoriaId]
FROM 
    [Curso]
WHERE
    [CategoriaId] = 2 
        OR 
    [ID] = 2; 


SELECT TOP 9
    [ID], [Nome], [CategoriaId]
FROM 
    [Curso]
WHERE
    [CategoriaId] = 2
ORDER BY    
    [Nome];

