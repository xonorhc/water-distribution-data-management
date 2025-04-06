INSERT INTO tipo_rede_agua
    VALUES (1, 'Adutora'),
    (2, 'Distribuicao'),
    (3, 'Recalque');

INSERT INTO tipo_agua
    VALUES (1, 'Bruta'),
    (2, 'Tratada');

INSERT INTO tipo_material
    VALUES (1, 'CA'),
    (2, 'FoFo'),
    (3, 'FGal'),
    (5, 'PRFV'),
    (6, 'PVC'),
    (7, 'PVC DeFoFo'),
    (8, 'PEAD');

INSERT INTO tipo_situacao
    VALUES (1, 'Ativa'),
    (2, 'Inativa'),
    (3, 'Em construcao');

INSERT INTO tipo_captacao
    VALUES (1, 'Superficial'),
    (2, 'Subterraneo');

INSERT INTO tipo_manancial
    VALUES (1, 'Rio'),
    (2, 'Lago'),
    (3, 'Acude'),
    (4, 'Represa'),
    (5, 'Aquifero'),
    (6, 'Nascente');

INSERT INTO tipo_conexao
    VALUES (1, 'Adaptador'),
    (2, 'CAP'),
    (3, 'Colar de tomada'),
    (4, 'Cruzeta'),
    (5, 'Curva'),
    (6, 'Luva de uniao'),
    (7, 'Reducao'),
    (8, 'TE'),
    (9, 'Ventosa');

INSERT INTO tipo_lancamento
    VALUES (1, 'Descarga'),
    (2, 'Extravazamento'),
    (3, 'Padrao de saida');

INSERT INTO tipo_descarga
    VALUES (1, 'Boca de Lobo'),
    (2, 'Corpo Hidrico'),
    (3, 'Galeria Pluvial'),
    (4, 'Poco Visita'),
    (5, 'Sarjeta');

INSERT INTO tipo_bomba
    VALUES (1, 'Centrifuga'),
    (2, 'Submersa'),
    (3, 'Submersivel'),
    (4, 'Auto-aspirante'),
    (5, 'Periferica'),
    (6, 'Injetora');

INSERT INTO tipo_nivel_tratamento_agua
    VALUES (1, 'Coagulacao'),
    (2, 'Floculacao'),
    (3, 'Decantacao'),
    (4, 'Flotacao'),
    (5, 'Filtracao'),
    (6, 'Desinfeccao'),
    (7, 'Fluoretacao'),
    (8, 'Correcao de PH'),
    (9, 'Outros (especificar na observacao)');

INSERT INTO tipo_hidrante
    VALUES (1, 'Coluna'),
    (2, 'Subterraneo');

INSERT INTO tipo_medidor_pressao
    VALUES (1, 'Bourbon'),
    (2, 'Diafragma'),
    (3, 'Tubo U'),
    (4, 'Wireless');

INSERT INTO tipo_acesso
    VALUES (1, 'Caixa'),
    (2, 'Enterrado'),
    (3, 'Acesso livre'),
    (4, 'PV'),
    (5, 'Tampa T9');

INSERT INTO tipo_medidor_vazao
    VALUES (1, 'Eletromagnetico'),
    (2, 'Massica coriolis'),
    (3, 'Rotametro'),
    (4, 'Ultrassonico'),
    (5, 'Vortex'),
    (6, 'Calha Parshall'),
    (7, 'Volumetrico'),
    (8, 'Velocimetrico');

INSERT INTO tipo_funcao
    VALUES (1, 'Nenhum'),
    (2, 'Entrada'),
    (3, 'Saida');

INSERT INTO tipo_reservatorio
    VALUES (1, 'Apoiado'),
    (2, 'Elevado'),
    (3, 'Enterrado'),
    (4, 'Semi enterrado');

INSERT INTO tipo_forma
    VALUES (1, 'Circular'),
    (2, 'Quadrado'),
    (3, 'Retangular');

INSERT INTO tipo_tanque
    VALUES (1, 'Chamine de equilibrio'),
    (2, 'Reservatorio hidropneumatico'),
    (3, 'Tanque de alimentacao unidirecional');

INSERT INTO tipo_valvula
    VALUES (1, 'Borboleta'),
    (2, 'Esferica'),
    (3, 'Gaveta'),
    (4, 'Redutora de pressao'),
    (5, 'Retencao');

INSERT INTO tipo_funcao_valvula
    VALUES (1, 'Bloqueio'),
    (2, 'Controle'),
    (3, 'Descarga'),
    (4, 'Redutora de pressao'),
    (5, 'Retencao');

INSERT INTO tipo_acionamento_valvula
    VALUES (1, 'Eletrico'),
    (2, 'Manual Chave'),
    (3, 'Manual Volante'),
    (4, 'Mecanico');

INSERT INTO tipo_posicao_valvula
    VALUES (1, 'Aberta'),
    (2, 'Fechada'),
    (3, 'Nao aplicavel'),
    (4, 'Parcialmente aberta');

