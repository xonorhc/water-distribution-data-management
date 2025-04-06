CREATE TABLE sistema_agua.tipo_descarga (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_descarga
    VALUES (1, 'Boca de Lobo'),
    (2, 'Corpo Hidrico'),
    (3, 'Galeria Pluvial'),
    (4, 'Poco Visita'),
    (5, 'Sarjeta');

