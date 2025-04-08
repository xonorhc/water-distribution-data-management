CREATE TABLE :PGSCHEMA.estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: references tipo_tratamento_nivel
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.estacoes_tratamento USING gist (geom);

