CREATE TABLE tipo_situacao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_situacao
    VALUES (1, 'Ativa'),
    (2, 'Inativa'),
    (3, 'Em construcao');

