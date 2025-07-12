BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalcao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_valvula (id) NOT NULL,
    funcao smallint REFERENCES :PGSCHEMA.tipo_valvula_funcao (id),
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL,
    acionamento smallint REFERENCES :PGSCHEMA.tipo_valvula_acionamento (id),
    acesso smallint REFERENCES :PGSCHEMA.tipo_acesso (id),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    posicao smallint REFERENCES :PGSCHEMA.tipo_valvula_posicao (id) NOT NULL,
    qtd_voltas_fechar numeric(3, 1),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.valvulas USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.valvulas.diametro IS 'INFO: Milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.valvulas.profundidade IS 'INFO: Metros (m).';
COMMIT;

