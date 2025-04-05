CREATE TABLE tipo_captacao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO tipo_captacao
    VALUES (1, 'Superficial'),
    (2, 'Subterraneo');

