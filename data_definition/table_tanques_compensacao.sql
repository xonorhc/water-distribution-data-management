BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_tanque (id) NOT NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.tanques_compensacao USING gist (geom);
COMMIT;

