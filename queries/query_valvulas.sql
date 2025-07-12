SET search_path TO sistema_agua, public;

SELECT
    v.id,
    v.geom,
    tv.tipo,
    tvf.tipo AS funcao,
    v.diametro,
    tva.tipo AS acionamento,
    ta.tipo AS acesso,
    v.profundidade,
    tvp.tipo AS posicao,
    v.qtd_voltas_fechar,
    v.localizacao,
    v.observacoes
FROM
    valvulas v
    LEFT JOIN tipo_valvula tv ON tv.id = v.tipo
    LEFT JOIN tipo_valvula_funcao tvf ON tvf.id = v.funcao
    LEFT JOIN tipo_valvula_acionamento tva ON tva.id = v.acionamento
    LEFT JOIN tipo_acesso ta ON ta.id = v.acesso
    LEFT JOIN tipo_valvula_posicao tvp ON tvp.id = v.posicao
WHERE
    v.geom IS NOT NULL
    AND st_intersects (v.geom, (
            SELECT
                st_collect (geom) AS geom FROM redes_agua
            WHERE
                geom IS NOT NULL
                AND situacao = 1));

