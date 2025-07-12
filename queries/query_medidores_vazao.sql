SET search_path TO sistema_agua, public;

SELECT
    mv.id,
    mv.geom,
    -- mv.id_setor_medicao,
    sm.id AS id_setor_medicao,
    tmv.tipo,
    ta.tipo AS agua,
    tf.tipo AS funcao,
    mv.diametro,
    mv.profundidade,
    tac.tipo AS acesso,
    ts.tipo AS situacao,
    mv.localizacao,
    mv.observacoes,
    mv.rotacao_simbolo
FROM
    medidores_vazao mv
    LEFT JOIN tipo_situacao ts ON mv.situacao = ts.id
    LEFT JOIN tipo_agua ta ON mv.agua = ta.id
    LEFT JOIN tipo_medidor_vazao tmv ON mv.tipo = tmv.id
    LEFT JOIN tipo_funcao tf ON mv.funcao = tf.id
    LEFT JOIN tipo_acesso tac ON mv.acesso = tac.id
    LEFT JOIN setores_medicao sm ON st_within (mv.geom, sm.geom)
WHERE
    mv.geom IS NOT NULL;

