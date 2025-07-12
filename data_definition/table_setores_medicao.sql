BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, :SRID) NOT NULL,
    nome varchar(50) UNIQUE,
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.setores_medicao USING gist (geom);
COMMENT ON TABLE sistema_agua.setores_medicao IS 'INFO: Area de abrangencia dos medidores de vazao.';
COMMIT;

-- TODO: Create function to generate geometries from buffer around connected networks when begin to "medidores_vazao".
