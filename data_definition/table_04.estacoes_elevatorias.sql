CREATE TABLE IF NOT EXISTS :PGSCHEMA.estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, :SRID) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL, -- TODO: Auto-update when before/after estacoes_tratamento.
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.estacoes_elevatorias USING gist (geom);

