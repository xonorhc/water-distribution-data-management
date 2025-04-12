CREATE TABLE IF NOT EXISTS :PGSCHEMA.reservatorios (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    nome varchar(50) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_reservatorio (id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT NULL,
    volume integer CHECK (volume BETWEEN 0 AND 10000) NOT NULL, -- NOTE: metros cubicos (m³)
    diametro numeric(4, 2) CHECK (diametro BETWEEN 0 AND 100), -- NOTE: metros (m)
    altura numeric(4, 2) CHECK (altura BETWEEN 0 AND 50), -- NOTE:  metros (m)
    nivel_min numeric(4, 2) CHECK (nivel_min BETWEEN 0 AND 50), -- NOTE: metros (m)
    nivel_max numeric(4, 2) CHECK (nivel_max BETWEEN 0 AND 50), -- NOTE: metros (m)
    altura_base numeric(4, 2) CHECK (altura_base BETWEEN 0 AND 50), -- NOTE: metros (m)
    forma smallint REFERENCES :PGSCHEMA.tipo_forma (id) ON UPDATE RESTRICT ON DELETE RESTRICT NOT NULL,
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) ON UPDATE CASCADE ON DELETE SET NULL,
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL, -- TODO: Atualizar conforme rede_agua (situacao)
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.reservatorios USING gist (geom);

