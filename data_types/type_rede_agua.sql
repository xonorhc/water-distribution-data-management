BEGIN;
CREATE TABLE :PGSCHEMA.tipo_rede_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO :PGSCHEMA.tipo_rede_agua
    VALUES (1, 'Adutora'),
    (2, 'Distribuicao'),
    (3, 'Recalque');
COMMIT;

