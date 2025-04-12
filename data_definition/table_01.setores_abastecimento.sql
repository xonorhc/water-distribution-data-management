CREATE TABLE IF NOT EXISTS :PGSCHEMA.setores_abastecimento (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, :SRID) NOT NULL, -- TODO: Create a function to generate geometries from buffer around networks.
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.setores_abastecimento USING gist (geom);

