CREATE TABLE sistema_agua.hidrantes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_hidrante (id) NOT NULL,
    fabricante varchar(255),
    vazao numeric(4, 1) CHECK (vazao BETWEEN 0 AND 100),
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.hidrantes USING gist (geom);

