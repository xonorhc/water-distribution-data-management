BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.bombas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_bomba (id) NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 50 AND 1000) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 50 AND 1000) NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    potencia numeric(6, 2) CHECK (potencia BETWEEN 0 AND 1000),
    pressao numeric(4, 1) CHECK (pressao BETWEEN 0 AND 100),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.bombas USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.bombas.data_instalacao IS 'INFO: data em que o ativo foi instalado no sistema.';
COMMENT ON COLUMN :PGSCHEMA.bombas.diametro_entrada IS 'INFO: diametro nominal (dn) em milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.bombas.diametro_saida IS 'INFO: diametro nominal (dn) em milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.bombas.vazao IS 'INFO: metros cubicos por hora (m³/h).';
COMMENT ON COLUMN :PGSCHEMA.bombas.potencia IS 'INFO: cavalos (cv).';
COMMENT ON COLUMN :PGSCHEMA.bombas.pressao IS 'INFO: metros de coluna dagua (mca).';
COMMIT;

-- TODO: Create trigger function to -> id_estacao_elevatoria integer REFERENCES :PGSCHEMA.estacoes_elevatorias (id) ON UPDATE CASCADE ON DELETE SET NULL,
-- TODO: Split this table in two another tables, one for geometries and another for specifies.
