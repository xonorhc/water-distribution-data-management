CREATE TABLE sistema_agua.estacoes_elevatorias (
    id serial PRIMARY KEY,
    geom GEOMETRY(polygon, 4674) NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    agua smallint REFERENCES sistema_agua.tipo_agua (id) NOT NULL,
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.estacoes_elevatorias USING gist (geom);

