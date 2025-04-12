CREATE TABLE IF NOT EXISTS :PGSCHEMA.estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    id_setor_abastecimento int REFERENCES :PGSCHEMA.setores_abastecimento (id), -- HACK: Create trigger function for update
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: references tipo_tratamento_nivel(id)
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.estacoes_tratamento USING gist (geom);

