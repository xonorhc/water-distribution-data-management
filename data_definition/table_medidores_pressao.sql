BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.medidores_pressao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_medidor_pressao (id),
    acesso smallint REFERENCES :PGSCHEMA.tipo_acesso (id),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    data_situacao date, -- TODO: Create a trigger to update this when update "situacao"
    localizacao varchar(255),
    observacoes varchar(255)
);
CREATE INDEX ON :PGSCHEMA.medidores_pressao USING gist (geom);
COMMIT;

