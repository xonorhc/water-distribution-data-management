SET search_path TO :PGSCHEMA, public;

CREATE MATERIALIZED VIEW IF NOT EXISTS :MVSCHEMA.sa_setores_abastecimento AS 
SELECT DISTINCT ON (sa.id)
    sa.id,
    sa.geom,
    sa.observacoes,
    array_agg(DISTINCT concat(c.id || ' - ', c.nome)) AS captacao,
    array_agg(DISTINCT concat(et.id || ' - ', et.nome)) AS estacao_tratamento,
    array_agg(DISTINCT concat(r.id || ' - ', r.nome)) AS reservatorio,
    array_agg(DISTINCT concat(ee.id || ' - ', ee.nome)) AS estacoes_elevatorias,
    sum(ra.extensao_digital) AS extensao_rede
FROM
    setores_abastecimento sa
    LEFT JOIN ( SELECT id, geom, extensao_digital
        FROM redes_agua
        WHERE situacao = 1) ra ON st_contains (sa.geom, ra.geom)
    LEFT JOIN ( SELECT id, geom, nome
        FROM reservatorios
        WHERE situacao = 1) r ON st_contains (sa.geom, r.geom)
    LEFT JOIN ( SELECT id, geom, nome
        FROM estacoes_elevatorias
        WHERE situacao = 1) ee ON st_contains (sa.geom, ee.geom)
    LEFT JOIN ( SELECT id, geom, nome
        FROM estacoes_tratamento
        WHERE situacao = 1) et ON st_contains (sa.geom, et.geom)
    LEFT JOIN ( SELECT id, geom, nome
        FROM captacoes
        WHERE situacao = 1) c ON st_contains (sa.geom, c.geom)
WHERE
    sa.geom IS NOT NULL
GROUP BY
    sa.id;

CREATE INDEX ON :MVSCHEMA.sa_setores_abastecimento USING gist (geom);

CREATE UNIQUE INDEX ON :MVSCHEMA.sa_setores_abastecimento (id);

GRANT SELECT ON :MVSCHEMA.sa_setores_abastecimento TO PUBLIC;

