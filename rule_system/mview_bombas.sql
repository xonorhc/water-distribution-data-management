SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_bombas AS
SELECT
    b.id,
    b.geom,
    ee.id AS id_estacao_elevatoria,
    ee.nome AS nome_estacao_elevatoria,
    tb.tipo,
    b.diametro_entrada,
    b.diametro_saida,
    b.vazao,
    b.potencia,
    b.pressao,
    ts.tipo AS situacao
FROM
    bombas AS b
    LEFT JOIN tipo_bomba tb ON b.tipo = tb.id
    LEFT JOIN tipo_situacao ts ON b.situacao = ts.id
    LEFT JOIN estacoes_elevatorias ee ON st_contains (ee.geom, b.geom)
WHERE
    st_intersects (b.geom, (
            SELECT
                st_collect (geom) AS geom FROM redes_agua
            WHERE
                geom IS NOT NULL
                AND situacao = 1))
    AND b.geom IS NOT NULL;

CREATE INDEX ON :MVSCHEMA.sa_bombas USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_bombas (id);

GRANT SELECT ON :MVSCHEMA.sa_bombas TO PUBLIC;

