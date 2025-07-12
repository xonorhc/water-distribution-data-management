SET search_path TO sistema_agua, public;

SELECT
    tc.id,
    tc.geom,
    tt.tipo,
    ts.tipo AS situacao,
    tc.localizacao,
    tc.observacoes
FROM
    tanques_compensacao tc
    LEFT JOIN tipo_tanque tt ON tt.id = tc.tipo
    LEFT JOIN tipo_situacao ts ON ts.id = tc.situacao
WHERE
    tc.geom IS NOT NULL;

