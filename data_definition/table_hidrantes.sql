CREATE TABLE :PGSCHEMA.hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_hidrante (id) NOT NULL,
    fabricante varchar(255),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.hidrantes USING gist (geom);

