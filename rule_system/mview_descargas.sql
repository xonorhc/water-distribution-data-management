SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_descargas AS
SELECT
    d.id,
    d.geom,
    tl.tipo,
    td.tipo AS descarga,
    ts.tipo AS situacao,
    d.localizacao,
    d.observacoes
FROM
    descargas d
    LEFT JOIN tipo_lancamento tl ON d.tipo = tl.id
    LEFT JOIN tipo_descarga td ON d.descarga = td.id
    LEFT JOIN tipo_situacao ts ON ts.id = d.situacao
WHERE
    d.geom IS NOT NULL
    AND st_intersects (d.geom, (
            SELECT
                st_collect (geom) AS geom FROM redes_agua
            WHERE
                geom IS NOT NULL
                AND situacao = 1));

CREATE INDEX ON :MVSCHEMA.sa_descargas USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_descargas (id);

GRANT SELECT ON :MVSCHEMA.sa_descargas TO PUBLIC;

