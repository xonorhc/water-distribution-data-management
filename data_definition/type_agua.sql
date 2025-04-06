CREATE TABLE sistema_agua.tipo_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_agua
    VALUES (1, 'Bruta'),
    (2, 'Tratada');

