CREATE TABLE sistema_agua.reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, 4674) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES sistema_agua.tipo_reservatorio (id) NOT NULL,
    volume int CHECK (volume BETWEEN 0 AND 5000),
    diametro smallint CHECK (diametro BETWEEN 0 AND 2000),
    altura numeric(3, 2) CHECK (altura BETWEEN 0 AND 10),
    nivel_min numeric(3, 2) CHECK (nivel_min BETWEEN 0 AND 10),
    nivel_max numeric(3, 2) CHECK (nivel_max BETWEEN 0 AND 10),
    altura_base numeric(3, 2) CHECK (altura_base BETWEEN 0 AND 10),
    forma smallint REFERENCES sistema_agua.tipo_forma (id),
    material smallint REFERENCES sistema_agua.tipo_material (id),
    situacao smallint REFERENCES sistema_agua.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON sistema_agua.reservatorios USING gist (geom);

