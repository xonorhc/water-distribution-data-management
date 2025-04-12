CREATE TABLE IF NOT EXISTS :PGSCHEMA.captacoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    id_setor_abastecimento int REFERENCES :PGSCHEMA.setores_abastecimento (id), -- HACK: Create trigger function for update
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_captacao (id) NOT NULL,
    capacidade numeric(6, 2) CHECK (capacidade BETWEEN 0 AND 1000),
    tipo_manancial smallint REFERENCES :PGSCHEMA.tipo_manancial (id) NOT NULL,
    nome_manancial varchar,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.captacoes USING gist (geom);

