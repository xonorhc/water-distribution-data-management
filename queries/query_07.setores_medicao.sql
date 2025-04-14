SET search_path TO sistema_agua, public;

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

