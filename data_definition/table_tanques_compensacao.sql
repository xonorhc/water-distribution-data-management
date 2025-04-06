CREATE TABLE sistema_agua.tanques_compensacao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_tanque (id) NOT NULL,
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.tanques_compensacao USING gist (geom);

