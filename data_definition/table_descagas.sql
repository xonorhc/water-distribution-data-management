CREATE TABLE sistema_agua.descargas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_lancamento (id) NOT NULL,
    descarga smallint REFERENCES sistema_agua.tipo_descarga (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.descargas USING gist (geom);

