SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_hidrantes AS
SELECT
    h.id,
    h.geom,
    th.tipo,
    h.fabricante,
    h.vazao,
    ts.tipo AS situacao,
    h.localizacao,
    h.observacoes
FROM
    hidrantes h
    LEFT JOIN tipo_hidrante th ON h.tipo = th.id
    LEFT JOIN tipo_situacao ts ON ts.id = h.situacao
WHERE
    h.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_hidrantes USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_hidrantes (id);

GRANT SELECT ON :MVSCHEMA.sa_hidrantes TO PUBLIC;

