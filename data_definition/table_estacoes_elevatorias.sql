CREATE TABLE sistema_agua.estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    agua smallint REFERENCES sistema_agua.tipo_agua (id) NOT NULL,
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.estacoes_elevatorias USING gist (geom);

ALTER TABLE sistema_agua.estacoes_elevatorias
    ADD COLUMN data_criacao timestamp
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON sistema_agua.estacoes_elevatorias
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.inserido_por ();

ALTER TABLE sistema_agua.estacoes_elevatorias
    ADD COLUMN data_atualizacao timestamp
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON sistema_agua.estacoes_elevatorias
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.atualizado_por ();

