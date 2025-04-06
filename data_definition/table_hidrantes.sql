CREATE TABLE sistema_agua.hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_hidrante (id) NOT NULL,
    fabricante varchar(255),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.hidrantes USING gist (geom);

ALTER TABLE sistema_agua.hidrantes
    ADD COLUMN data_criacao timestamp
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON sistema_agua.hidrantes
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.inserido_por ();

ALTER TABLE sistema_agua.hidrantes
    ADD COLUMN data_atualizacao timestamp
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON sistema_agua.hidrantes
    FOR EACH ROW
    EXECUTE FUNCTION sistema_agua.atualizado_por ();

