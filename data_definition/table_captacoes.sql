CREATE TABLE IF NOT EXISTS sistema_agua.captacoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    id_setor_abastecimento int REFERENCES sistema_agua.setores_abastecimento (id), -- HACK: Create trigger function for update
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_captacao (id) NOT NULL,
    capacidade numeric(6, 2) CHECK (capacidade BETWEEN 0 AND 1000),
    tipo_manancial smallint REFERENCES sistema_agua.tipo_manancial (id) NOT NULL,
    nome_manancial varchar,
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.captacoes USING gist (geom);

ALTER TABLE sistema_agua.captacoes
    ADD COLUMN data_criacao timestamp
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON sistema_agua.captacoes
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.inserido_por ();

ALTER TABLE sistema_agua.captacoes
    ADD COLUMN data_atualizacao timestamp
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON sistema_agua.captacoes
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.atualizado_por ();

