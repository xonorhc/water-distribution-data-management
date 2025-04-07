CREATE TABLE :PGSCHEMA.hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_hidrante (id) NOT NULL,
    fabricante varchar(255),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.hidrantes USING gist (geom);

ALTER TABLE :PGSCHEMA.hidrantes
    ADD COLUMN data_criacao timestamp,
    ADD COLUMN usuario_criacao varchar(20);

CREATE OR REPLACE TRIGGER trig_inserido_por
    BEFORE INSERT ON :PGSCHEMA.hidrantes
    FOR EACH ROW
    EXECUTE FUNCTION :PGSCHEMA.inserido_por ();

ALTER TABLE :PGSCHEMA.hidrantes
    ADD COLUMN data_atualizacao timestamp,
    ADD COLUMN usuario_atualizacao varchar(20);

CREATE OR REPLACE TRIGGER trig_atualizado_por
    BEFORE UPDATE ON :PGSCHEMA.hidrantes
    FOR EACH ROW
    EXECUTE FUNCTION :PGSCHEMA.atualizado_por ();

