CREATE TABLE IF NOT EXISTS sistema_agua.redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4674) NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_rede_agua (id) NOT NULL,
    agua smallint REFERENCES tsistema_agua.ipo_agua (id) NOT NULL,
    material smallint REFERENCES sistema_agua.tipo_material (id) NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1000) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.redes_agua USING gist (geom);

ALTER TABLE sistema_agua.redes_agua
    ADD COLUMN data_criacao timestamp
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON sistema_agua.redes_agua
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.inserido_por ();

ALTER TABLE sistema_agua.redes_agua
    ADD COLUMN data_atualizacao timestamp
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON sistema_agua.redes_agua
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.atualizado_por ();

