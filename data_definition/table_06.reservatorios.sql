CREATE TABLE IF NOT EXISTS :PGSCHEMA.reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_reservatorio (id) NOT NULL,
    volume integer CHECK (volume BETWEEN 0 AND 5000),
    diametro numeric(4, 2) CHECK (diametro BETWEEN 0 AND 100),
    altura numeric(4, 2) CHECK (altura BETWEEN 0 AND 50),
    nivel_min numeric(4, 2) CHECK (nivel_min BETWEEN 0 AND 50),
    nivel_max numeric(4, 2) CHECK (nivel_max BETWEEN 0 AND 50),
    altura_base numeric(4, 2) CHECK (altura_base BETWEEN 0 AND 50),
    forma smallint REFERENCES :PGSCHEMA.tipo_forma (id),
    material smallint REFERENCES :PGSCHEMA.tipo_material (id),
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.reservatorios USING gist (geom);

