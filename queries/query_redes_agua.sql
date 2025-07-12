SET search_path TO sistema_agua, public;

SELECT
    ra.id,
    ra.geom,
    tra.tipo,
    ta.tipo AS agua,
    tm.tipo AS material,
    ra.diametro,
    ra.profundidade,
    ra.extensao_digital,
    ts.tipo AS situacao,
    ra.localizacao,
    ra.observacoes
FROM
    redes_agua ra
    LEFT JOIN tipo_rede_agua tra ON ra.tipo = tra.id
    LEFT JOIN tipo_agua ta ON ra.agua = ta.id
    LEFT JOIN tipo_material tm ON ra.material = tm.id
    LEFT JOIN tipo_situacao ts ON ra.situacao = ts.id
WHERE
    ra.situacao = 1
    AND ra.geom IS NOT NULL;

