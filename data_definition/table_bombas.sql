CREATE TABLE sistema_agua.bombas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    id_estacao_elevatoria integer REFERENCES sistema_agua.estacoes_elevatorias (id), -- HACK: Create trigger functio to update
    tipo smallint REFERENCES sistema_agua.tipo_bomba (id),
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 0 AND 1000),
    diametro_saida smallint CHECK (diametro_saida BETWEEN 0 AND 1000),
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000),
    potencia numeric(6, 2) CHECK (potencia BETWEEN 0 AND 1000),
    pressao numeric(4, 1) CHECK (pressao BETWEEN 0 AND 200),
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.bombas USING gist (geom);

ALTER TABLE sistema_agua.bombas
    ADD COLUMN data_criacao timestamp
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON sistema_agua.bombas
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.inserido_por ();

ALTER TABLE sistema_agua.bombas
    ADD COLUMN data_atualizacao timestamp
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON sistema_agua.bombas
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.atualizado_por ();

