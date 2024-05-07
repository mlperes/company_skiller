-- Seleciona todos os dados de uma tabela

SELECT * FROM Employess; 

-- Lista dos funcionários cujo nome começa com 'A' --
SELECT * FROM Employess WHERE first_name ='a%';


--Atualização de Dados com CRUD - Update:
--Exercício: Atualize o email do funcionário cujo 'id' é 1 para um novo email.
--**Expectativa:** O email do funcionário cujo 'id' é 1 deve ser atualizado sem violar a
--constraint(restrição) de unicidade:
UPDATE Employess
SET first_name = 'Marcelo'
WHERE id = 1;


--Exclusão de Dados com CRUD - Delete
--Exercício: Delete o funcionário cujo 'id' é 3.
--**Expectativa:** O funcionário com 'id' 3 deve ser removido da tabela:
DELETE FROM Employess WHERE id = 3;

--Seleção de todos departamentos
SELECT * FROM Departaments d;

--9. Consulta com 'JOIN':
--Exercício: Faça uma consulta para listar todos os departamentos e o nome dos seus gerentes.
--**Expectativa:** Lista dos departamentos junto com o nome dos gerentes correspondentes.
SELECT d.department_name, m.first_name AS manager_name
FROM Departments d
LEFT JOIN Managers m ON d.manager_id = m.id;


--Uso de BETWEEN e IN: Exercício: Selecione todos os funcionários cujo id está entre 2 e 4 e cujo nome está em uma lista de nomes específicos (ex: 'Ana', 'Carlos').
--Expectativa: Lista de funcionários que satisfazem ambas as condições.

SELECT *
FROM Employees
WHERE id BETWEEN 2 AND 4
AND first_name IN ('Amanda', 'Diogo', 'Pablo');


--Intermediário
--Consulta Avançada com Subquery:
--Exercício: Selecione os nomes dos departamentos cujos gerentes têm um id menor que 5. **Expectativa: **Nomes dos departamentos cujos gerentes têm id < 5. Atualização com Subquery:

SELECT department_name
FROM Departments
WHERE manager_id < (SELECT id FROM Managers WHERE id < 5);

--Exercício: Atualize o gerente_id do departamento de TI para o id de um funcionário cujo nome é 'Maria'. Expectativa: gerente_id do departamento de TI atualizado corretamente.

UPDATE Departments
SET manager_id = (SELECT id FROM Employees WHERE first_name = 'Maria')
WHERE department_name = 'IT';


--Consulta com UNION:
--Exercício: Faça uma consulta que combine os nomes dos funcionários e os nomes dos departamentos em uma única lista. Expectativa: Lista combinada contendo tanto nomes de funcionários quanto de departamentos.
--Deleção e Manutenção de IDs Sequenciais:
SELECT first_name AS name, 'Employee' AS e
FROM Employees
UNION
SELECT department_name AS name, 'Department' AS d
FROM Departments;


--Consulta Complexa com Joins Múltiplos:

--Exercício: Liste todos os funcionários, os departamentos a que pertencem e o nome de seus gerentes. Expectativa: Informações detalhadas sobre funcionários, seus departamentos e gerentes.
SELECT 
    e.first_name AS employee_name,
    d.department_name AS department_name,
    m.first_name AS manager_name
FROM 
    Employees e
JOIN 
    Departments d ON e.department_id = d.id
LEFT JOIN 
    Managers m ON d.manager_id = m.id;