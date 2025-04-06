CREATE TABLE sistema_agua.estacoes_tratamento (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    tratamento smallint[] NOT NULL, -- ISSUE: references nivel_tratamento_agua(id)
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.estacoes_tratamento USING gist (geom);

