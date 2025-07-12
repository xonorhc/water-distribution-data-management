BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.setores_abastecimento (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, :SRID) NOT NULL,
    nome varchar(50) UNIQUE,
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.setores_abastecimento USING gist (geom);
COMMENT ON TABLE sistema_agua.setores_abastecimento IS 'INFO: Area de abrangencia do sistema de abastecimento, sendo o ponto inicial a captacao de agua.';
COMMIT;

-- TODO: Create function to generate geometries from buffer around connected networks.
