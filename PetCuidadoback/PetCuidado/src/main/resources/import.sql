insert into tb_pessoa(nome, cpf, email, telefone) values ('Pessoa 1', '123456789', 'Pessoa1@gmail.com', '(31)981479632');
insert into tb_pessoa(nome, cpf, email, telefone) values ('Pessoa 2', '987654321', 'Pessoa2@gmail.com', '(31)988957412');
insert into tb_pessoa(nome, cpf, email, telefone) values ('Pessoa 3', '147258369', 'Pessoa3@gmail.com', '(31)989123698');
insert into tb_pessoa(nome, cpf, email, telefone) values ('Pessoa 4', '159632478', 'Pessoa4@gmail.com', '(31)989784569');
insert into tb_pessoa(nome, cpf, email, telefone) values ('Pessoa 5', '963852741', 'Pessoa5@gmail.com', '(31)985220022');


insert into tb_funcionario(usuario, senha, cargo, id_pessoa) values ('user1', 'senha1', 3, 1);
insert into tb_funcionario(usuario, senha, cargo, id_pessoa) values ('user2', 'senha2', 2, 2);
insert into tb_funcionario(usuario, senha, cargo, id_pessoa) values ('user3', 'senha3', 1, 3);
insert into tb_funcionario(usuario, senha, cargo, id_pessoa) values ('user4', 'senha4', 0, 4);
insert into tb_funcionario(usuario, senha, cargo, id_pessoa) values ('user5', 'senha5', 1, 5);


insert into tb_pet(nome, especie, raca, idade, id_pessoa_dono) values ('pet1', 'especie1', 'raca1', 1, 1);
insert into tb_pet(nome, especie, raca, idade, id_pessoa_dono) values ('pet2', 'especie2', 'raca2', 2, 2);
insert into tb_pet(nome, especie, raca, idade, id_pessoa_dono) values ('pet3', 'especie3', 'raca3', 3, 3);


INSERT INTO tb_servico(descricao, preco, duracao) VALUES ('Tosa', 50.00, 29);
INSERT INTO tb_servico(descricao, preco, duracao) VALUES ('Banho', 150.00, 59);
INSERT INTO tb_servico(descricao, preco, duracao) VALUES ('Vacinação', 75.50, 29);

INSERT INTO tb_agendamento(data, status, id_pet, id_servico, id_funcionario) VALUES ('2021-05-10 14:00:00', 0, 1, 1, 2);
INSERT INTO tb_agendamento(data, status, id_pet, id_servico, id_funcionario) VALUES ('2021-05-11 15:00:00', 0, 2, 2, 1);
INSERT INTO tb_agendamento(data, status, id_pet, id_servico, id_funcionario) VALUES ('2021-05-10 10:00:00', 0, 1, 2, 2);
INSERT INTO tb_agendamento(data, status, id_pet, id_servico, id_funcionario) VALUES ('2021-05-13 11:00:00', 0, 3, 1, 3);
INSERT INTO tb_agendamento(data, status, id_pet, id_servico, id_funcionario) VALUES ('2021-05-13 14:00:00', 0, 3, 2, 3);
INSERT INTO tb_agendamento(data, status, id_pet, id_servico, id_funcionario) VALUES ('2021-05-13 15:00:00', 0, 3, 3, 5);

INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-10 14:00:00', null, 50.00, 4, 0, 1);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-11 15:00:00', null, 150.00, 3, 0, 2);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-10 10:00:00', null, 150.00, 1, 0, 3);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-13 11:00:00', null, 50.00, 2, 0, 4);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-13 14:00:00', null, 25.00, 2, 0, 5);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-13 14:00:00', null, 25.00, 2, 0, 5);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-13 14:00:00', null, 100.00, 2, 0, 5);
INSERT INTO tb_pagamento(data_vencimento, data_pagamento, valor, metodo, status, id_agendamento) VALUES ('2021-05-13 15:00:00', null, 75.00, 4, 0, 6);