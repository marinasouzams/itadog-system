-- ================================================================
-- ITADOG: Import completo — clientes, produtos, pedidos, parcelas
-- visit_date = data da aba (data do pedido)
-- nf_date    = campo DATA do cabeçalho (data da NF)
-- Execute no Supabase SQL Editor após schema.sql
-- ================================================================

BEGIN;

-- ----------------------------------------------------------------
-- 1. CLIENTES (49 únicos)
-- ----------------------------------------------------------------
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROJEP 25.06.2025',NULL,NULL,NULL,NULL,'Importado: AGROJEP 25.06.2025'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROJEP 25.06.2025');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'A CASA DO PET BAL. CAMBORIÚ',NULL,NULL,NULL,NULL,'Importado: A CASA DO PET B.C'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='A CASA DO PET BAL. CAMBORIÚ');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA AGRO RURAL (ARNALDO DA SILVA)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: AGRO RURAL(CAMBORIU)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA AGRO RURAL (ARNALDO DA SILVA)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA AGROJEPE',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: AGROJEPE'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA AGROJEPE');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA AMARAL (BARRA VELHA)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: AMARAL (BARRA VELHA)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA AMARAL (BARRA VELHA)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA AGRO BENTO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: BENTO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA AGRO BENTO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA COELHO (ITAJAI)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: COELHO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA COELHO (ITAJAI)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA COUTO (FABRICIO)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: COUTO(FABRICIO)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA COUTO (FABRICIO)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA DA PENHA',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: DA PENHA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA DA PENHA');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA DEDÉ CAMBORIU',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: DEDÉ CAMBORIU'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA DEDÉ CAMBORIU');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA DO ITU (JANAINA)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: DO ITU(JANAINA)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA DO ITU (JANAINA)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA DO MANO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: DO MANO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA DO MANO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA DOM QUIRINO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: DOM QUIRINO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA DOM QUIRINO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA DU CAMPO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: DU CAMPO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA DU CAMPO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA EDUARDO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: EDUARDO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA EDUARDO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA ELAINE ITAJAI',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: ELAINE (ITAJAI)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA ELAINE ITAJAI');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA ELAINE (NAVEGANTES)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: ELAINE (NAVEGANTES)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA ELAINE (NAVEGANTES)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA FORMENTO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: FORMENTO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA FORMENTO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA FRAN (FAZENDA)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: FRAN (FAZENDA)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA FRAN (FAZENDA)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA GADOTTI','34.459.393/0001-18',NULL,NULL,NULL,'Importado: GADOTTI'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA GADOTTI');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA GIOPET (ITAJAI)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: GIOPET (ITAJAI)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA GIOPET (ITAJAI)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA IMPÉRIO DAS RAÇÕES',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: IMPERIO DAS RAÇÕES'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA IMPÉRIO DAS RAÇÕES');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA INDIO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: INDIO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA INDIO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'ITU',NULL,NULL,NULL,NULL,'Importado: ITU'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='ITU');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA  NAVEGANTES - JOÃO','79.000.238/0001-77',NULL,NULL,NULL,'Importado: JOÃO (CENTRO NAVEGANTES)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA  NAVEGANTES - JOÃO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)','08.930.402/0001-05',NULL,'TELEFAX:47-3346-4224',NULL,'Importado: JOÃO (SÃO CRISTOVÃO) BARRA VELHA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA SÃO CRISTOVÃO (JOÃO)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA JOSIAS',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: JOSIAS'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA JOSIAS');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'LUAN',NULL,NULL,NULL,NULL,'Importado: LUAN'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='LUAN');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA MANU (MURTA)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: MANU(MURTA)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA MANU (MURTA)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA MANOELA',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: MANUELA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA MANOELA');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA RECANTO DOS ANIMAIS(MARCIO)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: MARCIO (RECANTO DOS ANIMAIS)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA RECANTO DOS ANIMAIS(MARCIO)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'MEIA PRAIA','50.946.214/0001-22',NULL,NULL,NULL,'Importado: MEIA PRAIA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='MEIA PRAIA');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA MORRETES','24.359.799/0001-75',NULL,NULL,NULL,'Importado: MORRETES'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA MORRETES');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: MULTI AGRO CAMBORIU'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA MUNDO PET (ITAJAI)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: MUNDO PET(ITAJAI)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA MUNDO PET (ITAJAI)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA NP',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: NP 2'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA NP');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA NUNES - CAMBORIU',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: NUNES CAMBORIU'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA NUNES - CAMBORIU');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA PAIVA',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: PAIVA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA PAIVA');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA PAULINIA(CAMBORIU) EDSON',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: PAULINIA(CAMBORIU)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA PAULINIA(CAMBORIU) EDSON');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA PAULISTA',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: PAULISTA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA PAULISTA');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA PET LIKE',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: PET LIKE'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA PET LIKE');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA PIÇARRAS',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: PIÇARRAS'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA PIÇARRAS');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA PRO CAMPO(ALICIO)',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: PRO CAMPO'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA PRO CAMPO(ALICIO)');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA QUATRO PATAS',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: QUATRO PATAS'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA QUATRO PATAS');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA SEU JOÃO',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: SEU JOÃO ITAJAI'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA SEU JOÃO');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA SOUZA',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: SOUZA'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA SOUZA');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA TRADIÇÃO CAMBORIU',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: TRADIÇÃO(CAMBORIU)'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA TRADIÇÃO CAMBORIU');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'AGROPECUARIA VALENT´S',NULL,NULL,'TELEFAX:47-3346-4224',NULL,'Importado: VALENT´S'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='AGROPECUARIA VALENT´S');
INSERT INTO clients (name, cnpj, city, phone, address, notes)
SELECT 'VERSONSET',NULL,NULL,NULL,NULL,'Importado: VERSONSET'
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name='VERSONSET');

-- ----------------------------------------------------------------
-- 2. PRODUTOS (132 únicos)
-- ----------------------------------------------------------------
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO1','OO1','PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO1');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO2','OO2','PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO2');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO3','OO3','PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO3');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO4','OO4','PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO4');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO5','OO5','PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO5');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO6','OO6','PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO6');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO7','OO7','PEITORAL DE NYLON FITA 20 NR 4',6.85,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO7');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO8','OO8','PEITORAL DE NYLON FITA 20 NR 5',6.95,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO8');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_OO9','OO9','PEITORAL POLYESTER  FITA 15 Nº 00',6.9,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='OO9');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O10','O10','PEITORAL POLYESTER  FITA 15 Nº 0',6.9,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O10');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O11','O11','PEITORAL POLYESTER  FITA 15 Nº 1',6.9,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O11');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O12','O12','PEITORAL POLYESTER  FITA 15 Nº 2',6.9,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O12');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O13','O13','PEITORAL POLYESTER  FITA 15 Nº 3',6.9,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O13');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O14','O14','PEITORAL POLYESTER  FITA 15 Nº 4',6.9,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O14');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O15','O15','PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O15');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O16','O16','PEITORAL NYLON  EM X  FITA 20  Nº M',7.1,12.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O16');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O17','O17','PEITORAL NYLON  EM X  FITA 25  Nº G',12.2,21.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O17');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O18','O18','PEITORAL POLIESTER EM X FITA 15 N. P',7.5,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O18');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O19','O19','PEITORAL POLIESTER EM X FITA 15 Nº M',7.85,13.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O19');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O20','O20','PEITORAL POLIESTER EM X FITA 15 Nº G',7.99,13.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O20');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O21','O21','PEITORAL POLIESTER EM X FITA 20 Nº P',9.54,16.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O21');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O22','O22','PEITORAL POLIESTER EM X FITA 20 Nº M',9.7,16.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O22');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O23','O23','PEITORAL POLIESTER EM X FITA 20 Nº G',9.9,17.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O23');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O24','O24','PEITORAL POLIESTER EM X FITA 25 Nº P',10.9,19.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O24');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O25','O25','PEITORAL POLIESTER EM X FITA 25 Nº M',11.9,21.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O25');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O26','O26','PEITORAL POLIESTER EM X FITA 25 Nº G',12.9,23.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O26');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O27','O27','PEITORAL POLIESTER EM X FITA 40 Nº M',39.9,41.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O27');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O28','O28','PEITORAL POLIESTER EM X FITA 40 Nº G',41.9,42.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O28');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O29','O29','PEITORAL NYLON  DUPLO FITA 40 Nº M',6.6,34.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O29');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O30','O30','PEITORAL NYLON  DUPLO FITA 40 Nº G',6.6,36.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O30');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O31','O31','PEITORAL NYLON  DUPLO FITA 40 Nº GG',6.6,39.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O31');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O32','O32','PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.6,18.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O32');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O33','O33','PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.6,19.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O33');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O34','O34','PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.6,25.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O34');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O35','O35','GUIA DE CORDA 6 MM C/ 1 METRO',4.6,7.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O35');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O36','O36','GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O36');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O37','O37','GUIA DE CORDA 12MM C/ 60 CM',6.5,11.8,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O37');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O38','O38','GUIA DE CORDA 12MM C/ 1 MT',7.25,12.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O38');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O39','O39','GUIA DE CORDA 16 MM C/ 40 CM',8.8,13.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O39');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O40','O40','GUIA DE CORDA 16 MM C/ 60 CM',9.4,14.4,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O40');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O41','O41','GUIA DE CORDA 16 MM C/ 1 MT',10.5,16.1,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O41');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O42','O42','GUIA DE CORDA 16 MM  C/40 CM C/ MOLA',10.3,15.8,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O42');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O43','O43','GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.8,16.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O43');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O44','O44','GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA',11.9,18.3,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O44');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O45','O45','GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',15.8,24.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O45');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O46','O46','GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.8,26.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O46');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_134','134','GUIA ENFORCADOR 16 MM X 60CM SEM MOLA',10.6,25.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='134');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O50','O50','COLEIRA REGUL POLIESTER FITA 15 TAM P',0,5.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O50');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O51','O51','COLEIRA REGUL POLIESTER FITA 20 TAM M',0,6.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O51');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O52','O52','COLEIRA REGUL POLIESTER FITA 25 TAM G',0,8.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O52');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O53','O53','GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.4,4.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O53');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O54','O54','GUIA DE POLIESTER  FITA 15  C/   1 MT',2.4,6.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O54');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O55','O55','GUIA DE POLIESTER DUPLA   C/   60 CM',2.4,12.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O55');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O56','O56','GUIA DE POLIESTER DUPLA   C/   1 MT',2.4,14.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O56');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O57','O57','CINTO SEGURANÇA PET NYLON FITA 25',6.21,10.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O57');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O58','O58','CINTO SEGURANÇA PET POLIESTER FITA 25',7.2,11.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O58');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O59','O59','PEITORAL NYLON NEOPREME Nº M',18.84,41.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O59');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O60','O60','PEITORAL NYLON NEOPREME Nº G',18.84,42.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O60');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O61','O61','PEITORAL NYLON DUPLO REFORÇADO TAM P',18.84,27.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O61');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O62','O62','PEITORAL NYLON DUPLO REFORÇADO TAM M',19.89,29.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O62');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O63','O63','PEITORAL NYLON DUPLO REFORÇADO TAM G',20.53,30.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O63');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O64','O64','COL. COURO NATURAL Nº1',1.67,2.4,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O64');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O65','O65','COL. COURO NATURAL Nº2',1.99,2.8,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O65');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O66','O66','COL. COURO NATURAL Nº3',3.05,4.35,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O66');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O67','O67','COL. COURO NATURAL Nº4',4.2,6.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O67');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O68','O68','COL. COURO NATURAL Nº5',4.38,6.2,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O68');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O69','O69','COL. COURO NATURAL Nº6',5.7,7.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O69');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O70','O70','COL. COURO NATURAL Nº7',7.99,9.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O70');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O71','O71','COL. COURO NATURAL Nº8',9.58,12.2,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O71');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O72','O72','COL. COURO NATURAL Nº9',13.15,16.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O72');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O73','O73','COL COUR NATURAL Nº10',14.65,18.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O73');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O74','O74','COL. COURO PINTADA Nº1',1.67,3.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O74');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O75','O75','COL. COURO PINTADA Nº2',1.99,3.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O75');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O76','O76','COL. COURO PINTADA Nº3',3.05,6.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O76');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O77','O77','COL. COURO PINTADA Nº4',4.2,6.65,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O77');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O78','O78','COL. COURO PINTADA Nº5',4.38,8.7,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O78');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O79','O79','COL. COURO PINTADA Nº6',5.7,11.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O79');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O80','O80','COL. COURO PINTADA Nº7',7.99,13.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O80');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O81','O81','COL. COURO PINTADA Nº8',9.58,14.8,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O81');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O82','O82','COL. COURO PINTADA Nº9',13.15,17.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O82');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O83','O83','COL. COURO PINTADA Nº10',14.65,18.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O83');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O84','O84','COLEIRA NYLON TUBOLAR FITA 15 MM Nº 00',2.2,3.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O84');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O85','O85','COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0',2.2,3.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O85');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O86','O86','COLEIRA NYLON TUBOLAR FITA 15 MM Nº 1',2.2,3.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O86');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O87','O87','COLEIRA NYLON TUBOLAR FITA 15 MM Nº 2',2.2,3.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O87');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O88','O88','COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3',2.2,3.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O88');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O89','O89','COLEIRA NYLON LISA FITA 20MM  Nº 4',2.68,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O89');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O90','O90','COLEIRA NYLON LISA FITA 20MM  Nº 5',2.68,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O90');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O91','O91','COLEIRA NYLON LISA FITA 20MM  Nº 6',2.68,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O91');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O92','O92','COLEIRA DE POLIESTER FITA 15 MM Nº 00',2.5,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O92');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O93','O93','COLEIRA DE POLIESTER FITA 15 MM Nº 0',2.5,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O93');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O94','O94','COLEIRA DE POLIESTER FITA 15 MM Nº 1',2.5,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O94');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O95','O95','COLEIRA DE POLIESTER FITA 15 MM Nº 2',2.5,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O95');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O96','O96','COLEIRA DE POLIESTER FITA 15 MM Nº 3',2.5,4.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O96');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O97','O97','COLEIRA ELAST. PARA GATOS TAM. ÚNICO',2.1,3.8,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O97');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O98','O98','PEIT. POLIESTER GATO TAM ÚNICO FITA 13 MM',2.1,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O98');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_133','133','PEIT. POLIESTER GATO TAM ÚNICO FITA 15 MM',2.1,12.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='133');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O99','O99','COLEIRA DE NYLON DUPLA COSTURADA Nº 4',4.25,7.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O99');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_100','100','COLEIRA DE NYLON DUPLA COSTURADA Nº 5',4.35,7.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='100');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_101','101','COLEIRA DE NYLON DUPLA COSTURADA Nº 6',4.5,7.6,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='101');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_102','102','COLEIRA DE NYLON DUPLA COSTURADA Nº 7',5.3,8.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='102');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_103','103','COLEIRA DE NYLON DUPLA COSTURADA Nº 8',5.45,9.3,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='103');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_104','104','COLEIRA DE NYLON DUPLA COSTURADA Nº 9',5.55,9.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='104');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_105','105','COLEIRA DE NYLON DUPLA COSTURADA Nº 10',5.65,12.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='105');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_106','106','COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='106');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_107','107','COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='107');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_108','108','COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='108');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_109','109','COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='109');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_110','110','COLEIRA POLIESTER DUPLA NR 7 FITA 30',12.9,14.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='110');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_111','111','ALMOFADA COM SILICONE TAM P',15.7,26.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='111');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_112','112','ALMOFADA COM SILICONE TAM M',16.7,29.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='112');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_113','113','ALMOFADA COM SILICONE TAM G',17.7,32.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='113');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_114','114','ALMOFADA COM SILICONE TAM GG',21.2,39.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='114');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_115','115','ALMOFADA COM SILICONE TAM EG',24.2,46.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='115');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_116','116','ALMOFADA COM SILICONE TAM EGGG',25.4,53.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='116');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_117','117','CAMA LEDY P',2.0,32.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='117');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_118','118','CAMA LEDY M',25.4,43.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='118');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_119','119','CAMA LEDY G',25.4,54.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='119');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_120','120','SUETER TAM 00',25.4,6.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='120');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_121','121','SUETER TAM 0',25.4,8.25,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='121');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_122','122','SUETER TAM 02',25.4,8.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='122');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_123','123','SUETER TAM 04',25.4,8.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='123');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_124','124','SUETER TAM 06',25.4,12.0,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='124');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_125','125','SUETER TAM 08',25.4,14.2,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='125');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_126','126','SUETER TAM 10',25.4,14.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='126');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_127','127','SUETER TAM 12',25.4,16.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='127');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_128','128','SUETER TAM 14',25.4,17.5,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='128');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_129','129','SUETER TAM 16',25.4,19.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='129');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_130','130','MANTA PET',25.4,14.99,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='130');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_131','131','PIPI DOG PEQUENO',25.4,14.99,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='131');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_132','132','PIPI DOG GRANDE',25.4,16.99,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='132');
INSERT INTO products (id, code, description, cost, price, category)
SELECT 'IMP_O47','O47','GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',10.6,14.9,'Importado'
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code='O47');

-- ----------------------------------------------------------------
-- 3. PEDIDOS + ITENS + PARCELAS (PL/pgSQL)
-- ----------------------------------------------------------------
DO $$
DECLARE
  v_client_id BIGINT;
  v_order_id  BIGINT;
  v_prod_id   TEXT;
BEGIN

  -- A CASA DO PET BAL. CAMBORIÚ | pedido 2026-02-10 → NF 2026-02-20 | 13 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='A CASA DO PET BAL. CAMBORIÚ' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-10'::DATE, '2026-02-20'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 10.02.26 | NF: 2026-02-20');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,5,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,5,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O18' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 N. P',7.50,12.9,5,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O19' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº M',7.85,13.6,5,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O40' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',9.40,14.4,3,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O42' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM C/ MOLA',10.30,15.8,3,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O46' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.80,26.9,3,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O97' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA ELAST. PARA GATOS TAM. ÚNICO',2.10,3.8,10,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEIT. POLIESTER GATO TAM ÚNICO FITA 13 MM',2.10,12.9,5,8);
    SELECT id INTO v_prod_id FROM products WHERE code='133' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEIT. POLIESTER GATO TAM ÚNICO FITA 15 MM',2.10,12.9,5,9);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,5,10);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,5,11);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,5,12);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-03-20'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-04-04'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-04-20'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA AGRO RURAL (ARNALDO DA SILVA) | pedido 2025-09-29 → NF 2025-09-29 | 15 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGRO RURAL (ARNALDO DA SILVA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-29'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-29'::DATE, '2025-09-29'::DATE, 'Entregue', 'BOLETOS ANEXO JUNTO A NF', 0.0, 'Aba: 29.09.2025 | NF: 2025-09-29');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,4,14);

  END IF;

  -- AGROPECUARIA AGROJEPE | pedido 2025-11-05 → NF 2025-11-12 | 23 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGROJEPE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-05'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-05'::DATE, '2025-11-12'::DATE, 'Entregue', 'BOLETOS ANEXOS NF', 0.0, 'Aba: 05.11 | NF: 2025-11-12');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,6,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,6,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAÇÃO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),41.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL MINI SAIA PP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL MINI SAIA P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL MINI SAIA M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET POLIESTER FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,22);

  END IF;

  -- AGROPECUARIA AGROJEPE | pedido 2026-02-24 → NF 2026-02-24 | 39 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGROJEPE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-24'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-24'::DATE, '2026-02-24'::DATE, 'Entregue', '30-45-60-75', 0.0, 'Aba: 24.02.26 | NF: 2026-02-24');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO9' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 00',6.90,12.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O10' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 0',6.90,12.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,4,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O13' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 3',6.90,12.9,2,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O15' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,3,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,3,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,3,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,4,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,5,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O29' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº M',6.60,34.9,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O30' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº G',6.60,36.9,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,2,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,1,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,3,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O39' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',8.80,13.5,1,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O45' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',15.80,24.9,1,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O46' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.80,26.9,1,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O47' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',10.60,14.9,1,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O50' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),5.9,5,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O51' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 20 TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,3,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O52' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,3,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.5,6,22);
    SELECT id INTO v_prod_id FROM products WHERE code='O58' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO SEGURANÇA PET POLIESTER FITA 25',7.20,11.9,3,23);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,24);
    SELECT id INTO v_prod_id FROM products WHERE code='O77' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',4.20,6.65,4,25);
    SELECT id INTO v_prod_id FROM products WHERE code='O79' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',5.70,11.0,4,26);
    SELECT id INTO v_prod_id FROM products WHERE code='O81' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',9.58,14.8,4,27);
    SELECT id INTO v_prod_id FROM products WHERE code='O83' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',14.65,18.9,3,28);
    SELECT id INTO v_prod_id FROM products WHERE code='O97' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA ELAST. PARA GATOS TAM. ÚNICO',2.10,3.8,10,29);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,3,30);
    SELECT id INTO v_prod_id FROM products WHERE code='111' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',15.70,26.9,2,31);
    SELECT id INTO v_prod_id FROM products WHERE code='112' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',16.70,29.9,1,32);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,1,33);
    SELECT id INTO v_prod_id FROM products WHERE code='114' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',21.20,39.9,1,34);
    SELECT id INTO v_prod_id FROM products WHERE code='115' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',24.20,46.9,2,35);
    SELECT id INTO v_prod_id FROM products WHERE code='116' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',25.40,53.9,1,36);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,2,37);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,1,38);

  END IF;

  -- AGROPECUARIA AGROJEPE | pedido 2026-03-16 → NF 2026-03-24 | 30 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGROJEPE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-16'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-16'::DATE, '2026-03-24'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 16.03.26 | NF: 2026-03-24');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O15' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,2,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,2,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,2,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O50' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),5.9,3,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O54' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER  FITA 15  C/   1 MT',2.40,6.5,2,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O58' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO SEGURANÇA PET POLIESTER FITA 25',7.20,11.9,2,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O77' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',4.20,6.65,3,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O79' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',5.70,11.0,3,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O81' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',9.58,14.8,3,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O97' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA ELAST. PARA GATOS TAM. ÚNICO',2.10,3.8,10,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,3,15);
    SELECT id INTO v_prod_id FROM products WHERE code='111' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',15.70,26.9,1,16);
    SELECT id INTO v_prod_id FROM products WHERE code='112' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',16.70,29.9,1,17);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,1,18);
    SELECT id INTO v_prod_id FROM products WHERE code='114' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',21.20,39.9,1,19);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,1,20);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,1,21);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,1,22);
    SELECT id INTO v_prod_id FROM products WHERE code='120' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 00',25.40,6.5,2,23);
    SELECT id INTO v_prod_id FROM products WHERE code='121' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 0',25.40,8.25,2,24);
    SELECT id INTO v_prod_id FROM products WHERE code='123' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',25.40,8.9,2,25);
    SELECT id INTO v_prod_id FROM products WHERE code='124' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',25.40,12.0,2,26);
    SELECT id INTO v_prod_id FROM products WHERE code='125' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',25.40,14.2,2,27);
    SELECT id INTO v_prod_id FROM products WHERE code='126' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 10',25.40,14.5,2,28);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET (10 +1)',25.40,14.99,10,29);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-23'::DATE, 340.85)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-05-08'::DATE, 340.85)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-05-25'::DATE, 340.85)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA AMARAL (BARRA VELHA) | pedido 2025-12-04 → NF 2025-12-04 | 30 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AMARAL (BARRA VELHA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-04'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-04'::DATE, '2025-12-04'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 04.12 | NF: 2025-12-04');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,12,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,12,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,12,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,12,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,12,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.9,6,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,6,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,6,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET POLIESTER FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,6,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,6,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,10,29);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-05'::DATE, 729.38)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-19'::DATE, 729.38)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-02-02'::DATE, 729.38)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA AMARAL (BARRA VELHA) | pedido 2026-03-03 → NF 2026-03-12 | 19 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AMARAL (BARRA VELHA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-03'::DATE, '2026-03-12'::DATE, 'Entregue', 'DESC. A VISTA', 59.73, 'Aba: 03.03.26 | NF: 2026-03-12');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,3,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,10,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,2,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O15' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,3,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O24' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº P',10.90,19.9,4,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O25' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº M',11.90,21.9,3,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,3,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,3,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,4,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,3,9);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,3,10);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,3,11);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,3,12);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,4,13);
    SELECT id INTO v_prod_id FROM products WHERE code='110' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',12.90,14.5,4,14);
    SELECT id INTO v_prod_id FROM products WHERE code='122' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 02',25.40,8.5,10,15);
    SELECT id INTO v_prod_id FROM products WHERE code='123' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',25.40,8.9,10,16);
    SELECT id INTO v_prod_id FROM products WHERE code='124' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',25.40,12.0,10,17);
    SELECT id INTO v_prod_id FROM products WHERE code='125' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',25.40,14.2,5,18);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-03-16'::DATE, 1079.77)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA AGRO BENTO | pedido 2025-09-19 → NF 2025-09-25 | 27 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGRO BENTO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-19'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-19'::DATE, '2025-09-25'::DATE, 'Entregue', NULL, 0.0, 'Aba: 19.09.2025 | NF: 2025-09-25');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 6 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1( X  )PINTADA Nº1(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.4,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2( X  )PINTADA Nº2(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3( X )PINTADA Nº3(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4(  X )PINTADA Nº4(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5( X )PINTADA Nº5(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6(X  )PINTADA Nº6(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7( X )PINTADA Nº7(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8(X  )PINTADA Nº8(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10(X  )PINTADA Nº10(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,26);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-10-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-10-25'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA AGRO BENTO | pedido 2025-11-10 → NF 2025-11-14 | 12 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGRO BENTO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-10'::DATE, '2025-11-14'::DATE, 'Entregue', NULL, 0.0, 'Aba: 10.11 | NF: 2025-11-14');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,4,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,11);

  END IF;

  -- AGROPECUARIA AGRO BENTO | pedido 2026-01-07 → NF 2026-01-07 | 24 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGRO BENTO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-07'::DATE, 'Entregue', NULL, 0.0, 'Aba: 07.01.26 | NF: 2026-01-07');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,23);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-05'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-02-26'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA AGRO BENTO | pedido 2026-02-25 → NF 2026-03-04 | 12 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA AGRO BENTO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-25'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-25'::DATE, '2026-03-04'::DATE, 'Entregue', NULL, 0.0, 'Aba: 25.02.26 | NF: 2026-03-04');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,1,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO9' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 00',6.90,12.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O13' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 3',6.90,12.9,3,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O14' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 4',6.90,12.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,2,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O39' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',8.80,13.5,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O45' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',15.80,24.9,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O46' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.80,26.9,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,11);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-04'::DATE, 268.8)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA COELHO (ITAJAI) | pedido 2025-11-07 → NF 2025-11-12 | 3 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA COELHO (ITAJAI)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-07'::DATE, '2025-11-12'::DATE, 'Entregue', NULL, 73.9, 'Aba: 07.11 | NF: 2025-11-12');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,2);

  END IF;

  -- AGROPECUARIA COUTO (FABRICIO) | pedido 2025-10-13 → NF 2025-10-17 | 22 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA COUTO (FABRICIO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-13'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-13'::DATE, '2025-10-17'::DATE, 'Entregue', NULL, 0.0, 'Aba: 13.10 | NF: 2025-10-17');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.4,6,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,6,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,6,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADO Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,6,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,21);

  END IF;

  -- AGROPECUARIA COUTO (FABRICIO) | pedido 2026-01-07 → NF 2026-01-16 | 18 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA COUTO (FABRICIO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-16'::DATE, 'Entregue', 'PAGAMENTO COM CHEQUE PARA O DIA', 0.0, 'Aba: 07.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,6,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,6,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.3,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.0,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,17);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-16'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DA PENHA | pedido 2025-09-10 → NF 2025-09-10 | 27 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DA PENHA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-10'::DATE, '2025-09-10'::DATE, 'Entregue', 'BOLETOS  30/45', 0.0, 'Aba: 10.09.2025 | NF: 2025-09-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.15,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4( X )PINTADA Nº4(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7( X )PINTADA Nº7(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,6,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8( X )PINTADA Nº8(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,6,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10( X )PINTADA Nº10(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.5,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,3,26);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-10-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-10-25'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DEDÉ CAMBORIU | pedido 2025-10-20 → NF 2025-10-20 | 36 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DEDÉ CAMBORIU' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-20'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-20'::DATE, '2025-10-20'::DATE, 'Entregue', '30-45', 0.0, 'Aba: 20.10 | NF: 2025-10-20');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,2,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,2,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,2,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,2,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,4,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,35);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-19'::DATE, 428.25)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-12-04'::DATE, 428.25)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DEDÉ CAMBORIU | pedido 2026-01-14 → NF 2026-01-26 | 30 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DEDÉ CAMBORIU' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-14'::DATE, '2026-01-26'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 14.01.26 | NF: 2026-01-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,4,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,4,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,4,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,4,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,29);

  END IF;

  -- AGROPECUARIA DO ITU (JANAINA) | pedido 2025-11-14 → NF 2025-11-26 | 21 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO ITU (JANAINA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-14'::DATE, '2025-11-26'::DATE, 'Entregue', NULL, 0.0, 'Aba: 14.11 | NF: 2025-11-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,20);

  END IF;

  -- AGROPECUARIA DO ITU (JANAINA) | pedido 2026-01-09 → NF 2026-01-16 | 8 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO ITU (JANAINA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-09'::DATE, '2026-01-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 09.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,6,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,6,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,7);

  END IF;

  -- AGROPECUARIA DO MANO | pedido 2025-09-08 → NF 2025-09-10 | 28 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO MANO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-08'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-08'::DATE, '2025-09-10'::DATE, 'Entregue', NULL, 0.0, 'Aba: 08.09.2025 | NF: 2025-09-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1(  )PINTADA Nº1(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2(  )PINTADA Nº2(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3(  )PINTADA Nº3(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4(  )PINTADA Nº4(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5(  )PINTADA Nº5(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7(  )PINTADA Nº7(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,5,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8(  )PINTADA Nº8(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,4,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG (ENTREGUE)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,27);

  END IF;

  -- AGROPECUARIA DO MANO | pedido 2025-10-01 → NF 2025-10-03 | 18 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO MANO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-01'::DATE, '2025-10-03'::DATE, 'Entregue', 'A VISTA', 0.0, 'Aba: 01.10.25 | NF: 2025-10-03');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,17);

  END IF;

  -- AGROPECUARIA DO MANO | pedido 2025-10-29 → NF 2025-11-04 | 19 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO MANO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-29'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-29'::DATE, '2025-11-04'::DATE, 'Entregue', NULL, 100.0, 'Aba: 29.10 | NF: 2025-11-04');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,5,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,6,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,6,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,18);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-07'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DO MANO | pedido 2025-12-01 → NF 2025-12-08 | 17 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO MANO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-01'::DATE, '2025-12-08'::DATE, 'Entregue', NULL, 0.0, 'Aba: 01.12.25 | NF: 2025-12-08');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,16);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DO MANO | pedido 2026-01-12 → NF 2026-01-22 | 38 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO MANO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-12'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-12'::DATE, '2026-01-22'::DATE, 'Entregue', NULL, 0.0, 'Aba: 12.01.26 | NF: 2026-01-22');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,6,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,6,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,6,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,3,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,37);

  END IF;

  -- AGROPECUARIA DO MANO | pedido 2026-03-03 → NF 2026-03-12 | 35 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DO MANO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-03'::DATE, '2026-03-12'::DATE, 'Entregue', 'PAGAMENTO A VISTA', 0.0, 'Aba: 03.03.26 | NF: 2026-03-12');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,1,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,3,2);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.9,3,4);
    SELECT id INTO v_prod_id FROM products WHERE code='OO7' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',6.85,12.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='OO9' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 00',6.90,12.9,2,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,3,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O13' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 3',6.90,12.9,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O15' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,3,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,2,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,2,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O39' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',8.80,13.5,2,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O40' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',9.40,14.4,2,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O42' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM C/ MOLA',10.30,15.8,2,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,2,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O57' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO SEGURANÇA PET NYLON FITA 25',6.21,10.5,2,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O74' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',1.67,2.69,3,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O75' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',1.99,3.14,3,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O76' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',3.05,4.9,4,22);
    SELECT id INTO v_prod_id FROM products WHERE code='O77' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',4.20,6.3,2,23);
    SELECT id INTO v_prod_id FROM products WHERE code='O79' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',5.70,9.4,3,24);
    SELECT id INTO v_prod_id FROM products WHERE code='O80' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',7.99,10.9,3,25);
    SELECT id INTO v_prod_id FROM products WHERE code='O83' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',14.65,17.4,3,26);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,1,27);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,2,28);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,2,29);
    SELECT id INTO v_prod_id FROM products WHERE code='110' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',12.90,14.5,4,30);
    SELECT id INTO v_prod_id FROM products WHERE code='116' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',25.40,53.9,1,31);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,1,32);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,1,33);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET  (10 + 1)',25.40,14.99,10,34);

  END IF;

  -- AGROPECUARIA DOM QUIRINO | pedido 2025-10-29 → NF 2025-11-04 | 19 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DOM QUIRINO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-29'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-29'::DATE, '2025-11-04'::DATE, 'Entregue', '28-42', 0.0, 'Aba: 29.10 | NF: 2025-11-04');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,5,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,18);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-02'::DATE, 327.55)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-12-16'::DATE, 327.55)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DOM QUIRINO | pedido 2025-12-01 → NF 2025-12-17 | 21 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DOM QUIRINO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-01'::DATE, '2025-12-17'::DATE, 'Entregue', 'BOLETO ANEXO NF.', 0.0, 'Aba: 01.12.25 | NF: 2025-12-17');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),5.9,5,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 20 TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,5,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15MM C/  1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,5,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER FITA 15MM   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,5,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,4,20);

  END IF;

  -- AGROPECUARIA DU CAMPO | pedido 2025-09-10 → NF 2025-09-18 | 32 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DU CAMPO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-10'::DATE, '2025-09-18'::DATE, 'Entregue', 'BOLETOS ANEXOS NF', 0.0, 'Aba: 10.09.2025 | NF: 2025-09-18');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.0,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.000000000000004,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA POLIESTER DUPLA COM 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA POLIESTER DUPLA COM 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,4,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,2,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,4,31);

  END IF;

  -- AGROPECUARIA DU CAMPO | pedido 2025-10-30 → NF 2025-11-04 | 22 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DU CAMPO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-30'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-30'::DATE, '2025-11-04'::DATE, 'Entregue', '30-45', 0.0, 'Aba: 30.10 | NF: 2025-11-04');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.9,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,3,21);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-04'::DATE, 358.6)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-12-19'::DATE, 358.6)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA DU CAMPO | pedido 2026-01-12 → NF 2026-01-12 | 49 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA DU CAMPO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-12'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-12'::DATE, '2026-01-12'::DATE, 'Entregue', '30-45-60-75', 0.0, 'Aba: 12.01.26 | NF: 2026-01-12');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,2,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,3,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,3,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,6,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,6,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,6,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,6,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.3,6,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,6,43);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,44);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,45);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,46);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,47);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,4,48);

  END IF;

  -- AGROPECUARIA EDUARDO | pedido 2025-09-10 → NF 2025-09-10 | 14 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA EDUARDO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-10'::DATE, '2025-09-10'::DATE, 'Entregue', NULL, 0.0, 'Aba: 10.09.2025 | NF: 2025-09-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,8,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.15,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4(X  )PINTADA Nº4(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,6,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5( X )PINTADA Nº5(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,5,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6(X  )PINTADA Nº6(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,13);

  END IF;

  -- AGROPECUARIA EDUARDO | pedido 2025-11-14 → NF 2025-11-26 | 25 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA EDUARDO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-14'::DATE, '2025-11-26'::DATE, 'Entregue', NULL, 0.0, 'Aba: 14.11 | NF: 2025-11-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,5,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA PARA GATOS TAM. ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,10,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,24);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-22'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA EDUARDO | pedido 2026-01-09 → NF 2026-01-16 | 25 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA EDUARDO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-09'::DATE, '2026-01-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 09.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,24);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-02-27'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-03-16'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA ELAINE ITAJAI | pedido 2025-10-27 → NF 2025-11-05 | 28 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA ELAINE ITAJAI' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-27'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-27'::DATE, '2025-11-05'::DATE, 'Entregue', NULL, 0.0, 'Aba: 27.10 | NF: 2025-11-05');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,4,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET ( MANDAR 1 DE BRINDE) ENTREGUE',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,10,27);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-05'::DATE, 492.55)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-12-20'::DATE, 492.55)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA ELAINE ITAJAI | pedido 2026-03-04 → NF 2026-03-04 | 28 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA ELAINE ITAJAI' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-04'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-04'::DATE, '2026-03-04'::DATE, 'Entregue', '30-45-60-75', 0.0, 'Aba: 04.03.26 | NF: 2026-03-04');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.6,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,1,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,2,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O40' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',9.40,14.4,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O41' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',10.50,16.1,2,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O44' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA',11.90,18.3,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.5,4,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O54' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER  FITA 15  C/   1 MT',2.40,6.5,4,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O55' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',2.40,12.5,2,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O56' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',2.40,14.5,2,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O61' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',18.84,27.9,2,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O62' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',19.89,29.9,1,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O63' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',20.53,30.9,2,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O75' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',1.99,3.14,3,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O76' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',3.05,4.9,6,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O77' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',4.20,6.3,6,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,3,17);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,5,18);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,3,19);
    SELECT id INTO v_prod_id FROM products WHERE code='111' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',15.70,26.9,2,20);
    SELECT id INTO v_prod_id FROM products WHERE code='112' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',16.70,29.9,2,21);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,2,22);
    SELECT id INTO v_prod_id FROM products WHERE code='114' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',21.20,39.9,2,23);
    SELECT id INTO v_prod_id FROM products WHERE code='115' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',24.20,46.9,2,24);
    SELECT id INTO v_prod_id FROM products WHERE code='116' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',25.40,53.9,2,25);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,1,26);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,1,27);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-04'::DATE, 278.6)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-04-20'::DATE, 278.6)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-05-04'::DATE, 278.6)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2026-05-19'::DATE, 278.6)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA ELAINE (NAVEGANTES) | pedido 2025-10-20 → NF 2025-10-20 | 4 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA ELAINE (NAVEGANTES)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-20'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-20'::DATE, '2025-10-20'::DATE, 'Entregue', NULL, 0.0, 'Aba: 20.10 | NF: 2025-10-20');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,5,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,2,3);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-20'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA ELAINE (NAVEGANTES) | pedido 2026-01-08 → NF 2026-01-16 | 15 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA ELAINE (NAVEGANTES)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-08'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-08'::DATE, '2026-01-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 08.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ENFORCADOR',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.0,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,6,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,2,14);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-02'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA FORMENTO | pedido 2025-10-17 → NF 2025-10-24 | 35 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA FORMENTO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-17'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-17'::DATE, '2025-10-24'::DATE, 'Entregue', NULL, 0.0, 'Aba: 17.10 | NF: 2025-10-24');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,4,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,4,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,2,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,2,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,34);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-18'::DATE, 346.36)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-11-28'::DATE, 346.36)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2025-12-08'::DATE, 346.36)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA FRAN (FAZENDA) | pedido 2025-11-04 → NF 2025-11-12 | 44 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA FRAN (FAZENDA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-04'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-04'::DATE, '2025-11-12'::DATE, 'Entregue', NULL, 0.0, 'Aba: 04.11 | NF: 2025-11-12');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.9,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,6,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,12,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,6,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,6,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,12,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,12,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,12,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,12,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,12,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,12,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,12,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,12,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,12,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,12,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.0,6,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.5,6,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,6,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.3,6,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,7,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,6,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,4,43);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-17'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-02'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-01-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA GADOTTI | pedido 2025-10-03 → NF 2025-10-03 | 16 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA GADOTTI' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-03'::DATE, '2025-10-03'::DATE, 'Entregue', NULL, 0.0, 'Aba: 03.10 | NF: 2025-10-03');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,5,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.9,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.9,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER P/GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA PARA GATOS TAM. ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,10,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,6,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,6,15);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-10-28'::DATE, 353.43)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-11-07'::DATE, 353.43)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2025-11-17'::DATE, 353.43)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA GADOTTI | pedido 2025-12-15 → NF 2025-12-18 | 15 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA GADOTTI' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-15'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-15'::DATE, '2025-12-18'::DATE, 'Entregue', 'BOLETO ANEXO NF', 0.0, 'Aba: 15.12 | NF: 2025-12-18');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA PARA GATOS TAM. ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,10,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,2,14);

  END IF;

  -- AGROPECUARIA GIOPET (ITAJAI) | pedido 2025-11-07 → NF 2025-11-07 | 10 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA GIOPET (ITAJAI)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-07'::DATE, '2025-11-07'::DATE, 'Entregue', NULL, 0.0, 'Aba: 07.11 | NF: 2025-11-07');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,9);

  END IF;

  -- AGROPECUARIA IMPÉRIO DAS RAÇÕES | pedido 2025-11-10 → NF 2025-11-10 | 7 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA IMPÉRIO DAS RAÇÕES' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-10'::DATE, '2025-11-10'::DATE, 'Entregue', NULL, 0.0, 'Aba: 10.11 | NF: 2025-11-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,5,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,6);

  END IF;

  -- AGROPECUARIA IMPÉRIO DAS RAÇÕES | pedido 2026-03-30 → NF 2026-03-30 | 15 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA IMPÉRIO DAS RAÇÕES' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-30'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-30'::DATE, '2026-03-30'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 30.03.26 | NF: 2026-03-30');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,3,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O13' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 3',6.90,12.9,4,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O14' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 4',6.90,12.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O35' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 6 MM C/ 1 METRO',4.60,7.6,3,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='120' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 00',25.40,6.5,6,5);
    SELECT id INTO v_prod_id FROM products WHERE code='121' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 0',25.40,8.25,6,6);
    SELECT id INTO v_prod_id FROM products WHERE code='122' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 02',25.40,8.7,6,7);
    SELECT id INTO v_prod_id FROM products WHERE code='123' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',25.40,8.9,6,8);
    SELECT id INTO v_prod_id FROM products WHERE code='124' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',25.40,12.0,6,9);
    SELECT id INTO v_prod_id FROM products WHERE code='125' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',25.40,14.2,6,10);
    SELECT id INTO v_prod_id FROM products WHERE code='126' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 10',25.40,14.5,6,11);
    SELECT id INTO v_prod_id FROM products WHERE code='127' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 12',25.40,16.9,6,12);
    SELECT id INTO v_prod_id FROM products WHERE code='128' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 14',25.40,17.5,6,13);
    SELECT id INTO v_prod_id FROM products WHERE code='129' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 16',25.40,19.9,6,14);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-05-06'::DATE, 299.53)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-05-21'::DATE, 299.53)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-06-05'::DATE, 299.54)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA INDIO | pedido 2025-09-17 → NF 2025-09-17 | 28 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA INDIO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-17'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-17'::DATE, '2025-09-17'::DATE, 'Entregue', NULL, 0.0, 'Aba: 17.09 | NF: 2025-09-17');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 20 TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2( X  )PINTADA Nº2(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3( X )PINTADA Nº3(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4(  X )PINTADA Nº4(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5( X )PINTADA Nº5(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6(X  )PINTADA Nº6(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7( X )PINTADA Nº7(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9( X )PINTADA Nº9(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,6,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10(X  )PINTADA Nº10(   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,27);

  END IF;

  -- AGROPECUARIA INDIO | pedido 2025-10-09 → NF 2025-10-15 | 19 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA INDIO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-09'::DATE, '2025-10-15'::DATE, 'Entregue', '20-35', 0.0, 'Aba: 09.10 | NF: 2025-10-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET ( MANDAR 1 MANTA DE BRINDE)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,10,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,5,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,5,18);

  END IF;

  -- AGROPECUARIA INDIO | pedido 2025-12-04 → NF 2025-12-04 | 34 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA INDIO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-04'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-04'::DATE, '2025-12-04'::DATE, 'Entregue', '25-35-45', 0.0, 'Aba: 04.12.25 | NF: 2025-12-04');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),5.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.6,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,6,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,4,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,4,33);

  END IF;

  -- AGROPECUARIA INDIO | pedido 2026-01-07 → NF 2026-01-23 | 40 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA INDIO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-23'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 07.01.26 | NF: 2026-01-23');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,6,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,6,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,4,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,4,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,1,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,39);

  END IF;

  -- AGROPECUARIA INDIO | pedido 2026-02-25 → NF 2026-03-03 | 34 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA INDIO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-25'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-25'::DATE, '2026-03-03'::DATE, 'Entregue', NULL, 0.0, 'Aba: 25.02.26 | NF: 2026-03-03');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,5,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.9,2,2);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,6,3);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,6,4);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='OO7' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',6.85,12.9,6,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O21' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº P',9.54,16.5,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,2,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O23' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº G',9.90,17.5,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O28' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 40 Nº G',41.90,43.9,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O29' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº M',6.60,34.9,2,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O30' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº G',6.60,36.9,2,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O31' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº GG',6.60,39.9,1,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,2,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O39' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',8.80,13.5,2,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.7,2,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O54' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER  FITA 15  C/   1 MT',2.40,6.5,3,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,2,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O60' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº G',18.84,42.9,2,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O65' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',1.99,3.14,6,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O66' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',3.05,4.9,6,22);
    SELECT id INTO v_prod_id FROM products WHERE code='O68' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',4.38,6.9,6,23);
    SELECT id INTO v_prod_id FROM products WHERE code='O69' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',5.70,9.4,3,24);
    SELECT id INTO v_prod_id FROM products WHERE code='O70' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',7.99,10.9,2,25);
    SELECT id INTO v_prod_id FROM products WHERE code='O71' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',9.58,11.66,3,26);
    SELECT id INTO v_prod_id FROM products WHERE code='O73' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10',14.65,17.4,2,27);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,3,28);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,5,29);
    SELECT id INTO v_prod_id FROM products WHERE code='111' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',15.70,26.9,1,30);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,1,31);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,1,32);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,1,33);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-02'::DATE, 333.54)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-04-17'::DATE, 333.54)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-05-04'::DATE, 333.54)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA  NAVEGANTES - JOÃO | pedido 2026-01-09 → NF 2026-01-16 | 24 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA  NAVEGANTES - JOÃO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-09'::DATE, '2026-01-16'::DATE, 'Entregue', '30-45', 0.0, 'Aba: 09.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON AMERICANO (X) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON AMERICANO (X) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLI GRADE DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 20 TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,5,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,5,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,23);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-16'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-03'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA  NAVEGANTES - JOÃO | pedido 2026-03-12 → NF 2026-03-12 | 12 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA  NAVEGANTES - JOÃO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-12'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-12'::DATE, '2026-03-12'::DATE, 'Entregue', 'BOLETO 30 DIAS ANEXO', 0.0, 'Aba: 12.03.26 | NF: 2026-03-12');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='111' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',15.70,26.9,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='112' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',16.70,29.9,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='114' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',21.20,39.9,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='115' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',24.20,46.9,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='116' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',25.40,53.9,1,11);

  END IF;

  -- AGROPECUARIA SÃO CRISTOVÃO (JOÃO) | pedido 2025-09-19 → NF 2025-09-19 | 21 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SÃO CRISTOVÃO (JOÃO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-19'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-19'::DATE, '2025-09-19'::DATE, 'Entregue', NULL, 0.0, 'Aba: 19.09 | NF: 2025-09-19');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,4,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,5,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAÇÃO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,6,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,20);

  END IF;

  -- AGROPECUARIA SÃO CRISTOVÃO (JOÃO) | pedido 2025-11-25 → NF 2025-11-25 | 14 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SÃO CRISTOVÃO (JOÃO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-25'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-25'::DATE, '2025-11-25'::DATE, 'Entregue', NULL, 0.0, 'Aba: 25.11.25 | NF: 2025-11-25');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,13);

  END IF;

  -- AGROPECUARIA SÃO CRISTOVÃO (JOÃO) | pedido 2026-03-03 → NF 2026-03-12 | 21 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SÃO CRISTOVÃO (JOÃO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-03'::DATE, '2026-03-12'::DATE, 'Entregue', NULL, 0.0, 'Aba: 03.03.26 | NF: 2026-03-12');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,7,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.9,7,2);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,8,3);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,10,4);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.9,4,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O21' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº P',9.54,16.5,3,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,3,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O29' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº M',6.60,34.9,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O30' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº G',6.60,36.9,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,3,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,2,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,4,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.7,4,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O55' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',2.40,12.5,3,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O56' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',2.40,14.5,2,15);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,4,16);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,4,17);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,4,18);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,4,19);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET (10 + 1)',25.40,14.99,10,20);

  END IF;

  -- AGROPECUARIA JOSIAS | pedido 2025-09-18 → NF 2025-10-02 | 12 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA JOSIAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-18'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-18'::DATE, '2025-10-02'::DATE, 'Entregue', NULL, 0.0, 'Aba: 18.09.25 | NF: 2025-10-02');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,6,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 12 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,3,11);

  END IF;

  -- AGROPECUARIA JOSIAS | pedido 2025-11-10 → NF 2025-11-19 | 14 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA JOSIAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-10'::DATE, '2025-11-19'::DATE, 'Entregue', 'VENC.  BOLETO', 0.0, 'Aba: 10.11 | NF: 2025-11-19');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 12 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,13);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA JOSIAS | pedido 2026-01-07 → NF 2026-01-16 | 16 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA JOSIAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-16'::DATE, 'Entregue', '25-45', 0.0, 'Aba: 07.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,7,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLI GRADE DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.9,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON CETIM C/APLIC N 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,15);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-02'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA JOSIAS | pedido 2026-02-25 → NF 2026-03-03 | 13 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA JOSIAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-25'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-25'::DATE, '2026-03-03'::DATE, 'Entregue', '30 DIAS BOLETO', 0.0, 'Aba: 25.02.26 | NF: 2026-03-03');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='O21' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº P',9.54,16.5,1,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O23' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº G',9.90,17.5,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O24' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº P',10.90,19.9,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O25' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº M',11.90,21.9,2,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O39' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',8.80,13.5,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O40' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',9.40,14.4,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O50' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O51' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 20 TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,3,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O65' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',1.99,3.14,6,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O67' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',4.20,6.3,6,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O70' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',7.99,10.9,3,12);

  END IF;

  -- LUAN | pedido 2025-09-08 → NF - | 21 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='LUAN' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-08'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-08'::DATE, NULL, 'Entregue', '009-10', 0.0, 'Aba: 08.09.2025 | NF: -');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.7,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7(  )PINTADA Nº7( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,6,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8(  )PINTADA Nº8( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9(  )PINTADA Nº9( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10(  )PINTADA Nº10( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA PARA GATOS TAM. ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,10,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,20);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-09-30'::DATE, 266.46)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-10-15'::DATE, 266.46)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2025-10-27'::DATE, 266.46)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- LUAN | pedido 2025-12-01 → NF 2025-12-08 | 11 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='LUAN' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-01'::DATE, '2025-12-08'::DATE, 'Entregue', NULL, 0.0, 'Aba: 01.12.25 | NF: 2025-12-08');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,2,10);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-29'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- LUAN | pedido 2026-03-30 → NF 2026-02-06 | 11 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='LUAN' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-30'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-30'::DATE, '2026-02-06'::DATE, 'Entregue', '30-45-60', 0.0, 'Aba: 30.03.26 | NF: 2026-02-06');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='120' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 00',25.40,6.5,6,0);
    SELECT id INTO v_prod_id FROM products WHERE code='121' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 0',25.40,8.25,6,1);
    SELECT id INTO v_prod_id FROM products WHERE code='122' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 02',25.40,8.5,6,2);
    SELECT id INTO v_prod_id FROM products WHERE code='123' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',25.40,8.9,6,3);
    SELECT id INTO v_prod_id FROM products WHERE code='124' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',25.40,12.0,6,4);
    SELECT id INTO v_prod_id FROM products WHERE code='125' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',25.40,14.2,6,5);
    SELECT id INTO v_prod_id FROM products WHERE code='126' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 10',25.40,14.5,6,6);
    SELECT id INTO v_prod_id FROM products WHERE code='127' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 12',25.40,16.9,6,7);
    SELECT id INTO v_prod_id FROM products WHERE code='128' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 14',25.40,17.5,6,8);
    SELECT id INTO v_prod_id FROM products WHERE code='129' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 16',25.40,19.9,6,9);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET  (10 + 1)',25.40,14.99,10,10);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-05-06'::DATE, 304.26)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-05-21'::DATE, 304.26)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-06-05'::DATE, 304.26)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MANU (MURTA) | pedido 2025-11-21 → NF 2025-11-21 | 52 itens | 5 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MANU (MURTA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-21'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-21'::DATE, '2025-11-21'::DATE, 'Entregue', 'BOLETOS', 0.0, 'Aba: 21.11 | NF: 2025-11-21');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,6,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,4,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,4,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,4,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,3,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,6,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,6,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,6,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,6,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,6,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,2,43);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M  ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,2,44);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G  ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,2,45);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG  ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,46);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,2,47);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,2,48);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,3,49);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G ( A ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,3,50);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,8,51);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-06'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-21'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-02-05'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2026-02-20'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_5', v_order_id, 5, '2206-03-06'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MANU (MURTA) | pedido 2026-02-12 → NF 2026-02-24 | 3 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MANU (MURTA)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-12'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-12'::DATE, '2026-02-24'::DATE, 'Entregue', 'BOLETO 30 DD', 0.0, 'Aba: 12.02.26 | NF: 2026-02-24');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,4,1);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,4,2);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-03-26'::DATE, 461.0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MANOELA | pedido 2025-09-15 → NF 2025-09-15 | 28 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MANOELA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-15'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-15'::DATE, '2025-09-15'::DATE, 'Entregue', NULL, 0.0, 'Aba: 15.09 | NF: 2025-09-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAÇAO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),42.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.7,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,27);

  END IF;

  -- AGROPECUARIA MANOELA | pedido 2026-01-07 → NF 2026-01-16 | 15 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MANOELA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-16'::DATE, 'Entregue', 'PAGAMENTO COM CHEQUE VENC. DIA', 0.0, 'Aba: 07.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,14);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-16'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MANOELA | pedido 2026-03-09 → NF 2026-04-06 | 10 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MANOELA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-09'::DATE, '2026-04-06'::DATE, 'Entregue', NULL, 0.0, 'Aba: 09.03.26 | NF: 2026-04-06');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='111' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',15.70,26.9,1,0);
    SELECT id INTO v_prod_id FROM products WHERE code='112' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',16.70,29.9,1,1);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='114' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',21.20,39.9,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='115' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',24.20,46.9,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='116' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',25.40,53.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,2,6);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,2,7);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,2,8);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET (10 + 1)',25.40,14.99,10,9);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-05-06'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA RECANTO DOS ANIMAIS(MARCIO) | pedido 2025-11-14 → NF 2025-11-14 | 23 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA RECANTO DOS ANIMAIS(MARCIO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-14'::DATE, '2025-11-14'::DATE, 'Entregue', NULL, 0.0, 'Aba: 14.11.25 | NF: 2025-11-14');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,22);

  END IF;

  -- AGROPECUARIA RECANTO DOS ANIMAIS(MARCIO) | pedido 2026-01-26 → NF 2026-01-26 | 29 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA RECANTO DOS ANIMAIS(MARCIO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-26'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-26'::DATE, '2026-01-26'::DATE, 'Entregue', NULL, 0.0, 'Aba: 26.01.26 | NF: 2026-01-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,5,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,28);

  END IF;

  -- MEIA PRAIA | pedido 2025-09-10 → NF 2025-09-10 | 45 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='MEIA PRAIA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-10'::DATE, '2025-09-10'::DATE, 'Entregue', 'pagamentos', 0.0, 'Aba: PEDIDO 10.09.2025 | NF: 2025-09-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,8,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,8,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.0,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.000000000000004,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.15,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1(  )PINTADA Nº1( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,6,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2(  )PINTADA Nº2(X   )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3(  )PINTADA Nº3( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4(  )PINTADA Nº4( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5(  )PINTADA Nº5( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6(  )PINTADA Nº6( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9(  )PINTADA Nº9( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,3,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10(   )PINTADA Nº10( X  )',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,2,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,2,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,2,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,2,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,2,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 02',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,4,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.0,4,43);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.2,4,44);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-10-10'::DATE, 434.67)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-10-20'::DATE, 434.67)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2025-11-04'::DATE, 434.67)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2025-11-14'::DATE, 434.67)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- MEIA PRAIA | pedido 2025-12-15 → NF 2025-12-15 | 29 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='MEIA PRAIA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-15'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-15'::DATE, '2025-12-15'::DATE, 'Entregue', NULL, 0.0, 'Aba: 15.12 | NF: 2025-12-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,7,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.9,4,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,6,28);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-15'::DATE, 290.42)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-30'::DATE, 290.42)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-02-13'::DATE, 290.42)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2026-02-27'::DATE, 290.42)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- MEIA PRAIA | pedido 2026-03-09 → NF 2026-03-09 | 31 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='MEIA PRAIA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-09'::DATE, '2026-03-09'::DATE, 'Entregue', NULL, 0.0, 'Aba: 09.03.26 | NF: 2026-03-09');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,5,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.9,3,2);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,5,4);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.9,2,5);
    SELECT id INTO v_prod_id FROM products WHERE code='OO7' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',6.85,12.9,4,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O18' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 N. P',7.50,12.9,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O19' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº M',7.85,13.6,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O20' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº G',7.99,13.9,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O31' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº GG',6.60,39.9,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,2,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,3,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,2,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O41' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',10.50,16.1,2,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O44' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA',11.90,18.3,1,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.7,3,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O56' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',2.40,14.9,2,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O57' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO SEGURANÇA PET NYLON FITA 25',6.21,10.5,2,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O61' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',18.84,27.9,3,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O62' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',19.89,29.9,1,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O80' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',7.99,10.9,3,22);
    SELECT id INTO v_prod_id FROM products WHERE code='O81' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',9.58,11.66,6,23);
    SELECT id INTO v_prod_id FROM products WHERE code='O82' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',13.15,15.6,6,24);
    SELECT id INTO v_prod_id FROM products WHERE code='O85' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0',2.20,3.5,6,25);
    SELECT id INTO v_prod_id FROM products WHERE code='O87' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 2',2.20,3.5,6,26);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,2,27);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,1,28);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,2,29);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET (10 + 1)',25.40,14.99,10,30);

  END IF;

  -- AGROPECUARIA MORRETES | pedido 2025-10-01 → NF 2025-10-03 | 22 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MORRETES' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-01'::DATE, '2025-10-03'::DATE, 'Entregue', NULL, 0.0, 'Aba: 01.10 | NF: 2025-10-03');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,2,21);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-03'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MORRETES | pedido 2025-12-01 → NF 2025-12-15 | 26 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MORRETES' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-01'::DATE, '2025-12-15'::DATE, 'Entregue', NULL, 0.0, 'Aba: 01.12.25 | NF: 2025-12-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,6,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,6,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,6,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,25);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-15'::DATE, 1201.0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-30'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MORRETES | pedido 2026-03-03 → NF 2026-03-16 | 26 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MORRETES' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-03'::DATE, '2026-03-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 03.03 | NF: 2026-03-16');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,3,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.9,2,2);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,2,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,2,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O45' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',15.80,24.9,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O46' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.80,26.9,1,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.7,4,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O60' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº G',18.84,42.9,1,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O84' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 00',2.20,3.5,6,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O85' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0',2.20,3.5,6,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O86' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 1',2.20,3.5,6,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O90' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 5',2.68,4.0,6,19);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,4,20);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,2,21);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,2,22);
    SELECT id INTO v_prod_id FROM products WHERE code='110' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',12.90,14.5,1,23);
    SELECT id INTO v_prod_id FROM products WHERE code='118' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',25.40,43.9,1,24);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET',25.40,14.99,3,25);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-16'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-05-01'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON | pedido 2025-10-03 → NF - | 4 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-03'::DATE, NULL, 'Entregue', NULL, 0.0, 'Aba: 03.10 | NF: -');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,5,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,5,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.9,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,10,3);

  END IF;

  -- AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON | pedido 2025-11-04 → NF 2025-11-08 | 30 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-04'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-04'::DATE, '2025-11-08'::DATE, 'Entregue', NULL, 0.0, 'Aba: 04.11 | NF: 2025-11-08');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,4,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,4,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 15 TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),5.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 20 TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,5,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,3,29);

  END IF;

  -- AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON | pedido 2025-12-16 → NF 2025-12-16 | 15 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-16'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-16'::DATE, '2025-12-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 16.12 | NF: 2025-12-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,6,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,6,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,6,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,6,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,6,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,6,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,6,14);

  END IF;

  -- AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON | pedido 2026-01-14 → NF 2026-01-26 | 29 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-14'::DATE, '2026-01-26'::DATE, 'Entregue', 'NOVO PIX PARA PAGAMENTO', 0.0, 'Aba: 14.01.26 | NF: 2026-01-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,8,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,8,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,6,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,8,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,8,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,12,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,12,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,6,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 6 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,6,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,6,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 12MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 12MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.8,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 12MM X 40 COM AMORT.',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 12MM X 60 COM AMORT.',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.3,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 14 MM C/ 40 CM COM AMORT.',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.3,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 14 MM C/ 60 CM COM AMORT.',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.7,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,4,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET POLIESTER FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.9,10,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,8,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,4,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,28);

  END IF;

  -- AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON | pedido 2026-03-02 → NF 2026-03-13 | 9 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-02'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-02'::DATE, '2026-03-13'::DATE, 'Entregue', NULL, 0.0, 'Aba: 02.03.26 | NF: 2026-03-13');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='O18' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 N. P',7.50,12.9,4,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O23' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº G',9.90,17.5,6,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O24' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº P',10.90,19.9,4,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O25' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº M',11.90,21.9,6,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,4,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,3,5);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,6,6);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,4,7);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET  (10 + 1)',25.40,14.99,20,8);

  END IF;

  -- AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON | pedido 2026-03-13 → NF 2026-03-13 | 11 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MULTI AGRO(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-13'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-13'::DATE, '2026-03-13'::DATE, 'Entregue', 'PAGAMENTO A VISTA', 0.0, 'Aba: 13.03.26 | NF: 2026-03-13');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='120' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 00',25.40,6.5,15,0);
    SELECT id INTO v_prod_id FROM products WHERE code='121' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 0',25.40,6.99,10,1);
    SELECT id INTO v_prod_id FROM products WHERE code='122' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 02',25.40,7.7,15,2);
    SELECT id INTO v_prod_id FROM products WHERE code='123' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',25.40,8.9,10,3);
    SELECT id INTO v_prod_id FROM products WHERE code='124' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',25.40,9.9,24,4);
    SELECT id INTO v_prod_id FROM products WHERE code='125' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',25.40,12.9,36,5);
    SELECT id INTO v_prod_id FROM products WHERE code='126' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 10',25.40,13.9,36,6);
    SELECT id INTO v_prod_id FROM products WHERE code='127' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 12',25.40,15.5,36,7);
    SELECT id INTO v_prod_id FROM products WHERE code='128' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 14',25.40,16.9,24,8);
    SELECT id INTO v_prod_id FROM products WHERE code='129' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 16',25.40,17.9,18,9);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET  (10 + 1)',25.40,14.99,30,10);

  END IF;

  -- AGROPECUARIA MUNDO PET (ITAJAI) | pedido 2025-11-07 → NF 2025-11-07 | 4 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MUNDO PET (ITAJAI)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-07'::DATE, '2025-11-07'::DATE, 'Entregue', NULL, 0.0, 'Aba: 07.11 | NF: 2025-11-07');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,10,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,10,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,10,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,3);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-09'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA MUNDO PET (ITAJAI) | pedido 2026-02-03 → NF 2026-02-10 | 12 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA MUNDO PET (ITAJAI)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-03'::DATE, '2026-02-10'::DATE, 'Entregue', '30-45', 0.0, 'Aba: 03.02.26 | NF: 2026-02-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,8,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,10,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON NEOPRENE TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON NEOPRENE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),42.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG GRANDE',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,3,11);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-03-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-25'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA NP | pedido 2025-10-08 → NF 2025-10-15 | 56 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA NP' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-08'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-08'::DATE, '2025-10-15'::DATE, 'Entregue', '25-35-45-60', 0.0, 'Aba: 08.10 | NF: 2025-10-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,4,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.4,3,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,4,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,3,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,4,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,4,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,3,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,4,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,3,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,3,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,1,43);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,44);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,45);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.0,3,46);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.5,3,47);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,48);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,4,49);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,50);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.0,3,51);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,52);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,53);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,54);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,55);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-10'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-11-19'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2025-11-30'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2025-12-15'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA NP | pedido 2025-10-08 → NF 2025-10-15 | 56 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA NP' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-08'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-08'::DATE, '2025-10-15'::DATE, 'Entregue', '25-35-45-60', 0.0, 'Aba: 08.10 | NF: 2025-10-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,4,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA REGUL POLIESTER FITA 25 TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.4,3,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,4,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,3,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,4,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,4,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,3,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,4,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,3,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,3,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,3,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,1,43);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,44);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,45);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.0,3,46);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.5,3,47);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,48);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,4,49);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,50);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.0,3,51);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,52);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,53);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,54);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,55);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-10'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-11-19'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2025-11-30'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2025-12-15'::DATE, 416.61)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA NUNES - CAMBORIU | pedido 2025-10-23 → NF 2025-10-23 | 37 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA NUNES - CAMBORIU' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-23'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-23'::DATE, '2025-10-23'::DATE, 'Entregue', NULL, 0.0, 'Aba: 23.10 | NF: 2025-10-23');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,2,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,2,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,2,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,2,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,36);

  END IF;

  -- AGROPECUARIA PAIVA | pedido 2025-12-10 → NF 2025-12-10 | 10 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAIVA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-10'::DATE, '2025-12-10'::DATE, 'Entregue', NULL, 0.0, 'Aba: 10.12 | NF: 2025-12-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,4,9);

  END IF;

  -- AGROPECUARIA PAIVA | pedido 2026-02-25 → NF 2026-03-03 | 9 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAIVA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-25'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-25'::DATE, '2026-03-03'::DATE, 'Entregue', NULL, 0.0, 'Aba: 25.02.26 | NF: 2026-03-03');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO2' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',4.95,9.9,3,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,5,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,5,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O13' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 3',6.90,12.9,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,5,5);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,5,6);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,5,7);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,4,8);

  END IF;

  -- AGROPECUARIA PAULINIA(CAMBORIU) EDSON | pedido 2025-10-06 → NF 2025-10-06 | 36 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAULINIA(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-06'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-06'::DATE, '2025-10-06'::DATE, 'Entregue', NULL, 0.0, 'Aba: 06.10 | NF: 2025-10-06');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,6,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,6,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,4,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,4,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.9,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,3,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,2,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,2,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,2,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.0,4,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,4,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,4,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,4,35);

  END IF;

  -- AGROPECUARIA PAULINIA(CAMBORIU) EDSON | pedido 2026-01-14 → NF 2026-01-26 | 26 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAULINIA(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-14'::DATE, '2026-01-26'::DATE, 'Entregue', 'NOVO PIX PARA PAGAMENTO', 0.0, 'Aba: 14.01.26 | NF: 2026-01-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,5,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,5,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,5,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),38.9,2,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1 M C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,4,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,4,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,6,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,6,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,6,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,6,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,6,25);

  END IF;

  -- AGROPECUARIA PAULINIA(CAMBORIU) EDSON | pedido 2026-03-02 → NF 2026-03-02 | 11 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAULINIA(CAMBORIU) EDSON' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-02'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-02'::DATE, '2026-03-02'::DATE, 'Entregue', NULL, 0.0, 'Aba: 02.03.26 | NF: 2026-03-02');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='120' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 00',25.40,6.5,15,0);
    SELECT id INTO v_prod_id FROM products WHERE code='121' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 0',25.40,6.99,10,1);
    SELECT id INTO v_prod_id FROM products WHERE code='122' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 02',25.40,7.7,10,2);
    SELECT id INTO v_prod_id FROM products WHERE code='123' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 04',25.40,8.9,20,3);
    SELECT id INTO v_prod_id FROM products WHERE code='124' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 06',25.40,9.9,15,4);
    SELECT id INTO v_prod_id FROM products WHERE code='125' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 08',25.40,12.9,20,5);
    SELECT id INTO v_prod_id FROM products WHERE code='126' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 10',25.40,13.9,5,6);
    SELECT id INTO v_prod_id FROM products WHERE code='127' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 12',25.40,15.5,3,7);
    SELECT id INTO v_prod_id FROM products WHERE code='128' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 14',25.40,16.9,3,8);
    SELECT id INTO v_prod_id FROM products WHERE code='129' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'SUETER TAM 16',25.40,17.9,4,9);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET ( 10 + 1)',25.40,14.99,10,10);

  END IF;

  -- AGROPECUARIA PAULISTA | pedido 2025-10-13 → NF 2025-10-13 | 19 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAULISTA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-13'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-13'::DATE, '2025-10-13'::DATE, 'Entregue', NULL, 0.0, 'Aba: 13.10 | NF: 2025-10-13');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.9,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADO Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,18);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-18'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PAULISTA | pedido 2025-12-05 → NF 2025-12-15 | 31 itens | 3 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAULISTA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-05'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-05'::DATE, '2025-12-15'::DATE, 'Entregue', NULL, 0.0, 'Aba: 05.12.25 | NF: 2025-12-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,6,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,6,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,6,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,4,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,4,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,30);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-30'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-02-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PAULISTA | pedido 2026-03-02 → NF 2026-03-13 | 35 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PAULISTA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-02'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-02'::DATE, '2026-03-13'::DATE, 'Entregue', NULL, 0.0, 'Aba: 02.03.26 | NF: 2026-03-13');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,4,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,4,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O21' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº P',9.54,16.5,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,3,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O23' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº G',9.90,17.5,3,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,2,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,2,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,2,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O41' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',10.50,16.1,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O42' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM C/ MOLA',10.30,15.8,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,1,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O44' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA',11.90,18.3,1,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O45' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',15.80,24.9,1,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O46' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.80,26.9,1,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O47' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',10.60,14.9,2,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O53' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT',2.40,4.7,10,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O60' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº G',18.84,42.9,1,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O66' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',3.05,4.9,6,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O67' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',4.20,6.3,6,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O68' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',4.38,6.9,3,22);
    SELECT id INTO v_prod_id FROM products WHERE code='O69' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',5.70,9.4,4,23);
    SELECT id INTO v_prod_id FROM products WHERE code='O70' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',7.99,10.9,4,24);
    SELECT id INTO v_prod_id FROM products WHERE code='O85' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0',2.20,3.5,6,25);
    SELECT id INTO v_prod_id FROM products WHERE code='O88' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3',2.20,3.5,6,26);
    SELECT id INTO v_prod_id FROM products WHERE code='O89' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',2.68,4.0,6,27);
    SELECT id INTO v_prod_id FROM products WHERE code='O97' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA ELAST. PARA GATOS TAM. ÚNICO',2.10,3.8,10,28);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,1,29);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,2,30);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,1,31);
    SELECT id INTO v_prod_id FROM products WHERE code='110' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',12.90,14.5,2,32);
    SELECT id INTO v_prod_id FROM products WHERE code='117' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',2.00,32.9,1,33);
    SELECT id INTO v_prod_id FROM products WHERE code='119' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',25.40,54.9,1,34);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-13'::DATE, 262.45)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-04-28'::DATE, 262.45)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-05-13'::DATE, 262.45)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2026-05-28'::DATE, 262.45)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PET LIKE | pedido 2025-10-02 → NF 2025-10-07 | 20 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PET LIKE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-02'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-02'::DATE, '2025-10-07'::DATE, 'Entregue', 'BOLETO ANEXO', 0.0, 'Aba: 02.10 | NF: 2025-10-07');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 8 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.0,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.7,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,19);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-07'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PET LIKE | pedido 2025-12-01 → NF 2025-12-09 | 31 itens | 4 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PET LIKE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-01'::DATE, '2025-12-09'::DATE, 'Entregue', NULL, 0.0, 'Aba: 01.12.25 | NF: 2025-12-09');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,6,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,6,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,5,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,4,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,5,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG g',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,2,30);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-08'::DATE, 330.62)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-23'::DATE, 330.62)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_3', v_order_id, 3, '2026-02-07'::DATE, 330.62)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_4', v_order_id, 4, '2026-02-22'::DATE, 330.62)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PET LIKE | pedido 2026-02-03 → NF 2026-02-10 | 29 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PET LIKE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-03'::DATE, '2026-02-10'::DATE, 'Entregue', 'PRAZO 30 /45 DIAS', 0.0, 'Aba: 03.02.26 | NF: 2026-02-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER  FITA 15   C/  1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER  FITA 20  C/  1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,2,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,2,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,2,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,2,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,2,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,28);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-03-10'::DATE, 303.85)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-25'::DATE, 303.85)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PET LIKE | pedido 2026-03-03 → NF 2026-03-13 | 8 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PET LIKE' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-03'::DATE, '2026-03-13'::DATE, 'Entregue', 'BOLETO 30 DIAS', 0.0, 'Aba: 03.03.26 | NF: 2026-03-13');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='O18' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 N. P',7.50,12.9,4,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O19' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº M',7.85,13.6,4,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O25' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº M',11.90,21.9,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,2,4);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET ( 10 + 1 )',25.40,14.99,10,5);
    SELECT id INTO v_prod_id FROM products WHERE code='131' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG PEQUENO (FALTA ENTREGAR 1 )',25.40,14.99,2,6);
    SELECT id INTO v_prod_id FROM products WHERE code='132' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG GRANDE',25.40,16.99,2,7);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-13'::DATE, 391.86)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PIÇARRAS | pedido 2026-02-03 → NF 2026-02-03 | 25 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PIÇARRAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-03'::DATE, '2026-02-03'::DATE, 'Entregue', 'DESCONTO A VISTA 5%', 40.435, 'Aba: 03.02.26 | NF: 2026-02-03');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,4,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,4,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA PARA GATOS TAM. ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,10,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,24);

  END IF;

  -- AGROPECUARIA PRO CAMPO(ALICIO) | pedido 2025-12-15 → NF 2025-12-15 | 44 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PRO CAMPO(ALICIO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-15'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-15'::DATE, '2025-12-15'::DATE, 'Entregue', NULL, 0.0, 'Aba: 15.12 | NF: 2025-12-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,7,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,3,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,1,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM  C/40 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.8,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,2,32);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,33);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.9,2,34);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER    C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.9,3,35);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.6,1,36);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE POLIESTER DUPLA   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,37);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CINTO DE SEGURANÇA PET FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),10.5,3,38);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,1,39);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,2,40);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),30.9,2,41);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,42);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,2,43);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-01-15'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA PRO CAMPO(ALICIO) | pedido 2026-02-17 → NF 2026-02-25 | 32 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA PRO CAMPO(ALICIO)' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-02-17'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-02-17'::DATE, '2026-02-25'::DATE, 'Entregue', NULL, 0.0, 'Aba: 17.02.26 | NF: 2026-02-25');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.6,1,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.6,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO9' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 00',6.90,12.9,2,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O13' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 3',6.90,12.9,2,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O14' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 4',6.90,12.9,2,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O15' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,1,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,2,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O19' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº M',7.85,13.6,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,4,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O29' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº M',6.60,34.9,2,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O30' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  DUPLO FITA 40 Nº G',6.60,36.9,2,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,2,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,1,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,2,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O40' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',9.40,14.4,1,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O43' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA',10.80,16.6,1,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O46' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',16.80,26.9,1,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O59' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº M',18.84,41.9,1,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,3,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O99' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 4',4.25,7.0,4,22);
    SELECT id INTO v_prod_id FROM products WHERE code='100' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 5',4.35,7.5,2,23);
    SELECT id INTO v_prod_id FROM products WHERE code='101' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 6',4.50,7.6,2,24);
    SELECT id INTO v_prod_id FROM products WHERE code='105' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 10',5.65,12.0,3,25);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,1,26);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,3,27);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,2,28);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,1,29);
    SELECT id INTO v_prod_id FROM products WHERE code='113' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',17.70,32.9,1,30);
    SELECT id INTO v_prod_id FROM products WHERE code='114' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',21.20,39.9,1,31);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-03-25'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA QUATRO PATAS | pedido 2025-09-10 → NF 2025-09-10 | 18 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA QUATRO PATAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-10'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-10'::DATE, '2025-09-10'::DATE, 'Entregue', NULL, 0.0, 'Aba: 10.09.2025 | NF: 2025-09-10');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),15.15,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA POLIESTER DUPLA 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.99,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE NYLON TUBOLAR   C/   1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.7,2,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G  (FALTA ENTREGAR)',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,2,17);

  END IF;

  -- AGROPECUARIA QUATRO PATAS | pedido 2025-11-14 → NF 2025-11-26 | 33 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA QUATRO PATAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-11-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-11-14'::DATE, '2025-11-26'::DATE, 'Entregue', NULL, 0.0, 'Aba: 14.11 | NF: 2025-11-26');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.5,1,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.4,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,3,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,3,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.9,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COUR NATURAL Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,4,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,30);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,31);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.99,3,32);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-22'::DATE, 695.0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-01-10'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA QUATRO PATAS | pedido 2026-01-07 → NF 2026-01-16 | 25 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA QUATRO PATAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 07.01.26 | NF: 2026-01-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,2,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),36.9,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),2.8,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.35,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE POLIESTER FITA 15 MM Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.0,6,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,2,24);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-12'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-03'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA QUATRO PATAS | pedido 2026-03-09 → NF 2026-03-18 | 13 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA QUATRO PATAS' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-09'::DATE, '2026-03-18'::DATE, 'Entregue', 'PAGAMENTO VIA PIX', 0.0, 'Aba: 09.03.26 | NF: 2026-03-18');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,1,0);
    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,1,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,2,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O23' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº G',9.90,17.5,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O26' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 25 Nº G',12.90,23.5,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,3,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O36' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',5.15,8.5,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O40' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',9.40,14.4,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O44' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA',11.90,18.3,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O45' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',15.80,24.9,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,2,12);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-18'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA SEU JOÃO | pedido 2025-10-08 → NF 2025-10-16 | 8 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SEU JOÃO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-08'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-08'::DATE, '2025-10-16'::DATE, 'Entregue', NULL, 0.0, 'Aba: 08.10 | NF: 2025-10-16');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,10,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,6,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,6,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,6,7);

  END IF;

  -- AGROPECUARIA SEU JOÃO | pedido 2025-12-16 → NF 2025-12-04 | 7 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SEU JOÃO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-16'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-16'::DATE, '2025-12-04'::DATE, 'Entregue', 'A VISTA', 0.0, 'Aba: 16.12 | NF: 2025-12-04');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,3,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,6,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.7,6,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,6,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,3,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,4,6);

  END IF;

  -- AGROPECUARIA SEU JOÃO | pedido 2026-01-07 → NF 2026-01-09 | 11 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SEU JOÃO' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-07'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-07'::DATE, '2026-01-09'::DATE, 'Entregue', 'A VISTA', 0.0, 'Aba: 07.01 | NF: 2026-01-09');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,6,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,6,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,6,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 40 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.5,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,4,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,6,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA PARA GATOS TAM. ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.8,10,10);

  END IF;

  -- AGROPECUARIA SOUZA | pedido 2025-09-18 → NF 2025-09-18 | 10 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SOUZA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-09-18'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-09-18'::DATE, '2025-09-18'::DATE, 'Entregue', NULL, 0.0, 'Aba: 18.09.25 | NF: 2025-09-18');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,5,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),27.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,9);

  END IF;

  -- AGROPECUARIA SOUZA | pedido 2025-12-01 → NF 2025-12-08 | 6 itens | 1 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SOUZA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-12-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-12-01'::DATE, '2025-12-08'::DATE, 'Entregue', NULL, 0.0, 'Aba: 01.12.25 | NF: 2025-12-08');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,2,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,1,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PIPI DOG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.99,1,5);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-12-23'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA SOUZA | pedido 2026-03-03 → NF 2026-03-16 | 21 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA SOUZA' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-03'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-03'::DATE, '2026-03-16'::DATE, 'Entregue', 'PRAZO 30/45 PIX AGENDADO', 0.0, 'Aba: 03.03.26 | NF: 2026-03-16');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO1' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',4.95,9.9,3,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,3,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,4,2);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,4,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O33' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 5',6.60,19.9,4,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O34' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 25 Nº 6',6.60,25.9,3,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O62' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON DUPLO REFORÇADO TAM M',19.89,29.9,1,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O85' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0',2.20,3.5,4,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O88' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3',2.20,3.5,4,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O89' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',2.68,4.0,4,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O97' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA ELAST. PARA GATOS TAM. ÚNICO',2.10,3.8,10,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O98' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',2.10,12.9,2,11);
    SELECT id INTO v_prod_id FROM products WHERE code='100' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 5',4.35,7.5,1,12);
    SELECT id INTO v_prod_id FROM products WHERE code='101' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 6',4.50,7.6,1,13);
    SELECT id INTO v_prod_id FROM products WHERE code='102' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA DE NYLON DUPLA COSTURADA Nº 7',5.30,8.9,1,14);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,4,15);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,3,16);
    SELECT id INTO v_prod_id FROM products WHERE code='108' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',8.65,8.5,4,17);
    SELECT id INTO v_prod_id FROM products WHERE code='109' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',9.65,9.5,2,18);
    SELECT id INTO v_prod_id FROM products WHERE code='110' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',12.90,14.5,3,19);
    SELECT id INTO v_prod_id FROM products WHERE code='130' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'MANTA PET',25.40,14.99,2,20);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-16'::DATE, 334.89)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-05-01'::DATE, 334.89)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA TRADIÇÃO CAMBORIU | pedido 2025-10-01 → NF 2025-10-03 | 25 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA TRADIÇÃO CAMBORIU' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-01'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-01'::DATE, '2025-10-03'::DATE, 'Entregue', '20-30-40', 0.0, 'Aba: 01.10.2025 | NF: 2025-10-03');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,4,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,3,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,3,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,3,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,3,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.9,3,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,4,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,4,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,4,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,4,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,3,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,3,24);

  END IF;

  -- AGROPECUARIA TRADIÇÃO CAMBORIU | pedido 2026-01-14 → NF 2026-01-14 | 22 itens | 0 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA TRADIÇÃO CAMBORIU' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-14'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-14'::DATE, '2026-01-14'::DATE, 'Entregue', 'BOLETO NF 30/45', 0.0, 'Aba: 14.01.26 | NF: 2026-01-14');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.9,2,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.5,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),23.5,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,4,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.2,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.6,3,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.2,3,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO NATURAL Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.9,4,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL COURO NATURAL Nº10',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,4,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),7.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 5 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.5,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,1,21);

  END IF;

  -- AGROPECUARIA VALENT´S | pedido 2025-10-13 → NF 2025-10-17 | 31 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA VALENT´S' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2025-10-13'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2025-10-13'::DATE, '2025-10-17'::DATE, 'Entregue', NULL, 0.0, 'Aba: 13.10 | NF: 2025-10-17');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,4,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NYLON FITA 20 NR 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,5,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.9,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),34.9,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),19.9,1,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,3,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 8 MM C/ 1 METRO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),8.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.4,1,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 1 MT',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.1,2,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.6,1,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA DE CORDA 14 MM C/ 1 MT  COM MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),18.3,1,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),24.9,1,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.0,3,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.65,3,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),11.0,3,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº7',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),13.6,2,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,2,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº9',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),17.9,2,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),3.5,6,26);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER GATO TAM ÚNICO',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,27);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,1,28);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,29);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,30);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2025-11-17'::DATE, 437.22)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2025-12-02'::DATE, 437.22)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA VALENT´S | pedido 2026-01-09 → NF 2026-01-15 | 27 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA VALENT´S' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-01-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-01-09'::DATE, '2026-01-15'::DATE, 'Entregue', 'BOLETO ANEXO A NF', 0.0, 'Aba: 09.01.26 | NF: 2026-01-15');
    SELECT lastval() INTO v_order_id;

    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,0);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,1);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,2,2);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,3);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,3,4);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),9.6,1,5);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,6);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,1,7);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),12.9,2,8);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),21.5,1,9);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),16.5,2,10);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),25.9,2,11);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.9,1,12);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº8',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.8,4,13);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 5',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,6,14);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 6',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),4.5,6,15);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),6.5,2,16);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 7 FITA 30',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),14.5,2,17);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),26.9,1,18);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),29.9,1,19);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,20);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM GG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),39.9,1,21);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),46.9,1,22);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'ALMOFADA COM SILICONE TAM EGGG',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),53.9,1,23);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY P',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),32.9,1,24);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY M',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),43.9,1,25);
    v_prod_id := NULL;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'CAMA LEDY G',COALESCE((SELECT cost FROM products WHERE id=v_prod_id),0),54.9,1,26);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-02-16'::DATE, 40910.0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-03-06'::DATE, 409.1)
    ON CONFLICT (id) DO NOTHING;
  END IF;

  -- AGROPECUARIA VALENT´S | pedido 2026-03-09 → NF 2026-03-17 | 26 itens | 2 parcelas
  SELECT id INTO v_client_id FROM clients WHERE name='AGROPECUARIA VALENT´S' LIMIT 1;
  IF v_client_id IS NOT NULL AND NOT EXISTS (
    SELECT 1 FROM orders WHERE client_id=v_client_id AND visit_date='2026-03-09'::DATE
  ) THEN
    INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
    VALUES (v_client_id, '2026-03-09'::DATE, '2026-03-17'::DATE, 'Entregue', 'PAGAMENTO 30/45 NO PIX', 0.0, 'Aba: 09.03.26 | NF: 2026-03-17');
    SELECT lastval() INTO v_order_id;

    SELECT id INTO v_prod_id FROM products WHERE code='OO3' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 1',4.95,9.9,2,0);
    SELECT id INTO v_prod_id FROM products WHERE code='OO4' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 2',4.95,9.9,2,1);
    SELECT id INTO v_prod_id FROM products WHERE code='OO5' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 3',4.95,9.9,1,2);
    SELECT id INTO v_prod_id FROM products WHERE code='OO6' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL DE NY TUBOLAR FITA 15 Nº 4',4.95,9.9,2,3);
    SELECT id INTO v_prod_id FROM products WHERE code='O10' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 0',6.90,12.9,1,4);
    SELECT id INTO v_prod_id FROM products WHERE code='O11' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 1',6.90,12.9,1,5);
    SELECT id INTO v_prod_id FROM products WHERE code='O12' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLYESTER  FITA 15 Nº 2',6.90,12.9,4,6);
    SELECT id INTO v_prod_id FROM products WHERE code='O15' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 15  Nº P',5.85,10.5,2,7);
    SELECT id INTO v_prod_id FROM products WHERE code='O16' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 20  Nº M',7.10,12.5,1,8);
    SELECT id INTO v_prod_id FROM products WHERE code='O17' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON  EM X  FITA 25  Nº G',12.20,21.5,1,9);
    SELECT id INTO v_prod_id FROM products WHERE code='O19' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº M',7.85,13.6,1,10);
    SELECT id INTO v_prod_id FROM products WHERE code='O20' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 15 Nº G',7.99,13.9,1,11);
    SELECT id INTO v_prod_id FROM products WHERE code='O21' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº P',9.54,16.5,2,12);
    SELECT id INTO v_prod_id FROM products WHERE code='O22' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER EM X FITA 20 Nº M',9.70,16.9,2,13);
    SELECT id INTO v_prod_id FROM products WHERE code='O32' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL POLIESTER DUPLO FITA 20 Nº 4',6.60,18.9,2,14);
    SELECT id INTO v_prod_id FROM products WHERE code='O60' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'PEITORAL NYLON NEOPREME Nº G',18.84,42.9,1,15);
    SELECT id INTO v_prod_id FROM products WHERE code='O74' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº1',1.67,2.69,2,16);
    SELECT id INTO v_prod_id FROM products WHERE code='O75' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº2',1.99,3.14,2,17);
    SELECT id INTO v_prod_id FROM products WHERE code='O78' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº5',4.38,6.9,4,18);
    SELECT id INTO v_prod_id FROM products WHERE code='O79' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COL. COURO PINTADA Nº6',5.70,9.4,3,19);
    SELECT id INTO v_prod_id FROM products WHERE code='O86' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 1',2.20,3.5,6,20);
    SELECT id INTO v_prod_id FROM products WHERE code='O87' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 2',2.20,3.5,6,21);
    SELECT id INTO v_prod_id FROM products WHERE code='O88' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3',2.20,3.5,6,22);
    SELECT id INTO v_prod_id FROM products WHERE code='O89' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA NYLON LISA FITA 20MM  Nº 4',2.68,4.0,6,23);
    SELECT id INTO v_prod_id FROM products WHERE code='106' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 3 FITA 20',6.65,6.5,3,24);
    SELECT id INTO v_prod_id FROM products WHERE code='107' LIMIT 1;
    INSERT INTO order_items (order_id,product_id,description,cost,price,qty,sort_order)
    VALUES (v_order_id,v_prod_id,'COLEIRA POLIESTER DUPLA NR 4 FITA 20',7.65,7.9,4,25);

    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_1', v_order_id, 1, '2026-04-17'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
    INSERT INTO payments (id, order_id, parcel, paid_at, value_paid)
    VALUES (v_order_id::TEXT || '_2', v_order_id, 2, '2026-05-04'::DATE, 0)
    ON CONFLICT (id) DO NOTHING;
  END IF;

END $$;

COMMIT;

-- ================================================================
-- Verificar:
-- SELECT COUNT(*) FROM clients;      -- ~49
-- SELECT COUNT(*) FROM products;     -- ~132
-- SELECT COUNT(*) FROM orders;       -- ~115
-- SELECT COUNT(*) FROM order_items;
-- SELECT COUNT(*) FROM payments;     -- ~131 parcelas
-- ================================================================