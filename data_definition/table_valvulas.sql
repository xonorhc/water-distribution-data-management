CREATE TABLE sistema_agua.valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_valvula (id) NOT NULL,
    funcao smallint REFERENCES sistema_agua.tipo_funcao_valvula (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 0 AND 1000) NOT NULL,
    acionamento smallint REFERENCES sistema_agua.tipo_acionamento_valvula (id),
    acesso smallint REFERENCES sistema_agua.tipo_acesso (id),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    posicao smallint REFERENCES sistema_agua.tipo_posicao_valvula (id) NOT NULL,
    qtd_voltas_fechar numeric(3, 1),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON sistema_agua.valvulas USING gist (geom);

