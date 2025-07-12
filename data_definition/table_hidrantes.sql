BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_hidrante (id) NOT NULL,
    fabricante varchar(50),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.hidrantes USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.hidrantes.vazao IS 'INFO: metros cubicos por hora (m³/h).';
COMMIT;

