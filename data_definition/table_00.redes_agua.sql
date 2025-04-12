CREATE TABLE IF NOT EXISTS :PGSCHEMA.redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, :SRID) NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_rede_agua (id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT NULL,
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL, -- TODO: Auto-update when before/after estacoes_tratamento
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10) NOT NULL,
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL, -- TODO: Auto-update from from connected points
    localizacao varchar(255),
    observacoes varchar(255)
);

COMMENT ON COLUMN :PGSCHEMA.redes_agua.diametro IS 'NOTE: Diametro nominal (dn) em milimetros (mm).';

COMMENT ON COLUMN :PGSCHEMA.redes_agua.profundidade IS 'NOTE: Metros (m).';

CREATE INDEX ON :PGSCHEMA.redes_agua USING gist (geom);

