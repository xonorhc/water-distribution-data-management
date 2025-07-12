BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, :SRID) NOT NULL,
    data_instalacao date,
    nome varchar(50) UNIQUE NOT NULL,
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.estacoes_elevatorias USING gist (geom);
COMMIT;

-- TODO: Update "agua" when before/after "estacoes_tratamento".
