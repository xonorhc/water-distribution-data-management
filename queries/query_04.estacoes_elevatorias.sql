SET search_path TO sistema_agua, public;

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

