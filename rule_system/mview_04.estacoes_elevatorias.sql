SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_estacoes_elevatorias AS 
SELECT DISTINCT ON (ee.id)
    ee.id,
    ee.geom,
    array_agg(b.id) AS id_bomba,
    ee.nome,
    ta.tipo AS agua,
    ts.tipo AS situacao,
    ee.localizacao,
    ee.observacoes
FROM
    estacoes_elevatorias ee
    LEFT JOIN tipo_agua ta ON ee.agua = ta.id
    LEFT JOIN tipo_situacao ts ON ee.situacao = ts.id
    LEFT JOIN (
        SELECT
            id,
            geom
        FROM
            bombas
        WHERE
            situacao = 1) b ON st_within (b.geom, ee.geom)
WHERE
    ee.geom IS NOT NULL
GROUP BY
    ee.id,
    ta.tipo,
    ts.tipo;

CREATE INDEX ON :MVSCHEMA.sa_estacoes_elevatorias USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_estacoes_elevatorias (id);

GRANT SELECT ON :MVSCHEMA.sa_estacoes_elevatorias TO PUBLIC;

