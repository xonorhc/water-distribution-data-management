CREATE TABLE sistema_agua.medidores_pressao (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_medidor_pressao (id),
    acesso smallint REFERENCES sistema_agua.tipo_acesso (id),
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.medidores_pressao USING gist (geom);

