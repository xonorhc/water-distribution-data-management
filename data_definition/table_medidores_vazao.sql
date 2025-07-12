BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.medidores_vazao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_medidor_vazao (id) NOT NULL,
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL,
    funcao smallint REFERENCES :PGSCHEMA.tipo_funcao (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    acesso smallint REFERENCES :PGSCHEMA.tipo_acesso (id),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);
CREATE INDEX ON :PGSCHEMA.medidores_vazao USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.medidores_vazao.diametro IS 'INFO: Diametro nominal (DN) em milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.medidores_vazao.profundidade IS 'INFO: metros (m).';
COMMENT ON COLUMN :PGSCHEMA.medidores_vazao.rotacao_simbolo IS 'INFO: Rotacao da simbologia para uso no QGIS.';
COMMIT;

-- TODO: Create trigger function to update -> id_setor_medicao integer REFERENCES :PGSCHEMA.setores_medicao (id) ON UPDATE CASCADE ON DELETE SET NULL,
-- TODO: Criar uma tabela para caracteristicas do equipamento.
-- TODO: Update "agua" when before/after "estacoes_tratamento".
