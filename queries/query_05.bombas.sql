SET search_path TO sistema_agua, public;

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

