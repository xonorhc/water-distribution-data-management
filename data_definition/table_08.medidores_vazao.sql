CREATE TABLE IF NOT EXISTS :PGSCHEMA.medidores_vazao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    id_setor_medicao integer REFERENCES :PGSCHEMA.setores_medicao (id) ON UPDATE CASCADE ON DELETE SET NULL, -- TODO: Create trigger function to update
    tipo smallint REFERENCES :PGSCHEMA.tipo_medidor_vazao (id) NOT NULL, -- TODO: Criar uma tabela para caracteristicas do equipamento.
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL, -- TODO: Auto-update when before/after estacoes_tratamento.
    funcao smallint REFERENCES :PGSCHEMA.tipo_funcao (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 15 AND 1500) NOT NULL, -- NOTE: diametro nominal (dn) em milimetros (mm)
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10), -- NOTE: metros (m)
    acesso smallint REFERENCES :PGSCHEMA.tipo_acesso (id),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON :PGSCHEMA.medidores_vazao USING gist (geom);

