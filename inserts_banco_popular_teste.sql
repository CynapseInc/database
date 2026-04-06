USE encanto_personalizados;

INSERT INTO categoria_movimentacao (descricao, status) VALUES
('Venda', 1),
('Compra de Insumos', 1),
('Despesa Operacional', 1);

INSERT INTO categoria_tema (ativo, titulo) VALUES
(1, 'Aniversário'),
(1, 'Casamento'),
(1, 'Geek'),
(1, 'Motivacional');

INSERT INTO cliente (nome, telefone, created_at, updated_at) VALUES
('João Silva', '11999999999', NOW(), NOW()),
('Maria Oliveira', '11988888888', NOW(), NOW());

INSERT INTO contraparte (nome, descricao, segmento, tipo_contrato, status, created_at, updated_at) VALUES
('Fornecedor ABC', 'Fornecedor de canecas e tecidos', 'Insumos', 'Recorrente', 1, NOW(), NOW()),
('Mercado Livre', 'Marketplace de vendas', 'Plataforma', 'Comissão', 1, NOW(), NOW());

INSERT INTO item_produto (descricao, material, altura, comprimento, largura, peso, custo_producao, preco_promocional, preco_venda, prazo_producao, ativo, created_at, updated_at) VALUES
('Caneca Branca', 'Cerâmica', 10, 8, 8, 0.3, 8.00, 19.90, 29.90, 2, 1, NOW(), NOW()),
('Camiseta Personalizada', 'Algodão', 70, 50, 1, 0.2, 20.00, 39.90, 59.90, 3, 1, NOW(), NOW()),
('Caderno Personalizado', 'Papel/Cartão', 21, 15, 2, 0.5, 12.00, 29.90, 39.90, 2, 1, NOW(), NOW());

INSERT INTO status_pedido (status, cor, ordem_kanban, ativo, created_at, updated_at) VALUES
('Pedido Recebido', 'cinza', 1, 1, NOW(), NOW()),
('Em Produção', 'azul', 2, 1, NOW(), NOW()),
('Enviado', 'laranja', 3, 1, NOW(), NOW()),
('Entregue', 'verde', 4, 1, NOW(), NOW());

INSERT INTO usuario (name, email, password, cpf, cargo, status, created_at, updated_at) VALUES
('Roberto', 'roberto@gmail.com', '123456', '00000000000', 'Administrador', 1, NOW(), NOW()),
('Juliana', 'atendente@gmail.com', '123456', '11111111111', 'Vendas', 1, NOW(), NOW());

INSERT INTO endereco_cliente (cep, logradouro, num_logradouro, bairro, cidade, estado, uf, ativo, created_at, updated_at, cliente_id) VALUES
('01001000', 'Rua A', '123', 'Centro', 'São Paulo', 'SP', 'SP', 1, NOW(), NOW(), 1),
('02002000', 'Rua B', '456', 'Zona Norte', 'São Paulo', 'SP', 'SP', 1, NOW(), NOW(), 2);

INSERT INTO tema_produto (descricao, ativo, created_at, updated_at, categoria_tema_id) VALUES
('Aniversário', 1, NOW(), NOW(), 1),
('Star Wars', 1, NOW(), NOW(), 3),
('Skate', 1, NOW(), NOW(), 4);

INSERT INTO pedido (origem, observacoes, preco_total, peso_total, data_limite, ativo, created_at, updated_at, cliente_id, usuario_id) VALUES
('Site', 'Cliente quer nome João na caneca', 59.80, 0.6, DATE_ADD(NOW(), INTERVAL 3 DAY), 1, NOW(), NOW(), 1, 2),
('Instagram', 'Entrega urgente', 99.90, 0.7, DATE_ADD(NOW(), INTERVAL 2 DAY), 1, NOW(), NOW(), 2, 2);

INSERT INTO movimentacao (tipo, descricao, valor, status_pagamento, data_vencimento, status, created_at, updated_at, categoria_movimentacao_id, contraparte_id) VALUES
('Entrada', 'Venda Pedido #1', 59.80, 'Pago', CURDATE(), 1, NOW(), NOW(), 1, 2),
('Saída', 'Compra de canecas', 200.00, 'Pago', CURDATE(), 1, NOW(), NOW(), 2, 1);

INSERT INTO produto (titulo, descricao, ativo, created_at, updated_at, item_produto_id, tema_produto_id) VALUES
('Caneca Aniversário', 'Caneca personalizada com nome', 1, NOW(), NOW(), 1, 1),
('Camiseta Star Wars', 'Camiseta temática geek', 1, NOW(), NOW(), 2, 2),
('Caderno Skate', 'Caderno com capa de skate', 1, NOW(), NOW(), 3, 3);

INSERT INTO pedido_status_pedido (status_atual, created_at, updated_at, pedido_id, status_id) VALUES
(1, NOW(), NOW(), 1, 1),
(1, NOW(), NOW(), 2, 2);

INSERT INTO produto_pedido (qtd_produto, preco_unitario, preco_total, peso_unitario, peso_total, created_at, updated_at, pedido_id, produto_id) VALUES
(2, 29.90, 59.80, 0.3, 0.6, NOW(), NOW(), 1, 1),
(1, 59.90, 59.90, 0.2, 0.2, NOW(), NOW(), 2, 2),
(1, 39.90, 39.90, 0.5, 0.5, NOW(), NOW(), 2, 3);