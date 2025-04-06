CREATE TABLE sistema_agua.valvulas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_valvula (id) NOT NULL,
    funcao smallint REFERENCES sistema_agua.tipo_valvula_funcao (id) NOT NULL,
    diametro smallint CHECK (diametro BETWEEN 0 AND 1000) NOT NULL,
    acionamento smallint REFERENCES sistema_agua.tipo_valvula_acionamento (id),
    acesso smallint REFERENCES sistema_agua.tipo_acesso (id),
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    posicao smallint REFERENCES sistema_agua.tipo_valvula_posicao (id) NOT NULL,
    qtd_voltas_fechar numeric(3, 1),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);

CREATE INDEX ON sistema_agua.valvulas USING gist (geom);

ALTER TABLE sistema_agua.valvulas
    ADD COLUMN data_criacao timestamp
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON sistema_agua.valvulas
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.inserido_por ();

ALTER TABLE sistema_agua.valvulas
    ADD COLUMN data_atualizacao timestamp
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON sistema_agua.valvulas
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.atualizado_por ();

