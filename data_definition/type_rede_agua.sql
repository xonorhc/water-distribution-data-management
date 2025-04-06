CREATE TABLE sistema_agua.tipo_rede_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);

INSERT INTO sistema_agua.tipo_rede_agua
    VALUES (1, 'Adutora'),
    (2, 'Distribuicao'),
    (3, 'Recalque');

