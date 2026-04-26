-- ═══════════════════════════════════════════════
-- ITADOG — Import localStorage (sem duplicatas)
-- 47 clientes · 118 pedidos · 115 visitas · 93 produtos
-- ═══════════════════════════════════════════════

-- ─── 1. CLIENTES ───────────────────────────────────
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'A CASA DO PET BAL. CAMBORIÚ', '', 'Balneário Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'A CASA DO PET BAL. CAMBORIÚ');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA AGRO RURAL (CAMBORIU)', '', 'Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA AGRO RURAL (CAMBORIU)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA AGROJEPE', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA AGROJEPE');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA AMARAL (BARRA VELHA)', '', 'Barra Velha', '', '', 15, 5, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA AMARAL (BARRA VELHA)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA BENTO', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA BENTO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA COELHO (ITAJAI)', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA COELHO (ITAJAI)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA CONSALNI - LUAN', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA COUTO (FABRICIO)', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA COUTO (FABRICIO)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DA PENHA', '', 'Penha', '', '', 15, 5, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DA PENHA');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DEDÉ CAMBORIU', '', 'Balneário Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DEDÉ CAMBORIU');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DO INDIO', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DO INDIO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DO ITU (JANAINA)', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DO ITU (JANAINA)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DO MANO', '', 'Piçarras', '', '', 15, 4, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DO MANO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DOM QUIRINO', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DOM QUIRINO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA DU CAMPO', '', 'Piçarras', '', '', 15, 4, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA DU CAMPO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA EDUARDO (NAVEGANTES)', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA ELAINE (ITAJAÍ)', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA ELAINE (ITAJAÍ)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA ELAINE (NAVEGANTES)', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA ELAINE (NAVEGANTES)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA FORMENTO', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA FORMENTO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA FRAN (FAZENDA)', '', 'Fazenda', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA FRAN (FAZENDA)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA GADOTTI', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA GADOTTI');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA GIOPET (ITAJAI)', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA GIOPET (ITAJAI)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA IMPERIO DAS RAÇÕES', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA IMPERIO DAS RAÇÕES');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA JOSIAS', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA JOSIAS');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA JOÃO (CENTRO NAVEGANTES)', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA JOÃO (CENTRO NAVEGANTES)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA MANU (MURTA)', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA MANU (MURTA)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA MANUELA', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA MANUELA');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA MEIA PRAIA', '', 'Penha', '', '', 15, 5, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA MORRETES', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA MORRETES');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA MUNDO PET (ITAJAI)', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA MUNDO PET (ITAJAI)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA NP', '', 'Balneário Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA NP');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA NUNES - CAMBORIU', '', 'Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA NUNES - CAMBORIU');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA PAIVA', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA PAIVA');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA PAULINIA (CAMBORIU)', '', 'Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA PAULISTA (NAVEGANTES)', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA PET LIKE', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA PET LIKE');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA PIÇARRAS', '', 'Piçarras', '', '', 15, 4, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA PIÇARRAS');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA PRO CAMPO (ALICIO)', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA PRO CAMPO (ALICIO)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA QUATRO PATAS', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)', '', 'Balneário Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA SEU JOÃO', '', 'Itajaí', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA SOUZA', '', 'Navegantes', '', '', 15, 2, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA SOUZA');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)', '', 'Barra Velha', '', '', 15, 5, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA TRADIÇÃO CAMBORIU', '', 'Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA TRADIÇÃO CAMBORIU');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA VALENT´S', '', '', '', '', 15, 1, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA VALENT´S');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA VERSONSET', '', 'Balneário Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA VERSONSET');
INSERT INTO clients (name, cnpj, city, phone, address, freq, day, notes)
SELECT 'AGROPECUARIA MULTI AGRO (CAMBORIU)', '', 'Camboriú', '', '', 15, 3, ''
WHERE NOT EXISTS (SELECT 1 FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)');

-- ─── 2. PRODUTOS ───────────────────────────────────
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO1', 'OO1', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO1');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO2', 'OO2', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO2');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO3', 'OO3', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO3');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO4', 'OO4', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO4');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO5', 'OO5', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO5');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO6', 'OO6', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO6');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO7', 'OO7', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO7');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO8', 'OO8', 'PEITORAL DE NYLON FITA 20 NR 5', 6.95, 12.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO8');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'OO9', 'OO9', 'PEITORAL POLYESTER FITA 15 Nº 00', 6.9, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'OO9');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O10', 'O10', 'PEITORAL POLYESTER FITA 15 Nº 0', 6.9, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O10');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O11', 'O11', 'PEITORAL POLYESTER FITA 15 Nº 1', 6.9, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O11');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O12', 'O12', 'PEITORAL POLYESTER FITA 15 Nº 2', 6.9, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O12');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O13', 'O13', 'PEITORAL POLYESTER FITA 15 Nº 3', 6.9, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O13');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O14', 'O14', 'PEITORAL POLYESTER FITA 15 Nº 4', 6.9, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O14');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O15', 'O15', 'PEITORAL NYLON EM X FITA 15 Nº P', 5.85, 10.5, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O15');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O16', 'O16', 'PEITORAL NYLON EM X FITA 20 Nº M', 7.1, 12.5, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O16');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O17', 'O17', 'PEITORAL NYLON EM X FITA 25 Nº G', 12.2, 21.5, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O17');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O18', 'O18', 'PEITORAL POLIESTER EM X FITA 15 N. P', 7.5, 12.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O18');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O19', 'O19', 'PEITORAL POLIESTER EM X FITA 15 Nº M', 7.85, 13.6, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O19');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O20', 'O20', 'PEITORAL POLIESTER EM X FITA 15 Nº G', 7.99, 13.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O20');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O21', 'O21', 'PEITORAL POLIESTER EM X FITA 20 Nº P', 9.54, 16.5, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O21');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O22', 'O22', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O22');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O23', 'O23', 'PEITORAL POLIESTER EM X FITA 20 Nº G', 9.9, 17.5, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O23');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O24', 'O24', 'PEITORAL POLIESTER EM X FITA 25 Nº P', 10.9, 19.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O24');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O25', 'O25', 'PEITORAL POLIESTER EM X FITA 25 Nº M', 11.9, 21.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O25');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O26', 'O26', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O26');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O29', 'O29', 'PEITORAL NYLON DUPLO FITA 40 Nº M', 6.6, 34.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O29');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O30', 'O30', 'PEITORAL NYLON DUPLO FITA 40 Nº G', 6.6, 36.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O30');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O31', 'O31', 'PEITORAL NYLON DUPLO FITA 40 Nº GG', 6.6, 39.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O31');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O32', 'O32', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O32');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O33', 'O33', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O33');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O34', 'O34', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O34');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O36', 'O36', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O36');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O38', 'O38', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O38');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O39', 'O39', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O39');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O43', 'O43', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O43');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O44', 'O44', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O44');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O45', 'O45', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O45');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O47', 'O47', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 'Guia', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O47');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O53', 'O53', 'GUIA DE NYLON TUBOLAR FITA 15 C/ 1 MT', 2.4, 4.5, 'Guia', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O53');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O54', 'O54', 'GUIA DE POLIESTER FITA 15 C/ 1 MT', 2.4, 6.5, 'Guia', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O54');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O55', 'O55', 'GUIA DE POLIESTER DUPLA C/ 60 CM', 2.4, 12.5, 'Guia', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O55');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O56', 'O56', 'GUIA DE POLIESTER DUPLA C/ 1 MT', 2.4, 14.5, 'Guia', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O56');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O58', 'O58', 'CINTO SEGURANÇA PET POLIESTER FITA 25', 7.2, 11.9, 'Outros', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O58');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O59', 'O59', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O59');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O60', 'O60', 'PEITORAL NYLON NEOPREME Nº G', 18.84, 42.9, 'Peitoral', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O60');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O65', 'O65', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O65');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O66', 'O66', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O66');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O67', 'O67', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O67');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O68', 'O68', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O68');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O69', 'O69', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O69');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O70', 'O70', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O70');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O71', 'O71', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O71');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O72', 'O72', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O72');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O73', 'O73', 'COL COUR NATURAL Nº10', 14.65, 18.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O73');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O77', 'O77', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O77');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O79', 'O79', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O79');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O80', 'O80', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O80');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O81', 'O81', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O81');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O82', 'O82', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O82');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O83', 'O83', 'COL. COURO PINTADA Nº10', 14.65, 18.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O83');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O50', 'O50', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 2.5, 5.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O50');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O51', 'O51', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 2.9, 6.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O51');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O52', 'O52', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 3.5, 8.9, 'Coleira', ARRAY['azul','rosa','preto','verm']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O52');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O97', 'O97', 'COLEIRA ELAST. PARA GATOS TAM. ÚNICO', 2.1, 3.8, 'Coleira', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O97');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT 'O98', 'O98', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 'Peitoral', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = 'O98');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '106', '106', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 'Coleira', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '106');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '107', '107', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 'Coleira', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '107');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '108', '108', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 'Coleira', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '108');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '109', '109', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 'Coleira', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '109');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '110', '110', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 'Coleira', ARRAY['azul','rosa']
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '110');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '111', '111', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 'Almofada', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '111');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '112', '112', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 'Almofada', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '112');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '113', '113', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 'Almofada', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '113');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '114', '114', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 'Almofada', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '114');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '115', '115', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 'Almofada', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '115');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '116', '116', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 'Almofada', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '116');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '117', '117', 'CAMA LEDY P', 2.0, 32.9, 'Cama', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '117');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '118', '118', 'CAMA LEDY M', 25.4, 43.9, 'Cama', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '118');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '119', '119', 'CAMA LEDY G', 25.4, 54.9, 'Cama', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '119');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '120', '120', 'SUETER TAM 00', 25.4, 6.5, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '120');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '121', '121', 'SUETER TAM 0', 25.4, 8.25, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '121');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '122', '122', 'SUETER TAM 02', 25.4, 8.5, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '122');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '123', '123', 'SUETER TAM 04', 25.4, 8.9, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '123');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '124', '124', 'SUETER TAM 06', 25.4, 12.0, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '124');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '125', '125', 'SUETER TAM 08', 25.4, 14.2, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '125');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '126', '126', 'SUETER TAM 10', 25.4, 14.5, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '126');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '127', '127', 'SUETER TAM 12', 25.4, 16.9, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '127');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '128', '128', 'SUETER TAM 14', 25.4, 17.5, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '128');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '129', '129', 'SUETER TAM 16', 25.4, 19.9, 'Suéter', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '129');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '130', '130', 'MANTA PET (10+1)', 25.4, 14.99, 'Outros', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '130');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '131', '131', 'PIPI DOG PEQUENO', 25.4, 14.99, 'Outros', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '131');
INSERT INTO products (id, code, description, cost, price, category, colors)
SELECT '132', '132', 'PIPI DOG GRANDE', 25.4, 16.99, 'Outros', ARRAY[]::TEXT[]
WHERE NOT EXISTS (SELECT 1 FROM products WHERE code = '132');

-- ─── 3. PEDIDOS + ITENS + VISITAS ─────────────────
DO $$
DECLARE
  _client_id BIGINT;
  _order_id  BIGINT;
  _exists    BOOLEAN;
BEGIN

  -- Pedido #1 — AGROPECUARIA AGROJEPE — 2025-06-25
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AGROJEPE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-06-25') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-06-25', '2025-06-25', 'Entregue', 'PRAZO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA C/ SILICONE TAM M', 0.0, 29.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA C/ SILICONE TAM G', 0.0, 32.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 00', 0.0, 6.5, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM  0', 0.0, 8.25, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 0.0, 8.5, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 0.0, 8.9, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 0.0, 12.0, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 0.0, 14.2, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 10', 0.0, 14.5, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 14', 0.0, 17.5, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET', 0.0, 14.99, 10, 0.0, '{}'::JSONB, 10);
    END IF;
  END IF;

  -- Pedido #2 — A CASA DO PET BAL. CAMBORIÚ — 2026-02-10
  SELECT id INTO _client_id FROM clients WHERE name = 'A CASA DO PET BAL. CAMBORIÚ';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: A CASA DO PET BAL. CAMBORIÚ';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-10', '2026-02-20', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 N. P', 7.5, 12.9, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº M', 7.85, 13.6, 5, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM C/ MOLA', 10.3, 15.8, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA ELAST. PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEIT. POLIESTER GATO TAM ÚNICO FITA 13 MM', 2.1, 12.9, 5, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEIT. POLIESTER GATO TAM ÚNICO FITA 15 MM', 2.1, 12.9, 5, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 5, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 5, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 5, 0.0, '{}'::JSONB, 12);
    END IF;
  END IF;

  -- Pedido #3 — AGROPECUARIA AGRO RURAL (CAMBORIU) — 2025-09-29
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGRO RURAL (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AGRO RURAL (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-29') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-29', '2025-09-29', 'Entregue', 'VENC. 29.10 - 403,40', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 4, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 18.9, 4, 0.0, '{}'::JSONB, 14);
    END IF;
  END IF;

  -- Pedido #4 — AGROPECUARIA AGROJEPE — 2025-11-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AGROJEPE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-12', '2025-11-12', 'Entregue', 'BOLETOS ANEXOS NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº P', 7.99, 13.9, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 6, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAÇÃO TAM M', 39.9, 41.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL MINI SAIA PP', 41.9, 18.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL MINI SAIA P', 41.9, 18.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL MINI SAIA M', 41.9, 18.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET POLIESTER FITA 25', 7.2, 11.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 2, 0.0, '{}'::JSONB, 22);
    END IF;
  END IF;

  -- Pedido #5 — AGROPECUARIA AGROJEPE — 2026-02-24
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AGROJEPE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-24') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-24', '2026-02-24', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 15  Nº P', 5.85, 10.5, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 5, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 5.9, 5, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 0.0, 6.9, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.5, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO SEGURANÇA PET POLIESTER FITA 25', 7.2, 11.9, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 4, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 4, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 18.9, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA ELAST. PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 2, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 2, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 2, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 38);
    END IF;
  END IF;

  -- Pedido #6 — AGROPECUARIA AGROJEPE — 2026-03-16
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AGROJEPE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-16') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-16', '2026-03-24', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 15  Nº P', 5.85, 10.5, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 5.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER  FITA 15  C/   1 MT', 2.4, 6.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO SEGURANÇA PET POLIESTER FITA 25', 7.2, 11.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA ELAST. PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 00', 25.4, 6.5, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 0', 25.4, 8.25, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 12.0, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 14.2, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 10', 25.4, 14.5, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET (10 +1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 29);
    END IF;
  END IF;

  -- Pedido #7 — AGROPECUARIA AMARAL (BARRA VELHA) — 2025-12-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AMARAL (BARRA VELHA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AMARAL (BARRA VELHA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-04', '2025-12-04', 'Entregue', 'PRAZO 30-45-60', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 12, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 12, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 12, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 12, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 12, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 11.9, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET POLIESTER FITA 25', 7.2, 10.5, 6, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG P', 25.4, 14.99, 6, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG G', 25.4, 16.99, 10, 0.0, '{}'::JSONB, 29);
    END IF;
  END IF;

  -- Pedido #8 — AGROPECUARIA AMARAL (BARRA VELHA) — 2026-03-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AMARAL (BARRA VELHA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA AMARAL (BARRA VELHA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-03', '2026-03-12', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 10, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 15  Nº P', 5.85, 10.5, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 25.4, 8.5, 10, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 10, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 12.0, 10, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 14.2, 5, 0.0, '{}'::JSONB, 18);
    END IF;
  END IF;

  -- Pedido #9 — AGROPECUARIA BENTO — 2025-09-19
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA BENTO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-19') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-19', '2025-09-25', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 6 MM C/ 1 METRO', 4.6, 7.6, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA', 5.6, 8.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº1( X  )PINTADA Nº1(   )', 1.67, 2.4, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2( X  )PINTADA Nº2(   )', 1.99, 2.8, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3( X )PINTADA Nº3(   )', 3.05, 4.35, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4(  X )PINTADA Nº4(   )', 4.2, 6.0, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5( X )PINTADA Nº5(   )', 4.38, 6.2, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6(X  )PINTADA Nº6(   )', 5.7, 7.6, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7( X )PINTADA Nº7(   )', 7.99, 9.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8(X  )PINTADA Nº8(   )', 9.58, 12.2, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10(X  )PINTADA Nº10(   )', 14.65, 18.9, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 1, 0.0, '{}'::JSONB, 26);
    END IF;
  END IF;

  -- Pedido #10 — AGROPECUARIA BENTO — 2025-11-14
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA BENTO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-14') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-14', '2025-11-14', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 11);
    END IF;
  END IF;

  -- Pedido #11 — AGROPECUARIA BENTO — 2026-01-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA BENTO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-07', '2026-01-07', 'Entregue', 'PIX AGENDADO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 1, 0.0, '{}'::JSONB, 23);
    END IF;
  END IF;

  -- Pedido #12 — AGROPECUARIA BENTO — 2026-02-25
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA BENTO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-25') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-25', '2026-03-04', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 00', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 3', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 4', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 11);
    END IF;
  END IF;

  -- Pedido #13 — AGROPECUARIA COELHO (ITAJAI) — 2025-11-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA COELHO (ITAJAI)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA COELHO (ITAJAI)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-12', '2025-11-12', 'Entregue', '', 73.9, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 2);
    END IF;
  END IF;

  -- Pedido #14 — AGROPECUARIA COUTO (FABRICIO) — 2025-10-17
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA COUTO (FABRICIO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA COUTO (FABRICIO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-17') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-17', '2025-10-17', 'Entregue', 'CHEQUE', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº1', 1.67, 2.4, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 6, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 6, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADO Nº9', 13.15, 16.9, 6, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 00', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 21);
    END IF;
  END IF;

  -- Pedido #15 — AGROPECUARIA COUTO (FABRICIO) — 2026-01-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA COUTO (FABRICIO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA COUTO (FABRICIO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-07', '2026-01-16', 'Entregue', 'PAGAMENTO COM CHEQUE PARA O DIA 16.02.20', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10', 14.65, 18.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 7', 5.3, 8.9, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 8', 5.45, 9.3, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 9', 5.55, 9.5, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 10', 5.65, 12.0, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 17);
    END IF;
  END IF;

  -- Pedido #16 — AGROPECUARIA DA PENHA — 2025-09-10
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DA PENHA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DA PENHA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-10', '2025-09-10', 'Entregue', 'BOLETOS  30/45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 15.15, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4( X )PINTADA Nº4(   )', 4.2, 6.0, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7( X )PINTADA Nº7(   )', 7.99, 9.9, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8( X )PINTADA Nº8(   )', 9.58, 12.2, 6, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10( X )PINTADA Nº10(   )', 14.65, 18.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 7.5, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 8.5, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET', 25.4, 14.99, 3, 0.0, '{}'::JSONB, 26);
    END IF;
  END IF;

  -- Pedido #17 — AGROPECUARIA DEDÉ CAMBORIU — 2025-10-20
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DEDÉ CAMBORIU';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DEDÉ CAMBORIU';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-20') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-20', '2025-10-20', 'Entregue', 'PAGAMENTO BOLETO  30 - 45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2', 2.2, 3.5, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 5', 2.68, 4.0, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.0, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 0', 2.5, 4.0, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 1', 2.5, 4.0, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 2', 2.5, 4.0, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 3', 2.5, 4.0, 2, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 35);
    END IF;
  END IF;

  -- Pedido #18 — AGROPECUARIA DEDÉ CAMBORIU — 2026-01-14
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DEDÉ CAMBORIU';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DEDÉ CAMBORIU';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-14') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-14', '2026-01-26', 'Entregue', 'BOLETO NF. 30-45-60', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 4, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 4, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 4, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 4, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 4, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 29);
    END IF;
  END IF;

  -- Pedido #19 — AGROPECUARIA DO ITU (JANAINA) — 2025-11-26
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO ITU (JANAINA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO ITU (JANAINA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-26') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-26', '2025-11-26', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 20);
    END IF;
  END IF;

  -- Pedido #20 — AGROPECUARIA DO ITU (JANAINA) — 2026-01-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO ITU (JANAINA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO ITU (JANAINA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-09', '2026-01-16', 'Entregue', 'PAGO CHEQUE', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 7);
    END IF;
  END IF;

  -- Pedido #21 — AGROPECUARIA DO MANO — 2025-09-08
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO MANO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-08') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-08', '2025-09-10', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº1(  )PINTADA Nº1(   )', 1.67, 3.0, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2(  )PINTADA Nº2(   )', 1.99, 3.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3(  )PINTADA Nº3(   )', 3.05, 6.0, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4(  )PINTADA Nº4(   )', 4.2, 6.65, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5(  )PINTADA Nº5(   )', 4.38, 8.7, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7(  )PINTADA Nº7(   )', 7.99, 13.6, 5, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8(  )PINTADA Nº8(   )', 9.58, 14.8, 4, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG (ENTREGUE)', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 27);
    END IF;
  END IF;

  -- Pedido #22 — AGROPECUARIA DO MANO — 2025-10-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO MANO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-01', '2025-10-03', 'Entregue', 'A VISTA', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 17);
    END IF;
  END IF;

  -- Pedido #23 — AGROPECUARIA DO MANO — 2025-11-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO MANO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-04', '2025-11-04', 'Entregue', 'PIX AGENDADO 07.11.2025', 100.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 5, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 6, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 6, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 18);
    END IF;
  END IF;

  -- Pedido #24 — AGROPECUARIA DO MANO — 2025-12-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO MANO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-01', '2025-12-08', 'Entregue', 'PIX AGENDADO  15.12.25', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 16);
    END IF;
  END IF;

  -- Pedido #25 — AGROPECUARIA DO MANO — 2026-01-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO MANO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-12', '2026-01-22', 'Entregue', 'NOVO PIX PARA DEPÓSITO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 6, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 6, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 6, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 37);
    END IF;
  END IF;

  -- Pedido #26 — AGROPECUARIA DO MANO — 2026-03-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO MANO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-03', '2026-03-12', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 15  Nº P', 5.85, 10.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM C/ MOLA', 10.3, 15.8, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO SEGURANÇA PET NYLON FITA 25', 6.21, 10.5, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 2.69, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.14, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 4.9, 4, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.3, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 9.4, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 10.9, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 17.4, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 4, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET  (10 + 1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 34);
    END IF;
  END IF;

  -- Pedido #27 — AGROPECUARIA DOM QUIRINO — 2025-11-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DOM QUIRINO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DOM QUIRINO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-04', '2025-11-04', 'Entregue', 'BOLETOS 28-42', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 5, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 1, 0.0, '{}'::JSONB, 18);
    END IF;
  END IF;

  -- Pedido #28 — AGROPECUARIA DOM QUIRINO — 2025-12-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DOM QUIRINO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DOM QUIRINO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-01', '2025-12-17', 'Entregue', 'BOLETO ANEXO NF.', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.5, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 5.9, 5, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 0.0, 6.9, 5, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15MM C/  1 MT', 2.4, 4.5, 5, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER FITA 15MM   C/   1 MT', 2.4, 6.5, 5, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.5, 4, 0.0, '{}'::JSONB, 20);
    END IF;
  END IF;

  -- Pedido #29 — AGROPECUARIA DU CAMPO — 2025-09-10
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DU CAMPO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DU CAMPO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-10', '2025-09-18', 'Entregue', 'BOLETOS ANEXOS NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.0, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 24.0, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA POLIESTER DUPLA COM 60 CM', 0.0, 12.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA POLIESTER DUPLA COM 1 MT', 0.0, 14.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 4, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 4, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 2, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 4, 0.0, '{}'::JSONB, 31);
    END IF;
  END IF;

  -- Pedido #30 — AGROPECUARIA DU CAMPO — 2025-11-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DU CAMPO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DU CAMPO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-04', '2025-11-04', 'Entregue', 'BOLETOS 30-45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 11.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 13.15, 14.8, 3, 0.0, '{}'::JSONB, 21);
    END IF;
  END IF;

  -- Pedido #31 — AGROPECUARIA DU CAMPO — 2026-01-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DU CAMPO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DU CAMPO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-12', '2026-01-12', 'Entregue', 'PRAZO 30-45-60-75', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.5, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 3, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 3, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 6, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 6, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 6, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 6, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 18.9, 3, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 00', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 0', 2.5, 4.0, 3, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 1', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 39);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 2', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 40);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 3', 2.5, 4.0, 3, 0.0, '{}'::JSONB, 41);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 8', 5.45, 9.3, 6, 0.0, '{}'::JSONB, 42);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 9', 5.55, 9.5, 6, 0.0, '{}'::JSONB, 43);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 44);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 45);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 46);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 47);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG G', 25.4, 16.99, 4, 0.0, '{}'::JSONB, 48);
    END IF;
  END IF;

  -- Pedido #32 — AGROPECUARIA EDUARDO (NAVEGANTES) — 2025-09-10
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA EDUARDO (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-10', '2025-09-10', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 8, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 15.15, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4(X  )PINTADA Nº4(   )', 4.2, 6.65, 6, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5( X )PINTADA Nº5(   )', 4.38, 8.7, 5, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6(X  )PINTADA Nº6(   )', 5.7, 11.0, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 13);
    END IF;
  END IF;

  -- Pedido #33 — AGROPECUARIA EDUARDO (NAVEGANTES) — 2025-11-26
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA EDUARDO (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-26') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-26', '2025-11-26', 'Entregue', 'PIX PROG.      361,40   22.12.25', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 5, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10', 14.65, 18.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 24);
    END IF;
  END IF;

  -- Pedido #34 — AGROPECUARIA EDUARDO (NAVEGANTES) — 2026-01-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA EDUARDO (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-09', '2026-01-16', 'Entregue', 'PIX AGENDADO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 24);
    END IF;
  END IF;

  -- Pedido #35 — AGROPECUARIA ELAINE (ITAJAÍ) — 2025-11-05
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (ITAJAÍ)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA ELAINE (ITAJAÍ)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-05') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-05', '2025-11-05', 'Entregue', 'VENC. 05.12.25   492,55', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 4, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET ( MANDAR 1 DE BRINDE) ENTREGUE', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 27);
    END IF;
  END IF;

  -- Pedido #36 — AGROPECUARIA ELAINE (ITAJAÍ) — 2026-03-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (ITAJAÍ)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA ELAINE (ITAJAÍ)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-04', '2026-03-04', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.5, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER  FITA 15  C/   1 MT', 2.4, 6.5, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.14, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 4.9, 6, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.3, 6, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 5, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 27);
    END IF;
  END IF;

  -- Pedido #37 — AGROPECUARIA ELAINE (NAVEGANTES) — 2025-10-20
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA ELAINE (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-20') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-20', '2025-10-20', 'Entregue', 'VENC. 20.11.2025', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 5, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 2, 0.0, '{}'::JSONB, 3);
    END IF;
  END IF;

  -- Pedido #38 — AGROPECUARIA ELAINE (NAVEGANTES) — 2026-01-08
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA ELAINE (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-08') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-08', '2026-01-16', 'Entregue', 'PIX MUDOU', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ENFORCADOR', 5.6, 10.0, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.5, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 2, 0.0, '{}'::JSONB, 14);
    END IF;
  END IF;

  -- Pedido #39 — AGROPECUARIA FORMENTO — 2025-10-24
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA FORMENTO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA FORMENTO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-24') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-24', '2025-10-24', 'Entregue', 'VENC. 18.11.2025   346,36', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 4, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 4, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 4, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 19.9, 3, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 34);
    END IF;
  END IF;

  -- Pedido #40 — AGROPECUARIA FRAN (FAZENDA) — 2025-11-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA FRAN (FAZENDA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA FRAN (FAZENDA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-12', '2025-11-12', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.9, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.9, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 12, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 12, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 12, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2', 2.2, 3.5, 12, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 12, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 12, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.0, 12, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 0', 2.5, 4.0, 12, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 1', 2.5, 4.0, 12, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 2', 2.5, 4.0, 12, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 3', 2.5, 4.0, 12, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 4, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 4', 4.25, 7.0, 6, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 5', 4.35, 7.5, 6, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 6', 4.5, 7.6, 3, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 7', 5.3, 8.9, 6, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 8', 5.45, 9.3, 6, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 39);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 7, 0.0, '{}'::JSONB, 40);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 6, 0.0, '{}'::JSONB, 41);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 42);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG', 25.4, 16.99, 4, 0.0, '{}'::JSONB, 43);
    END IF;
  END IF;

  -- Pedido #41 — AGROPECUARIA GADOTTI — 2025-10-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA GADOTTI';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA GADOTTI';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-03', '2025-10-03', 'Entregue', 'PIX AGENDADO 022.875.009-10', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 5, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.9, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 23.9, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER P/GATO TAM ÚNICO', 41.9, 12.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 6, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 6, 0.0, '{}'::JSONB, 15);
    END IF;
  END IF;

  -- Pedido #42 — AGROPECUARIA GADOTTI — 2025-12-18
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA GADOTTI';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA GADOTTI';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-18') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-18', '2025-12-18', 'Entregue', 'BOLETO ANEXO NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 14);
    END IF;
  END IF;

  -- Pedido #43 — AGROPECUARIA GIOPET (ITAJAI) — 2025-11-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA GIOPET (ITAJAI)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA GIOPET (ITAJAI)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-07', '2025-11-07', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 9);
    END IF;
  END IF;

  -- PEDIDO #44 ignorado (visitDate inválida: '')
  -- Pedido #45 — AGROPECUARIA IMPERIO DAS RAÇÕES — 2026-03-30
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA IMPERIO DAS RAÇÕES';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA IMPERIO DAS RAÇÕES';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-30') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-30', '2026-03-30', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 3', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 4', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 6 MM C/ 1 METRO', 4.6, 7.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 00', 25.4, 6.5, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 0', 25.4, 8.25, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 25.4, 8.7, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 6, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 12.0, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 14.2, 6, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 10', 25.4, 14.5, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 12', 25.4, 16.9, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 14', 25.4, 17.5, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 16', 25.4, 19.9, 6, 0.0, '{}'::JSONB, 14);
    END IF;
  END IF;

  -- Pedido #46 — AGROPECUARIA DO INDIO — 2025-09-17
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO INDIO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-17') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-17', '2025-09-17', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 0.0, 6.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2( X  )PINTADA Nº2(   )', 1.99, 2.8, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3( X )PINTADA Nº3(   )', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4(  X )PINTADA Nº4(   )', 4.2, 6.0, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5( X )PINTADA Nº5(   )', 4.38, 6.2, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6(X  )PINTADA Nº6(   )', 5.7, 7.6, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7( X )PINTADA Nº7(   )', 7.99, 9.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9( X )PINTADA Nº9(   )', 13.15, 16.9, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10(X  )PINTADA Nº10(   )', 14.65, 18.9, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 27);
    END IF;
  END IF;

  -- Pedido #47 — AGROPECUARIA DO INDIO — 2025-10-15
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO INDIO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-15') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-15', '2025-10-15', 'Entregue', 'BOLETO 20-35    DESC. 15,85 FAZER NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 7.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET ( MANDAR 1 MANTA DE BRINDE)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG P', 25.4, 14.99, 5, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG M', 25.4, 16.99, 5, 0.0, '{}'::JSONB, 18);
    END IF;
  END IF;

  -- Pedido #48 — AGROPECUARIA DO INDIO — 2025-12-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO INDIO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-04', '2025-12-04', 'Entregue', 'PRAZO 25-35-45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 25.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 5.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.6, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 4, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10', 14.65, 18.9, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG M', 25.4, 16.99, 4, 0.0, '{}'::JSONB, 33);
    END IF;
  END IF;

  -- Pedido #49 — AGROPECUARIA DO INDIO — 2026-01-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO INDIO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-07', '2026-01-23', 'Entregue', '30-45-60 BOLETO ANEXO NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.5, 4, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.5, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 6, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 6, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 3, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 4, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 39);
    END IF;
  END IF;

  -- Pedido #50 — AGROPECUARIA DO INDIO — 2026-02-25
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA DO INDIO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-25') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-25', '2026-03-03', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 5, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 6, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 40 Nº G', 41.9, 43.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.7, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER  FITA 15  C/   1 MT', 2.4, 6.5, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº G', 18.84, 42.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 3.14, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.9, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.9, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 9.4, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 10.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 11.66, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10', 14.65, 17.4, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 5, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 33);
    END IF;
  END IF;

  -- Pedido #51 — AGROPECUARIA JOÃO (CENTRO NAVEGANTES) — 2026-01-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOÃO (CENTRO NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA JOÃO (CENTRO NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-09', '2026-01-16', 'Entregue', 'BOLETOS 30-45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON AMERICANO (X) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON AMERICANO (X) FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLI GRADE DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.5, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 0.0, 6.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 5, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 5, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 23);
    END IF;
  END IF;

  -- Pedido #52 — AGROPECUARIA JOÃO (CENTRO NAVEGANTES) — 2026-03-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOÃO (CENTRO NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA JOÃO (CENTRO NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-12', '2026-03-12', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 11);
    END IF;
  END IF;

  -- Pedido #53 — AGROPECUARIA SÃO CRISTOVÃO (JOÃO) — 2025-09-19
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-19') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-19', '2025-09-19', 'Entregue', 'PAGO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 5, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAÇÃO TAM M', 39.9, 39.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 20);
    END IF;
  END IF;

  -- PEDIDO #54 ignorado (visitDate inválida: '')
  -- Pedido #55 — AGROPECUARIA SÃO CRISTOVÃO (JOÃO) — 2025-11-25
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-25') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-25', '2025-11-25', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 13);
    END IF;
  END IF;

  -- Pedido #56 — AGROPECUARIA SÃO CRISTOVÃO (JOÃO) — 2026-03-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-03', '2026-03-12', 'Entregue', '', 32.9, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 7, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.9, 7, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 8, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 10, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.7, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.5, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET (10 + 1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 20);
    END IF;
  END IF;

  -- Pedido #57 — AGROPECUARIA JOSIAS — 2025-09-18
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA JOSIAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-18') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-18', '2025-10-02', 'Entregue', 'VENC. 22.10 - 361,00', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 12 MM X 1,20 C/ ARGOLA', 10.6, 12.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA', 5.6, 8.9, 3, 0.0, '{}'::JSONB, 11);
    END IF;
  END IF;

  -- Pedido #58 — AGROPECUARIA JOSIAS — 2025-11-19
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA JOSIAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-19') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-19', '2025-11-19', 'Entregue', 'VENC. 15.12.2025 BOLETO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 12 MM X 1,20 C/ ARGOLA', 10.6, 13.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 13);
    END IF;
  END IF;

  -- Pedido #59 — AGROPECUARIA JOSIAS — 2026-01-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA JOSIAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-07', '2026-01-16', 'Entregue', 'BOLETO  25 - 45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 7, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLI GRADE DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.9, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON CETIM C/APLIC N 2', 13.65, 12.9, 2, 0.0, '{}'::JSONB, 15);
    END IF;
  END IF;

  -- Pedido #60 — AGROPECUARIA JOSIAS — 2026-02-25
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA JOSIAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-25') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-25', '2026-03-03', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº P', 10.9, 19.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 7.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 0.0, 9.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 3.14, 6, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.3, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 10.9, 3, 0.0, '{}'::JSONB, 12);
    END IF;
  END IF;

  -- Pedido #61 — AGROPECUARIA CONSALNI - LUAN — 2025-09-08
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA CONSALNI - LUAN';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-08') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-08', '2025-09-10', 'Entregue', 'PAGAMENTO VIA PIX .022.875.009-10', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.7, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7(  )PINTADA Nº7( X  )', 7.99, 13.6, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8(  )PINTADA Nº8( X  )', 9.58, 14.8, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9(  )PINTADA Nº9( X  )', 13.15, 17.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10(  )PINTADA Nº10( X  )', 14.65, 19.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 5', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 20);
    END IF;
  END IF;

  -- Pedido #62 — AGROPECUARIA CONSALNI - LUAN — 2025-12-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA CONSALNI - LUAN';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-01', '2025-12-08', 'Entregue', 'PIX AGENDADO 29.12.25', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 10);
    END IF;
  END IF;

  -- Pedido #63 — AGROPECUARIA CONSALNI - LUAN — 2026-03-30
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA CONSALNI - LUAN';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-30') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-30', '2026-02-06', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 00', 25.4, 6.5, 6, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 0', 25.4, 8.25, 6, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 25.4, 8.5, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 12.0, 6, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 14.2, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 10', 25.4, 14.5, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 12', 25.4, 16.9, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 14', 25.4, 17.5, 6, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 16', 25.4, 19.9, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET  (10 + 1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 10);
    END IF;
  END IF;

  -- Pedido #64 — AGROPECUARIA MANU (MURTA) — 2025-11-21
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANU (MURTA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MANU (MURTA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-21') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-21', '2025-11-21', 'Entregue', 'BOLETOS 587,41  06.01.2026', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 4, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 4, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.5, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 6, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 3, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 6, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 6, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 6, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 6, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 19.9, 6, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 39);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 40);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 41);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 42);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P ( A ENTREGAR)', 15.7, 26.9, 2, 0.0, '{}'::JSONB, 43);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M  ( A ENTREGAR)', 16.7, 29.9, 2, 0.0, '{}'::JSONB, 44);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G  ( A ENTREGAR)', 17.7, 32.9, 2, 0.0, '{}'::JSONB, 45);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG  ( A ENTREGAR)', 21.2, 39.9, 2, 0.0, '{}'::JSONB, 46);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG ( A ENTREGAR)', 24.2, 46.9, 2, 0.0, '{}'::JSONB, 47);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG ( A ENTREGAR)', 25.4, 53.9, 2, 0.0, '{}'::JSONB, 48);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M ( A ENTREGAR)', 25.4, 43.9, 3, 0.0, '{}'::JSONB, 49);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G ( A ENTREGAR)', 25.4, 54.9, 3, 0.0, '{}'::JSONB, 50);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET', 25.4, 14.99, 8, 0.0, '{}'::JSONB, 51);
    END IF;
  END IF;

  -- Pedido #65 — AGROPECUARIA MANU (MURTA) — 2026-02-12
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANU (MURTA)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MANU (MURTA)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-12') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-12', '2026-02-24', 'Entregue', 'BOLETO 30 DD', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 4, 0.0, '{}'::JSONB, 2);
    END IF;
  END IF;

  -- Pedido #66 — AGROPECUARIA MANUELA — 2025-09-15
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANUELA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MANUELA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-15') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-15', '2025-09-15', 'Entregue', 'cheque', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAÇAO TAM G', 41.9, 42.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.7, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 27);
    END IF;
  END IF;

  -- Pedido #67 — AGROPECUARIA MANUELA — 2026-01-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANUELA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MANUELA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-07', '2026-01-16', 'Entregue', 'PAGAMENTO COM CHEQUE VENC. DIA 16.02.202', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 14);
    END IF;
  END IF;

  -- Pedido #68 — AGROPECUARIA MANUELA — 2026-03-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANUELA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MANUELA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-09', '2026-04-06', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET (10 + 1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 9);
    END IF;
  END IF;

  -- Pedido #69 — AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO) — 2025-11-14
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-14') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-14', '2025-11-14', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 22);
    END IF;
  END IF;

  -- Pedido #70 — AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO) — 2026-01-26
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-26') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-26', '2026-01-26', 'Entregue', 'PIX PARA DEPÓSITO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 5, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 28);
    END IF;
  END IF;

  -- Pedido #71 — AGROPECUARIA MEIA PRAIA — 2025-09-10
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MEIA PRAIA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-10', '2025-09-10', 'Entregue', 'pagamentos           10.10.2025     434,', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 8, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 8, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.0, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 24.0, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 15.15, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº1(  )PINTADA Nº1( X  )', 1.67, 3.0, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2(  )PINTADA Nº2(X   )', 1.99, 3.9, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3(  )PINTADA Nº3( X  )', 3.05, 6.0, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4(  )PINTADA Nº4( X  )', 4.2, 6.65, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5(  )PINTADA Nº5( X  )', 4.38, 8.7, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6(  )PINTADA Nº6( X  )', 5.7, 11.0, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9(  )PINTADA Nº9( X  )', 13.15, 17.9, 3, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10(   )PINTADA Nº10( X  )', 14.65, 19.9, 3, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 5', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 2, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 2, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 2, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 2, 0.0, '{}'::JSONB, 39);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 40);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 25.4, 8.5, 2, 0.0, '{}'::JSONB, 41);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 4, 0.0, '{}'::JSONB, 42);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 12.0, 4, 0.0, '{}'::JSONB, 43);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 14.2, 4, 0.0, '{}'::JSONB, 44);
    END IF;
  END IF;

  -- Pedido #72 — AGROPECUARIA MEIA PRAIA — 2025-12-15
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MEIA PRAIA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-15') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-15', '2025-12-15', 'Entregue', 'VENCIMENTOS  15.01.2026  - 290,42', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 7, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.9, 4, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG', 25.4, 16.99, 6, 0.0, '{}'::JSONB, 28);
    END IF;
  END IF;

  -- Pedido #73 — AGROPECUARIA MEIA PRAIA — 2026-03-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MEIA PRAIA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-09', '2026-03-09', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 5, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 N. P', 7.5, 12.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº M', 7.85, 13.6, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.7, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO SEGURANÇA PET NYLON FITA 25', 6.21, 10.5, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 10.9, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 11.66, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 15.6, 6, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 2', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET (10 + 1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 30);
    END IF;
  END IF;

  -- Pedido #74 — AGROPECUARIA MORRETES — 2025-10-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MORRETES';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MORRETES';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-03', '2025-10-03', 'Entregue', 'PIX AGENDADO  VENC. 03.11.2025', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 5', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 2, 0.0, '{}'::JSONB, 21);
    END IF;
  END IF;

  -- Pedido #75 — AGROPECUARIA MORRETES — 2025-12-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MORRETES';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MORRETES';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-01', '2025-12-15', 'Entregue', 'PIX AGENDADO  280,10  15.01.26 PAGO 300 ', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.5, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.8, 6, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2', 2.2, 3.8, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 3', 2.2, 3.8, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 25);
    END IF;
  END IF;

  -- Pedido #76 — AGROPECUARIA MORRETES — 2026-03-16
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MORRETES';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MORRETES';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-16') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-16', '2026-03-16', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.7, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº G', 18.84, 42.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 00', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 5', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET', 25.4, 14.99, 3, 0.0, '{}'::JSONB, 25);
    END IF;
  END IF;

  -- PEDIDO #77 ignorado (visitDate inválida: '')
  -- Pedido #78 — AGROPECUARIA MULTI AGRO (CAMBORIU) — 2025-11-08
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MULTI AGRO (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-08') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-08', '2025-11-08', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 4, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 5.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 20 TAM M', 0.0, 6.9, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.5, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 0', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 2', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 3', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 5, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG', 25.4, 16.99, 3, 0.0, '{}'::JSONB, 29);
    END IF;
  END IF;

  -- Pedido #79 — AGROPECUARIA MULTI AGRO (CAMBORIU) — 2025-12-16
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MULTI AGRO (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-16') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-16', '2025-12-16', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 6, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 6, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 6, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 6, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 6, 0.0, '{}'::JSONB, 14);
    END IF;
  END IF;

  -- Pedido #80 — AGROPECUARIA MULTI AGRO (CAMBORIU) — 2026-01-14
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MULTI AGRO (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-14') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-14', '2026-01-26', 'Entregue', 'NOVO PIX PARA PAGAMENTO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 8, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 8, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 8, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 8, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 12, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 12, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 6, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 6 MM C/ 1 METRO', 4.6, 7.6, 6, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 6, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 12MM C/ 40 CM', 6.5, 10.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 12MM C/ 60 CM', 6.5, 11.8, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 12MM X 40 COM AMORT.', 7.25, 12.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 12MM X 60 COM AMORT.', 7.25, 13.3, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 14 MM C/ 40 CM COM AMORT.', 8.8, 15.3, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 14 MM C/ 60 CM COM AMORT.', 8.8, 15.7, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 4, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET POLIESTER FITA 25', 7.2, 11.9, 10, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 8, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 28);
    END IF;
  END IF;

  -- Pedido #81 — AGROPECUARIA MULTI AGRO (CAMBORIU) — 2026-03-02
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MULTI AGRO (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-02') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-02', '2026-03-13', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 N. P', 7.5, 12.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº G', 9.9, 17.5, 6, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº M', 11.9, 21.9, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET  (10 + 1)', 25.4, 14.99, 20, 0.0, '{}'::JSONB, 8);
    END IF;
  END IF;

  -- Pedido #82 — AGROPECUARIA MULTI AGRO (CAMBORIU) — 2026-03-13
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MULTI AGRO (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-13') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-13', '2026-03-13', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 00', 25.4, 6.5, 15, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 0', 25.4, 6.99, 10, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 25.4, 7.7, 15, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 10, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 9.9, 24, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 12.9, 36, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 10', 25.4, 13.9, 36, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 12', 25.4, 15.5, 36, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 14', 25.4, 16.9, 24, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 16', 25.4, 17.9, 18, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET  (10 + 1)', 25.4, 14.99, 30, 0.0, '{}'::JSONB, 10);
    END IF;
  END IF;

  -- Pedido #83 — AGROPECUARIA MUNDO PET (ITAJAI) — 2025-11-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MUNDO PET (ITAJAI)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MUNDO PET (ITAJAI)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-07', '2025-11-07', 'Entregue', 'VENC. 09.12.2025', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 10, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 10, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 10, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.5, 6, 0.0, '{}'::JSONB, 3);
    END IF;
  END IF;

  -- Pedido #84 — AGROPECUARIA MUNDO PET (ITAJAI) — 2026-02-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MUNDO PET (ITAJAI)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA MUNDO PET (ITAJAI)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-03', '2026-02-10', 'Entregue', 'BOLETOS 30 - 45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 8, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 10, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON NEOPRENE TAM M', 39.9, 39.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON NEOPRENE TAM G', 41.9, 42.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG GRANDE', 25.4, 16.99, 3, 0.0, '{}'::JSONB, 11);
    END IF;
  END IF;

  -- Pedido #85 — AGROPECUARIA NP — 2025-10-15
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA NP';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA NP';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-15') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-15', '2025-10-15', 'Entregue', 'BOLETO 25 - 35 - 45 - 60', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 4, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 4, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 13.9, 1, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº1', 1.67, 2.4, 3, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 4, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 3, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 4, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 4, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 4, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 3, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 4, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 3, 0.0, '{}'::JSONB, 39);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 3, 0.0, '{}'::JSONB, 40);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 41);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 3, 0.0, '{}'::JSONB, 42);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 1, 0.0, '{}'::JSONB, 43);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 3, 0.0, '{}'::JSONB, 44);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 16.9, 3, 0.0, '{}'::JSONB, 45);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 4', 4.25, 7.0, 3, 0.0, '{}'::JSONB, 46);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 5', 4.35, 7.5, 3, 0.0, '{}'::JSONB, 47);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 6', 4.5, 7.6, 3, 0.0, '{}'::JSONB, 48);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 7', 5.3, 8.9, 4, 0.0, '{}'::JSONB, 49);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 9', 5.55, 9.5, 4, 0.0, '{}'::JSONB, 50);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 10', 5.65, 12.0, 3, 0.0, '{}'::JSONB, 51);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 52);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 53);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 54);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 55);
    END IF;
  END IF;

  -- Pedido #86 — AGROPECUARIA NUNES - CAMBORIU — 2025-10-23
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA NUNES - CAMBORIU';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA NUNES - CAMBORIU';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-23') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-23', '2025-10-23', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 2, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 2, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 36);
    END IF;
  END IF;

  -- Pedido #87 — AGROPECUARIA PAIVA — 2025-12-10
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAIVA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAIVA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-10', '2025-12-10', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 4, 0.0, '{}'::JSONB, 9);
    END IF;
  END IF;

  -- Pedido #88 — AGROPECUARIA PAIVA — 2026-02-25
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAIVA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAIVA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-25') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-25', '2026-03-03', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 5, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 5, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 5, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 8);
    END IF;
  END IF;

  -- Pedido #89 — AGROPECUARIA PAULINIA (CAMBORIU) — 2025-10-06
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAULINIA (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-06') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-06', '2025-10-06', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 6, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 4, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 4, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 23.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 2, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 3.0, 4, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 4, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 4, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 4, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 4, 0.0, '{}'::JSONB, 35);
    END IF;
  END IF;

  -- Pedido #90 — AGROPECUARIA PAULINIA (CAMBORIU) — 2026-01-14
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAULINIA (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-14') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-14', '2026-01-26', 'Entregue', 'NOVO PIX PARA PAGAMENTO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 38.9, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 23.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 24.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1 M C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.9, 4, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.5, 4, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 6, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 6, 0.0, '{}'::JSONB, 25);
    END IF;
  END IF;

  -- Pedido #91 — AGROPECUARIA PAULINIA (CAMBORIU) — 2026-03-02
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAULINIA (CAMBORIU)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-02') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-02', '2026-03-02', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 00', 25.4, 6.5, 15, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 0', 25.4, 6.99, 10, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 02', 25.4, 7.7, 10, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 04', 25.4, 8.9, 20, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 06', 25.4, 9.9, 15, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 08', 25.4, 12.9, 20, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 10', 25.4, 13.9, 5, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 12', 25.4, 15.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 14', 25.4, 16.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'SUETER TAM 16', 25.4, 17.9, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET ( 10 + 1)', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 10);
    END IF;
  END IF;

  -- Pedido #92 — AGROPECUARIA PAULISTA (NAVEGANTES) — 2025-10-13
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAULISTA (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-13') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-13', '2025-10-13', 'Entregue', 'PIX AGENDADO VENC. 18.11.2025', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.9, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 13.6, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADO Nº9', 13.15, 17.9, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 2', 2.2, 3.5, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 18);
    END IF;
  END IF;

  -- Pedido #93 — AGROPECUARIA PAULISTA (NAVEGANTES) — 2025-12-05
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAULISTA (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-05') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-05', '2025-12-15', 'Entregue', 'PIX AGENDADO   357,46 15.01.26', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 6, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 6, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 6, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 4, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.9, 4, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 30);
    END IF;
  END IF;

  -- Pedido #94 — AGROPECUARIA PAULISTA (NAVEGANTES) — 2026-03-02
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PAULISTA (NAVEGANTES)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-02') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-02', '2026-03-13', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM C/ MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR  FITA 15 C/ 1 MT', 2.4, 4.7, 10, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº G', 18.84, 42.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.9, 6, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.3, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.9, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 9.4, 4, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 10.9, 4, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA ELAST. PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 34);
    END IF;
  END IF;

  -- Pedido #95 — AGROPECUARIA PET LIKE — 2025-10-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PET LIKE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-07', '2025-10-07', 'Entregue', 'VENC. 07.11.2025', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 8 MM X 1,20 C/ ARGOLA', 5.6, 8.0, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.7, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 19);
    END IF;
  END IF;

  -- Pedido #96 — AGROPECUARIA PET LIKE — 2025-12-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PET LIKE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-01', '2025-12-09', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 6, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 5, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 5, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.9, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG g', 25.4, 16.99, 2, 0.0, '{}'::JSONB, 30);
    END IF;
  END IF;

  -- Pedido #97 — AGROPECUARIA PET LIKE — 2026-02-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PET LIKE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-03', '2026-02-10', 'Entregue', 'PRAZO 30 /45 DIAS', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA', 5.6, 8.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER  FITA 15   C/  1 MT', 2.4, 6.9, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER  FITA 20  C/  1 MT', 2.4, 7.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 2, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 2, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 18.9, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 0', 2.5, 4.0, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 1', 2.5, 4.0, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 2', 2.5, 4.0, 2, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 3', 2.5, 4.0, 2, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 28);
    END IF;
  END IF;

  -- Pedido #98 — AGROPECUARIA PET LIKE — 2026-03-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PET LIKE';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-03', '2026-03-13', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 N. P', 7.5, 12.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº M', 7.85, 13.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET ( 10 + 1 )', 25.4, 14.99, 10, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG PEQUENO (FALTA ENTREGAR 1 )', 25.4, 14.99, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG GRANDE', 25.4, 16.99, 2, 0.0, '{}'::JSONB, 7);
    END IF;
  END IF;

  -- Pedido #99 — AGROPECUARIA PIÇARRAS — 2026-02-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PIÇARRAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PIÇARRAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-03', '2026-02-03', 'Entregue', 'DESCONTO A VISTA 5%', 40.44, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.5, 4, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.5, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.5, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.5, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.5, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 24);
    END IF;
  END IF;

  -- Pedido #100 — AGROPECUARIA PRO CAMPO (ALICIO) — 2025-12-15
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PRO CAMPO (ALICIO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PRO CAMPO (ALICIO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-15') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-15', '2025-12-15', 'Entregue', 'VENCIMENTO 15.01.26', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 7, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON   EM X(AMER)  FITA 15  NºP', 5.85, 10.5, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 3, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 25.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 1, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM  C/40 CM COM MOLA', 10.3, 15.8, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 2, 0.0, '{}'::JSONB, 32);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 33);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.9, 2, 0.0, '{}'::JSONB, 34);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.9, 3, 0.0, '{}'::JSONB, 35);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.6, 1, 0.0, '{}'::JSONB, 36);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 1, 0.0, '{}'::JSONB, 37);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET FITA 25', 6.21, 10.5, 3, 0.0, '{}'::JSONB, 38);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 1, 0.0, '{}'::JSONB, 39);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 2, 0.0, '{}'::JSONB, 40);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM G', 20.53, 30.9, 2, 0.0, '{}'::JSONB, 41);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 42);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 2, 0.0, '{}'::JSONB, 43);
    END IF;
  END IF;

  -- Pedido #101 — AGROPECUARIA PRO CAMPO (ALICIO) — 2026-02-17
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PRO CAMPO (ALICIO)';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA PRO CAMPO (ALICIO)';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-02-17') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-02-17', '2026-02-25', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 15  Nº P', 5.85, 10.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº M', 7.85, 13.6, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 4, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº M', 6.6, 34.9, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  DUPLO FITA 40 Nº G', 6.6, 36.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM C/ MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº M', 18.84, 41.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 4', 4.25, 7.0, 4, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 5', 4.35, 7.5, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 6', 4.5, 7.6, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 10', 5.65, 12.0, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 2, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 31);
    END IF;
  END IF;

  -- Pedido #102 — AGROPECUARIA QUATRO PATAS — 2025-09-10
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA QUATRO PATAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-10') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-10', '2025-09-10', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 N. P', 7.5, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 15.15, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA POLIESTER DUPLA 60 CM', 2.4, 12.99, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE NYLON TUBOLAR   C/   1 MT', 2.4, 4.7, 2, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G  (FALTA ENTREGAR)', 25.4, 54.9, 2, 0.0, '{}'::JSONB, 17);
    END IF;
  END IF;

  -- Pedido #103 — AGROPECUARIA QUATRO PATAS — 2025-11-26
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA QUATRO PATAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-11-26') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-11-26', '2025-11-26', 'Entregue', 'PIX PROGRAMADO  388,78 PRA DIA 22.12.25', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº M', 7.85, 13.6, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº1', 1.67, 2.4, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 3, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 3, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 9.9, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COUR NATURAL Nº10', 14.65, 18.9, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 4, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 30);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 31);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET', 25.4, 14.99, 3, 0.0, '{}'::JSONB, 32);
    END IF;
  END IF;

  -- Pedido #104 — AGROPECUARIA QUATRO PATAS — 2026-01-07
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA QUATRO PATAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-07') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-07', '2026-01-16', 'Entregue', 'PIX AGENDADO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº G', 6.6, 36.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº2', 1.99, 2.8, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº3', 3.05, 4.35, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 0', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 2', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE POLIESTER FITA 15 MM Nº 3', 2.5, 4.0, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 2, 0.0, '{}'::JSONB, 24);
    END IF;
  END IF;

  -- Pedido #105 — AGROPECUARIA QUATRO PATAS — 2026-03-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA QUATRO PATAS';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-09', '2026-03-18', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº G', 9.9, 17.5, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT  C/ MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 2, 0.0, '{}'::JSONB, 12);
    END IF;
  END IF;

  -- Pedido #106 — AGROPECUARIA SEU JOÃO — 2025-10-16
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SEU JOÃO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-16') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-16', '2025-10-16', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 10, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 26.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 27.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 6, 0.0, '{}'::JSONB, 7);
    END IF;
  END IF;

  -- Pedido #107 — AGROPECUARIA SEU JOÃO — 2025-12-04
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SEU JOÃO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-04') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-04', '2025-12-04', 'Entregue', 'A VISTA', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 26.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 8.7, 6, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 6, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº10', 14.65, 19.9, 4, 0.0, '{}'::JSONB, 6);
    END IF;
  END IF;

  -- Pedido #108 — AGROPECUARIA SEU JOÃO — 2026-01-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SEU JOÃO';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-09', '2026-01-09', 'Entregue', 'A VISTA', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 6, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº M', 9.7, 16.9, 6, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 6, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 40 CM', 8.8, 13.5, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 6, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 10);
    END IF;
  END IF;

  -- Pedido #109 — AGROPECUARIA SOUZA — 2025-09-18
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SOUZA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SOUZA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-09-18') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-09-18', '2025-09-18', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM P', 18.84, 27.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 9);
    END IF;
  END IF;

  -- Pedido #110 — AGROPECUARIA SOUZA — 2025-12-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SOUZA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SOUZA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-01', '2025-12-08', 'Entregue', 'PIX AGENDADO 15 DD VENC. 23.12.25', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 1, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 8 MM X 1,50 C/ ARGOLA', 5.6, 8.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PIPI DOG', 25.4, 16.99, 1, 0.0, '{}'::JSONB, 5);
    END IF;
  END IF;

  -- Pedido #111 — AGROPECUARIA SOUZA — 2026-03-03
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SOUZA';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA SOUZA';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-03') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-03', '2026-03-16', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 3, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 5', 6.6, 19.9, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 25 Nº 6', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON DUPLO REFORÇADO TAM M', 19.89, 29.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA ELAST. PARA GATOS TAM. ÚNICO', 2.1, 3.8, 10, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 5', 4.35, 7.5, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 6', 4.5, 7.6, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA DE NYLON DUPLA COSTURADA Nº 7', 5.3, 8.9, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 2, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'MANTA PET', 25.4, 14.99, 2, 0.0, '{}'::JSONB, 20);
    END IF;
  END IF;

  -- Pedido #112 — AGROPECUARIA TRADIÇÃO CAMBORIU — 2025-10-01
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA TRADIÇÃO CAMBORIU';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA TRADIÇÃO CAMBORIU';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-01') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-01', '2025-10-03', 'Entregue', 'BOLETO 20-30-40 NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 3, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 3, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 3, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 23.9, 3, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.65, 4, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 11.0, 4, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº7', 7.99, 13.6, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 14.8, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 2, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 3, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 3, 0.0, '{}'::JSONB, 24);
    END IF;
  END IF;

  -- Pedido #113 — AGROPECUARIA TRADIÇÃO CAMBORIU — 2026-01-14
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA TRADIÇÃO CAMBORIU';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA TRADIÇÃO CAMBORIU';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-14') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-14', '2026-01-14', 'Entregue', 'BOLETO NF 30/45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 1', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 15 Nº G', 7.99, 13.9, 2, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº G', 9.9, 17.5, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 23.5, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº4', 4.2, 6.0, 4, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº5', 4.38, 6.2, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº6', 5.7, 7.6, 3, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº8', 9.58, 12.2, 3, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO NATURAL Nº9', 13.15, 16.9, 4, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL COURO NATURAL Nº10', 14.65, 18.9, 4, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 5 FITA 25', 8.65, 8.5, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 6 FITA 25', 9.65, 9.5, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 1, 0.0, '{}'::JSONB, 21);
    END IF;
  END IF;

  -- Pedido #114 — AGROPECUARIA VALENT´S — 2025-10-17
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VALENT´S';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA VALENT´S';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-10-17') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-10-17', '2025-10-17', 'Entregue', 'PIX AGENDADO', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 4, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NYLON FITA 20 NR 4', 6.85, 12.9, 5, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº M', 6.6, 34.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON TRAD. DUPLO FITA 40 Nº GG', 6.6, 39.9, 1, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 4 FITA 20', 6.6, 18.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 5 FITA 20', 6.6, 19.9, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 3, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 8 MM C/ 1 METRO', 5.15, 8.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM', 9.4, 14.4, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 1 MT', 10.5, 16.1, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 16 MM C/ 60 CM COM MOLA', 10.8, 16.6, 1, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE CORDA 14 MM C/ 1 MT  COM MOLA', 11.9, 18.3, 1, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 40 CM C/MOLA', 15.8, 24.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 60 CM C/MOLA', 16.8, 26.9, 1, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº3', 3.05, 6.0, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº4', 4.2, 6.65, 3, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 11.0, 3, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº7', 7.99, 13.6, 2, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 2, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº9', 13.15, 17.9, 2, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 0', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON  TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 26);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO TAM ÚNICO', 2.1, 12.9, 1, 0.0, '{}'::JSONB, 27);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 1, 0.0, '{}'::JSONB, 28);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 29);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 30);
    END IF;
  END IF;

  -- Pedido #115 — AGROPECUARIA VALENT´S — 2026-01-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VALENT´S';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA VALENT´S';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-01-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-01-09', '2026-01-15', 'Entregue', 'BOLETO ANEXO A NF', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 00', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 0', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.6, 2, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.6, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.6, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 00', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 2', 6.9, 12.9, 2, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X(AMER) FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER TRAD DUPLO NR 6 FITA 25', 6.6, 25.9, 2, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA ENFORCADOR 16 MM X 1,20 C/ ARGOLA', 10.6, 14.9, 1, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº8', 9.58, 14.8, 4, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 5', 2.68, 4.5, 6, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 6', 2.68, 4.5, 6, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 7 FITA 30', 12.9, 14.5, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM P', 15.7, 26.9, 1, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM M', 16.7, 29.9, 1, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM G', 17.7, 32.9, 1, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 1, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EG', 24.2, 46.9, 1, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM EGGG', 25.4, 53.9, 1, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY P', 2.0, 32.9, 1, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY M', 25.4, 43.9, 1, 0.0, '{}'::JSONB, 25);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CAMA LEDY G', 25.4, 54.9, 1, 0.0, '{}'::JSONB, 26);
    END IF;
  END IF;

  -- Pedido #116 — AGROPECUARIA VALENT´S — 2026-03-09
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VALENT´S';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA VALENT´S';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2026-03-09') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2026-03-09', '2026-03-17', 'Entregue', '', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 1', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 2', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 3', 4.95, 9.9, 1, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL DE NY TUBOLAR FITA 15 Nº 4', 4.95, 9.9, 2, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 0', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 1', 6.9, 12.9, 1, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER  FITA 15 Nº 2', 6.9, 12.9, 4, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 15  Nº P', 5.85, 10.5, 2, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 20  Nº M', 7.1, 12.5, 1, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON  EM X  FITA 25  Nº G', 12.2, 21.5, 1, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº M', 7.85, 13.6, 1, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 15 Nº G', 7.99, 13.9, 1, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº P', 9.54, 16.5, 2, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X FITA 20 Nº M', 9.7, 16.9, 2, 0.0, '{}'::JSONB, 13);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER DUPLO FITA 20 Nº 4', 6.6, 18.9, 2, 0.0, '{}'::JSONB, 14);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL NYLON NEOPREME Nº G', 18.84, 42.9, 1, 0.0, '{}'::JSONB, 15);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº1', 1.67, 2.69, 2, 0.0, '{}'::JSONB, 16);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº2', 1.99, 3.14, 2, 0.0, '{}'::JSONB, 17);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº5', 4.38, 6.9, 4, 0.0, '{}'::JSONB, 18);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COL. COURO PINTADA Nº6', 5.7, 9.4, 3, 0.0, '{}'::JSONB, 19);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 1', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 20);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 2', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 21);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON TUBOLAR FITA 15 MM Nº 3', 2.2, 3.5, 6, 0.0, '{}'::JSONB, 22);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA NYLON LISA FITA 20MM  Nº 4', 2.68, 4.0, 6, 0.0, '{}'::JSONB, 23);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 3 FITA 20', 6.65, 6.5, 3, 0.0, '{}'::JSONB, 24);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA POLIESTER DUPLA NR 4 FITA 20', 7.65, 7.9, 4, 0.0, '{}'::JSONB, 25);
    END IF;
  END IF;

  -- PEDIDO #117 ignorado (visitDate inválida: '')
  -- Pedido #118 — AGROPECUARIA VERSONSET — 2025-12-02
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VERSONSET';
  IF _client_id IS NULL THEN
    RAISE NOTICE 'Cliente não encontrado: AGROPECUARIA VERSONSET';
  ELSE
    SELECT EXISTS(SELECT 1 FROM orders WHERE client_id = _client_id AND visit_date = '2025-12-02') INTO _exists;
    IF NOT _exists THEN
      INSERT INTO orders (client_id, visit_date, nf_date, status, payment, global_discount, obs)
      VALUES (_client_id, '2025-12-02', '2025-12-02', 'Entregue', 'BOLETOS 30-45', 0.0, '')
      RETURNING id INTO _order_id;
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 3', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 0);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLYESTER DESENHOS FITA 15 Nº 4', 6.9, 12.9, 5, 0.0, '{}'::JSONB, 1);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº P', 10.9, 19.9, 5, 0.0, '{}'::JSONB, 2);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº M', 11.9, 21.9, 3, 0.0, '{}'::JSONB, 3);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER EM X(AMER) FITA 25 Nº G', 12.9, 25.9, 3, 0.0, '{}'::JSONB, 4);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 15 TAM P', 0.0, 5.9, 6, 0.0, '{}'::JSONB, 5);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'COLEIRA REGUL POLIESTER FITA 25 TAM G', 0.0, 8.9, 6, 0.0, '{}'::JSONB, 6);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER    C/   1 MT', 2.4, 6.5, 4, 0.0, '{}'::JSONB, 7);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   60 CM', 2.4, 12.6, 4, 0.0, '{}'::JSONB, 8);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'GUIA DE POLIESTER DUPLA   C/   1 MT', 2.4, 14.9, 4, 0.0, '{}'::JSONB, 9);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'CINTO DE SEGURANÇA PET POLIESTER FITA 25', 7.2, 10.9, 6, 0.0, '{}'::JSONB, 10);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO FITA 13MM TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 11);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'PEITORAL POLIESTER GATO FITA 15MM TAM ÚNICO', 2.1, 12.9, 3, 0.0, '{}'::JSONB, 12);
      INSERT INTO order_items (order_id, product_id, description, cost, price, qty, discount, colors, sort_order)
      VALUES (_order_id, '', 'ALMOFADA COM SILICONE TAM GG', 21.2, 39.9, 3, 0.0, '{}'::JSONB, 13);
    END IF;
  END IF;

  -- ─── Visitas ────────────────────────────────────
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-06-25', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-06-25');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'A CASA DO PET BAL. CAMBORIÚ';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGRO RURAL (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-29', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-29');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-24', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-24');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-16', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-16');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AMARAL (BARRA VELHA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AMARAL (BARRA VELHA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-19', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-19');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-14', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-14');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA BENTO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-25', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-25');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA COELHO (ITAJAI)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA COUTO (FABRICIO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-17', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-17');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA COUTO (FABRICIO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DA PENHA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DEDÉ CAMBORIU';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-20', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-20');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DEDÉ CAMBORIU';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-14', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-14');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO ITU (JANAINA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-26', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-26');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO ITU (JANAINA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-08', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-08');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO MANO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DOM QUIRINO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DOM QUIRINO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DU CAMPO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DU CAMPO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DU CAMPO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-26', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-26');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA EDUARDO (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (ITAJAÍ)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-05', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-05');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (ITAJAÍ)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-20', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-20');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA ELAINE (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-08', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-08');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA FORMENTO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-24', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-24');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA FRAN (FAZENDA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA GADOTTI';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA GADOTTI';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-18', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-18');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA GIOPET (ITAJAI)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA IMPERIO DAS RAÇÕES';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-30', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-30');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-17', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-17');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-15', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-15');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA DO INDIO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-25', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-25');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOÃO (CENTRO NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOÃO (CENTRO NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-19', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-19');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-25', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-25');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SÃO CRISTOVÃO (JOÃO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-18', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-18');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-19', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-19');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA JOSIAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-25', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-25');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-08', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-08');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA CONSALNI - LUAN';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-30', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-30');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANU (MURTA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-21', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-21');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANU (MURTA)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-12', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-12');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANUELA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-15', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-15');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANUELA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MANUELA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-14', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-14');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA RECANTO DOS ANIMAIS (MARCIO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-26', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-26');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-15', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-15');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MEIA PRAIA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MORRETES';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MORRETES';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MORRETES';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-16', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-16');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-08', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-08');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-16', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-16');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-14', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-14');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-02', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-02');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MULTI AGRO (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-13', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-13');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MUNDO PET (ITAJAI)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA MUNDO PET (ITAJAI)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA NP';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-15', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-15');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA NUNES - CAMBORIU';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-23', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-23');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAIVA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAIVA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-25', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-25');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-06', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-06');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-14', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-14');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULINIA (CAMBORIU)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-02', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-02');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-13', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-13');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-05', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-05');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PAULISTA (NAVEGANTES)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-02', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-02');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PET LIKE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PIÇARRAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PRO CAMPO (ALICIO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-15', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-15');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA PRO CAMPO (ALICIO)';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-02-17', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-02-17');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-10', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-10');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-11-26', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-11-26');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-07', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-07');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA QUATRO PATAS';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-16', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-16');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-04', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-04');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SEU JOÃO';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SOUZA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-09-18', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-09-18');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SOUZA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA SOUZA';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-03', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-03');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA TRADIÇÃO CAMBORIU';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-01', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-01');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA TRADIÇÃO CAMBORIU';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-14', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-14');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VALENT´S';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-10-17', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-10-17');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VALENT´S';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-01-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-01-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VALENT´S';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-03-09', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-03-09');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA VERSONSET';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2025-12-02', 'pedido', ''
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2025-12-02');
  END IF;
  SELECT id INTO _client_id FROM clients WHERE name = 'AGROPECUARIA AGROJEPE';
  IF _client_id IS NOT NULL THEN
    INSERT INTO visits (client_id, date, result, obs)
    SELECT _client_id, '2026-04-14', 'pedido', 'Pedido realizado'
    WHERE NOT EXISTS (SELECT 1 FROM visits WHERE client_id = _client_id AND date = '2026-04-14');
  END IF;

END $$;