CREATE TABLE IF NOT EXISTS :PGSCHEMA.reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_reservatorio (id) NOT NULL,
    volume int CHECK (volume BETWEEN 0 AND 5000),
    diametro smallint CHECK (diametro BETWEEN 0 AND 2000),
    altura numeric(3, 2) CHECK (altura BETWEEN 0 AND 10),
    nivel_min numeric(3, 2) CHECK (nivel_min BETWEEN 0 AND 10),
    nivel_max numeric(3, 2) CHECK (nivel_max BETWEEN 0 AND 10),
    altura_base numeric(3, 2) CHECK (altura_base BETWEEN 0 AND 10),
    forma smallint REFERENCES :PGSCHEMA.tipo_forma (id),
    material smallint REFERENCES :PGSCHEMA.tipo_material (id),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.reservatorios USING gist (geom);

