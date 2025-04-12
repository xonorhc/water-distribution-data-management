CREATE TABLE IF NOT EXISTS :PGSCHEMA.descargas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_lancamento (id) NOT NULL,
    descarga smallint REFERENCES :PGSCHEMA.tipo_descarga (id) NOT NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.descargas USING gist (geom);

