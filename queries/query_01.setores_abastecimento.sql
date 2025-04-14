SET search_path TO sistema_agua, public;

SELECT DISTINCT ON (sa.id)
    sa.id,
    sa.geom,
    sa.observacoes,
    array_agg(DISTINCT concat(c.id || ' - ', c.nome)) AS captacao,
    array_agg(DISTINCT concat(et.id || ' - ', et.nome)) AS estacao_tratamento,
    array_agg(DISTINCT concat(r.id || ' - ', r.nome)) AS reservatorio,
    -- string_agg(DISTINCT concat(r.id || ' - ', r.nome), E'\n') AS reservatorio,
    sum(ra.extensao_digital) AS extensao_rede
FROM
    setores_abastecimento sa
    LEFT JOIN (
        SELECT id, geom, nome
        FROM estacoes_tratamento
        WHERE situacao = 1) et ON st_contains (sa.geom, et.geom)
    LEFT JOIN (
        SELECT id, geom, nome
        FROM captacoes
        WHERE situacao = 1) c ON st_contains (sa.geom, c.geom)
    LEFT JOIN (
        SELECT id, geom, nome
        FROM reservatorios
        WHERE situacao = 1) r ON st_contains (sa.geom, r.geom)
    LEFT JOIN (
        SELECT id, geom, extensao_digital
        FROM redes_agua
        WHERE situacao = 1) ra ON st_contains (sa.geom, ra.geom)
WHERE
    sa.geom IS NOT NULL
GROUP BY
    sa.id;

