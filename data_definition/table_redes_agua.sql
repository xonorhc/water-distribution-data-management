BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, :SRID) NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_rede_agua (id) NOT NULL,
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL,
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10) NOT NULL,
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
COMMENT ON COLUMN :PGSCHEMA.redes_agua.diametro IS 'NOTE: Diametro nominal (dn) em milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.redes_agua.profundidade IS 'NOTE: Metros (m).';
CREATE INDEX ON :PGSCHEMA.redes_agua USING gist (geom);
COMMIT;

-- TODO: Update "agua" when before/after "estacoes_tratamento".
-- TODO: Update "situacao" when connected with "captacoes"."situacao".
