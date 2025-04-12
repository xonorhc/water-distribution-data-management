CREATE TABLE IF NOT EXISTS :PGSCHEMA.valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_valvula (id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT NULL,
    funcao smallint REFERENCES :PGSCHEMA.tipo_valvula_funcao (id) ON UPDATE CASCADE ON DELETE SET NULL,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL, -- NOTE: milimetros (mm)
    acionamento smallint REFERENCES :PGSCHEMA.tipo_valvula_acionamento (id) ON UPDATE CASCADE ON DELETE SET NULL,
    acesso smallint REFERENCES :PGSCHEMA.tipo_acesso (id) ON UPDATE CASCADE ON DELETE SET NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10), -- NOTE: metros (m)
    posicao smallint REFERENCES :PGSCHEMA.tipo_valvula_posicao (id) ON UPDATE CASCADE ON DELETE SET NULL,
    qtd_voltas_fechar numeric(3, 1),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.valvulas USING gist (geom);

