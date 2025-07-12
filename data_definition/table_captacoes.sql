BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.captacoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_captacao (id) NOT NULL,
    capacidade numeric(6, 2) CHECK (capacidade BETWEEN 0 AND 1000),
    tipo_manancial smallint REFERENCES :PGSCHEMA.tipo_manancial (id) NOT NULL, -- WARN: Drop...
    nome_manancial varchar, -- WARN: Drop...
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.captacoes USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.captacoes.capacidade IS 'INFO: metros cubicos hora (m³/h).';
COMMIT;

-- TODO: Create trigger function for update -> id_setor_abastecimento int REFERENCES :PGSCHEMA.setores_abastecimento (id) ON UPDATE CASCADE ON DELETE SET NULL,
