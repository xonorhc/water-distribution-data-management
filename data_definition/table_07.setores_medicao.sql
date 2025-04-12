CREATE TABLE IF NOT EXISTS :PGSCHEMA.setores_medicao (
    id serial PRIMARY KEY,
    geom geometry(polygon, :SRID) NOT NULL, -- TODO: Inserir a partir do st_buffer(redes_agua.geom) apos os medidores_vazao.geom
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.setores_medicao USING gist (geom);

