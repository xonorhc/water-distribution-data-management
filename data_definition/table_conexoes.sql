BEGIN;
CREATE TABLE IF NOT EXISTS :PGSCHEMA.conexoes (
    id serial PRIMARY KEY,
    geom GEOMETRY(point, :SRID) UNIQUE NOT NULL,
    data_instalacao date,
    tipo smallint REFERENCES :PGSCHEMA.tipo_conexao (id) NOT NULL,
    material smallint REFERENCES :PGSCHEMA.tipo_material (id) NOT NULL,
    diametro_entrada smallint CHECK (diametro_entrada BETWEEN 15 AND 1500) NOT NULL,
    diametro_saida smallint CHECK (diametro_saida BETWEEN 15 AND 1500) NOT NULL,
    profundidade numeric(3, 2) CHECK (profundidade BETWEEN 0 AND 10),
    localizacao varchar(255),
    observacoes varchar(255),
    rotacao_simbolo numeric
);
CREATE INDEX ON :PGSCHEMA.conexoes USING gist (geom);
COMMENT ON COLUMN :PGSCHEMA.conexoes.diametro_entrada IS 'INFO: diametro nominal (dn) em milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.conexoes.diametro_saida IS 'INFO: diametro nominal (dn) em milimetros (mm).';
COMMENT ON COLUMN :PGSCHEMA.conexoes.profundidade IS 'INFO: metros (m)';
COMMENT ON COLUMN :PGSCHEMA.conexoes.rotacao_simbolo IS 'INFO: Rotacao da simbologia para uso no QGIS.';
COMMIT;

