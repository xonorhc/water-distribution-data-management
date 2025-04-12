CREATE TABLE IF NOT EXISTS :PGSCHEMA.bombas (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    id_estacao_elevatoria integer REFERENCES :PGSCHEMA.estacoes_elevatorias (id) ON UPDATE CASCADE ON DELETE SET NULL, -- TODO: Create trigger functio to update.
    tipo smallint REFERENCES :PGSCHEMA.tipo_bomba (id) NOT NULL, -- TODO: Split these table in two tables, one for geometries and another for specifies.
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 50 AND 1000) NOT NULL, -- NOTE: diametro nominal (dn) em milimetros (mm)
    diametro_saida smallint CHECK (diametro_saida BETWEEN 50 AND 1000) NOT NULL, -- NOTE: diametro nominal (dn) em milimetros (mm)
    vazao numeric(6, 2) CHECK (vazao BETWEEN 0 AND 5000), -- NOTE: metros cubicos por hora (m³/h)
    potencia numeric(6, 2) CHECK (potencia BETWEEN 0 AND 1000), -- NOTE: cavalos (cv)
    pressao numeric(4, 1) CHECK (pressao BETWEEN 0 AND 100), -- NOTE: metros de coluna d'agua (mca)
    situacao smallint REFERENCES :PGSCHEMA.tipo_situacao (id) NOT NULL,
    localizacao varchar(255),
    observacoes varchar(255)
);

CREATE INDEX ON :PGSCHEMA.bombas USING gist (geom);

