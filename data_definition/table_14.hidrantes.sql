CREATE TABLE IF NOT EXISTS :PGSCHEMA.hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_hidrante (id) NOT NULL,
    fabricante varchar(50),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100), --NOTE: Metros cubicos por hora (m³/h)
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.hidrantes USING gist (geom);

