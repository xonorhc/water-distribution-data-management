CREATE TABLE IF NOT EXISTS :PGSCHEMA.tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_tanque (id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.tanques_compensacao USING gist (geom);

