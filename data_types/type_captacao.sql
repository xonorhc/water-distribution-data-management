BEGIN;
CREATE TABLE :PGSCHEMA.tipo_captacao (
    id smallint PRIMARY KEY,
    tipo varchar UNIQUE NOT NULL
);
INSERT INTO :PGSCHEMA.tipo_captacao
    VALUES (1, 'Superficial'),
    (2, 'Subterraneo');
COMMIT;

