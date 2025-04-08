CREATE TABLE IF NOT EXISTS :PGSCHEMA.redes_agua (
    id serial PRIMARY KEY,
    geom geometry(linestring, 4674) NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_rede_agua (id) NOT NULL,
    agua smallint REFERENCES :PGSCHEMA.tipo_agua (id) NOT NULL,
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) NOT NULL,
    diametro integer CHECK (diametro BETWEEN 15 AND 1000) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    extensao_digital numeric GENERATED ALWAYS AS ((ST_LENGTH (geom))::numeric(8, 2)) STORED,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.redes_agua USING gist (geom);

