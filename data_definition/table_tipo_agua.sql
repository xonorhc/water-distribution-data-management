CREATE TABLE tipo_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO tipo_agua
    VALUES (1, 'Bruta'),
    (2, 'Tratada');

