SET search_path TO sistema_agua, public;

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

