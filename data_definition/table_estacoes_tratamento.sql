BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: References tipo_tratamento_nivel (id).
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.estacoes_tratamento USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.estacoes_tratamento.vazao IS 'INFO: metros cubicos por hora (m³/h).';
COMMIT;

-- TODO: Create trigger function for update -> id_setor_abastecimento int REFERENCES :PGSCHEMA.setores_abastecimento (id) ON UPDATE CASCADE ON DELETE SET NULL,
