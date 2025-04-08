CREATE TABLE :PGSCHEMA.tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_tanque (id) NOT NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.tanques_compensacao USING gist (geom);

