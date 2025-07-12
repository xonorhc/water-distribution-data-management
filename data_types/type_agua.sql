BEGIN;
CREATE TABLE :PGSCHEMA.tipo_agua (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO :PGSCHEMA.tipo_agua
    VALUES (1, 'Bruta'),
    (2, 'Tratada');
COMMIT;

