CREATE TABLE :PGSCHEMA.tipo_hidrante (
    id smallint PRIMARY KEY,
    tipo varchar(255) UNIQUE NOT NULL
);

INSERT INTO :PGSCHEMA.tipo_hidrante
    VALUES (1, 'Coluna'),
    (2, 'Subterraneo');

