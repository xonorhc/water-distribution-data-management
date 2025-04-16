CREATE TABLE IF NOT EXISTS :PGSCHEMA.conexoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    tipo smallint REFERENCES :PGSCHEMA.tipo_conexao (id) NOT NULL,
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 15 AND 1500) NOT NULL, -- NOTE: diametro nominal (dn) em milimetros (mm).
    diametro_saida smallint CHECK (diametro_saida BETWEEN 15 AND 1500) NOT NULL, -- NOTE: diametro nominal (dn) em milimetros (mm).
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10), -- NOTE: metros (m)
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric -- NOTE: Rotacao da simbologia para uso no QGIS.
);

CREATE INDEX ON :PGSCHEMA.conexoes USING gist (geom);

