BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.unidades_operacionais (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, :SRID) NOT NULL,
    nome varchar(50) UNIQUE,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.unidades_operacionais USING gist (geom);
COMMENT ON TABLE :PGSCHEMA.unidades_operacionais IS 'INFO: Area em que estao instalados equipamentos do sistema de agua (Vulgo: base operacional)';
COMMIT;

