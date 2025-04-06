CREATE TABLE sistema_agua.medidores_vazao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    id_setor_medicao int REFERENCES sistema_agua.setores_medicao (id),
    agua smallint REFERENCES sistema_agua.tipo_agua (id) NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_medidor_vazao (id) NOT NULL,
    funcao smallint REFERENCES sistema_agua.tipo_funcao (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 0 AND 1000),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 9),
    acesso smallint REFERENCES sistema_agua.tipo_acesso (id),
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON sistema_agua.medidores_vazao USING gist (geom);

