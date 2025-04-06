CREATE TABLE sistema_agua.tipo_captacao (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_captacao
    VALUES (1, 'Superficial'),
    (2, 'Subterraneo');

