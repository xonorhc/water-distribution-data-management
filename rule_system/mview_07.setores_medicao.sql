SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_setores_medicao AS 
SELECT DISTINCT ON (sm.id)
    sm.id,
    sm.geom,
    sm.observacoes,
    array_agg(DISTINCT mv.id) AS id_medidor_vazao
FROM
    setores_medicao sm
    LEFT JOIN (
        SELECT
            id,
            geom
        FROM
            medidores_vazao
        WHERE
            situacao = 1) mv ON st_contains (sm.geom, mv.geom)
WHERE
    sm.geom IS NOT NULL
GROUP BY
    sm.id;

CREATE INDEX ON :MVSCHEMA.sa_setores_medicao USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_setores_medicao (id);

GRANT SELECT ON :MVSCHEMA.sa_setores_medicao TO PUBLIC;

