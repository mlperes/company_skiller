--Exercício: Insira três funcionários na tabela Funcionarios, garantindo que os emails sejam únicos.
--Expectativa: Dados inseridos sem erros de violação de unicidade.

INSERT INTO Employess (first_name,last_name, email, hire_date, salary)
VALUES ('Aline', 'Gomes', 'Aline@rogpe.tech', DATE '2024-04-11', 4000.00);

INSERT INTO Employess (first_name,last_name, email, hire_date, salary)
VALUES ('Alberto', 'Ferreira', 'Alberto@rogpe.tech', DATE '2023-06-05', 2500.00);

INSERT INTO Employess (first_name,last_name, email, hire_date, salary)
VALUES ('Amanda', 'Oliveira', 'Amanda@rogpe.tech', DATE '2024-04-11', 5000.00);

INSERT INTO Employess (first_name,last_name, email, hire_date, salary)
VALUES ('Diogo', 'Valiatti', 'dIOGO@rogpe.tech', DATE '2024-04-11', 1500.00);

INSERT INTO Employess (first_name,last_name, email, hire_date, salary)
VALUES ('Maria', 'Vittar', 'vittar@rogpe.tech', DATE '2023-06-05', 2200.00);

INSERT INTO Employess (first_name,last_name, email, hire_date, salary)
VALUES ('Anitta', 'Mancebo', 'Anitta@rogpe.tech', DATE '2024-04-11', 2000.00);


--Inserção de Gerentes

INSERT INTO Managers (username, first_name)
VALUES ('manager01', 'Aline');

INSERT INTO Managers (username, first_name)
VALUES ('manager02', 'FAlberto');

INSERT INTO Managers (username, first_name)
VALUES ('manager03', 'Diogo');
 


--Inserção com Chave Estrangeira: Exercício: Insira um departamento chamado "TI" com o gerente_id sendo o id de um dos funcionários existentes.
  
INSERT INTO Departaments (departament_name, manager_id_id) VALUES ('Human Resources', 1);

INSERT INTO Departaments (departament_name, manager_id_id) VALUES ('Finance', 2);

INSERT INTO Departaments (departament_name, manager_id_id) VALUES ('IT', 3);


--Exercício: Delete o departamento 'RH' e insira um novo departamento chamado 'Marketing', garantindo que os IDs sequenciais não sejam reutilizados. Expectativa: 'RH' removido e 'Marketing' adicionado com um novo ID sequencial.

DELETE FROM Departaments WHERE nome = 'Human Resources';

INSERT INTO departamentos (departament_name, gerente_id)
VALUES ('Marketing',6);