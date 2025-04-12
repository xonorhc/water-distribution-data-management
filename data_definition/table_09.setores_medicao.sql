CREATE TABLE IF NOT EXISTS :PGSCHEMA.setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, :SRID) NOT NULL,
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.setores_medicao USING gist (geom);

