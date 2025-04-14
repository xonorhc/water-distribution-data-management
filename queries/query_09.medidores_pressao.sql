SET search_path TO sistema_agua, public;

SELECT
    mp.id,
    mp.geom,
    tmp.tipo,
    ta.tipo AS acesso,
    ts.tipo AS situacao,
    mp.localizacao,
    mp.observacoes
FROM
    medidores_pressao mp
    LEFT JOIN tipo_medidor_pressao tmp ON mp.tipo = tmp.id
    LEFT JOIN tipo_acesso ta ON mp.acesso = ta.id
    LEFT JOIN tipo_situacao ts ON mp.situacao = ts.id
WHERE
    mp.geom IS NOT NULL;

