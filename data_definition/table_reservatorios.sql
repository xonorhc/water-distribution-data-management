BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_reservatorio (id) NOT NULL,
    volume integer CHECK (volume BETWEEN 0 AND 10000) NOT NULL,
    diametro numeric(4, 2) CHECK (diametro BETWEEN 0 AND 100),
    altura numeric(4, 2) CHECK (altura BETWEEN 0 AND 50),
    nivel_min numeric(4, 2) CHECK (nivel_min BETWEEN 0 AND 50),
    nivel_max numeric(4, 2) CHECK (nivel_max BETWEEN 0 AND 50),
    altura_base numeric(4, 2) CHECK (altura_base BETWEEN 0 AND 50),
    forma smallint REFERENCES :PGSCHEMA.tipo_forma (id) NOT NULL,
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) NOT NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.reservatorios USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.reservatorios.volume IS 'INFO: metros cubicos (m³).';
COMMENT ON COLUMN :PGSCHEMA.reservatorios.diametro IS 'INFO: metros (m).';
COMMENT ON COLUMN :PGSCHEMA.reservatorios.altura IS 'INFO: metros (m).';
COMMENT ON COLUMN :PGSCHEMA.reservatorios.nivel_min IS 'INFO: metros (m).';
COMMENT ON COLUMN :PGSCHEMA.reservatorios.nivel_max IS 'INFO: metros (m).';
COMMENT ON COLUMN :PGSCHEMA.reservatorios.altura_base IS 'INFO: metros (m).';
COMMIT;

-- TODO: Update "situtacao" from "redes_agua"."situacao".
