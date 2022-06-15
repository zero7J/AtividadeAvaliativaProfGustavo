/*Atividade avaliativa realizada por Jo�o Paulo Bezerra Oliveira,
Aluno do curso de Desenvolvimento de Sistemas do SENAI Dr. Celso Charuri.
Curitiba, 15/06/2022 */

CREATE DATABASE Sistema1

CREATE TABLE Funcionarios(
Codigo INT PRIMARY KEY NOT NULL,
PrimeiroNome VARCHAR (255) NOT NULL,
SegundoNome VARCHAR (255),
UltimoNome VARCHAR (255) NOT NULL,
DataNasc DATETIME NOT NULL,
CPF VARCHAR (255) NOT NULL,
RG VARCHAR (255) NOT NULL,
Endereco VARCHAR (255),
CEP VARCHAR (255) NOT NULL,
Cidade VARCHAR (255) NOT NULL,
NumFone VARCHAR (255) NOT NULL,
CodigoDepartamento VARCHAR (255) NOT NULL,
Funcao VARCHAR (255) NOT NULL,
CodigoFuncionarioGerente VARCHAR (255) NOT NULL,
Salario MONEY NOT NULL
)

INSERT INTO Funcionarios(Codigo, PrimeiroNome, SegundoNome, UltimoNome, DataNasc, CPF,
RG, Endereco, CEP, Cidade, NumFone, CodigoDepartamento, Funcao, CodigoFuncionarioGerente, Salario)
VALUES (3215, 'Joao', 'Bezerra', 'Oliveira', '1994-10-26', '05282150155', '154971111',
'Rua Afonso Arinos', '82810430', 'S�o Paulo', '11965327411', '15', 'Vendedor', '1526', 2500.00),
(3216, 'Anderson', '', 'Ribeiro', '1998-04-15', '05274191101', '159874369',
'Rua Matheus Silva', '87960111', 'Ara�atuba', '15988776655', '16', 'Administrador', '1627', 4500.00),
(3217, 'Tiago', 'Fernandes', 'Nunes', '1991-12-02', '15935744136', '654321789', 'Rua da Patria',
'79455122', 'Curitiba', '41988256741', '14', 'Programador', '1427', 3750.50),
(3218, 'Roberto', 'Barros', 'Pimenta', '1990-01-01', '36985274111', '236598741',
'Rua das Flores', '62544987', 'Recife', '23955695421', '13', 'Supervisor', '1320', 3900.00),
(3219, 'Ana', 'Alves', 'Bittencourt', '1995-12-11', '96345562115', '159875231',
'Avenida das Torres', '75411630', 'Rio de Janeiro', '21977851212', '12', 'Telefonista', '1210', 980.00),
(3220, 'Fernanda', 'Ghott', 'Silva', '1990-05-20', '04152207136', '3655987',
'Rua Silveira Martins', '62455987', 'Campo Grande', '67975446523', '11', 'Gerente', '1111', 7650.00)


CREATE TABLE Departamentos(
Codigo INT PRIMARY KEY NOT NULL,
Nome VARCHAR (255) NOT NULL,
Localizacao VARCHAR (255) NOT NULL,
CodigoFuncionarioGerente VARCHAR (255) NOT NULL)

INSERT INTO Departamentos(
Codigo, Nome, Localizacao, CodigoFuncionarioGerente) VALUES
(1212, 'Pessoal', 'Rua Afonso Arinos', '1320'),
(1211, 'Administrativo', 'Rua Leopoldod Belzack', '1427'),
(1210, 'Comercial', 'Rua Paula Gomes', '1526'),
(1209, 'Recursos Humanos', 'Avenida Marechal Floriano Peixoto', '1111'),
(1208, 'TI', 'Rua Profssor Benedito Concei��o', '1427')

/* Exerc�cio 1: Listar nome e sobrenome ordenado por sobrenome. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios ORDER BY UltimoNome ASC

/* Exerc�cio 2: Listar todos os campos de funcion�rios ordenados por cidade. */

SELECT * FROM Funcionarios ORDER BY Cidade ASC

/* Exerc�cio 3: Liste os funcion�rios que t�m sal�rio superior a R$ 1.000,00 ordenados
pelo nome completo. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE Salario > 1000.00

/* Exerc�cio 4: Liste a data de nascimento e o primeiro nome dos funcion�rios
ordenados do mais novo para o mais velho. */

SELECT DataNasc, PrimeiroNome FROM Funcionarios ORDER BY DataNasc ASC

/* Exerc�cio 5: Liste os funcion�rios como uma listagem telef�nica. */

SELECT PrimeiroNome, SegundoNome, UltimoNome, NumFone, Endereco, CEP FROM Funcionarios ORDER BY PrimeiroNome ASC

/* Exerc�cio 6: Liste o total da folha de pagamento. */

SELECT SUM(Salario) FROM Funcionarios

/* Exerc�cio 7: Liste o nome, o nome do departamento e a fun��o de todos os
funcion�rios . */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios
SELECT Nome FROM Departamentos
SELECT Funcao FROM Funcionarios

/* Exerc�cio 8: Liste os funcion�rios que t�m sal�rio inferior a R$ 1.000,00 ordenados
pelo nome completo. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE Salario < 1000.00 ORDER BY PrimeiroNome

/* Exerc�cio 9: Liste o valor da folha de pagamento de cada departamento (nome).  */

---

/* Exerc�cio 10: Liste os departamentos dos funcion�rios que t�m a fun��o de supervisor. */

SELECT Nome FROM Departamentos WHERE Nome = 'Administrativo'

/* Exerc�cio 11:Liste a quantidade de funcion�rios desta empresa . */

SELECT COUNT(Codigo) FROM Funcionarios

/* Exerc�cio 12:Liste o sal�rio m�dio pago pela empresa. */

SELECT AVG(Salario) FROM Funcionarios;

/* Exerc�cio 13:Liste o menor sal�rio pago pela empresa em cada departamento. */

SELECT Salario FROM Funcionarios WHERE Salario DESC

/* Exerc�cio 14:Liste o nome completo de todos os funcion�rios que n�o tenham
segundo nome.*/

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE SegundoNome IS NULL

/* Exerc�cio 15:Liste o nome do departamento e do funcion�rio ordenados por
departamento e funcion�rio. */

SELECT Nome FROM Departamentos
SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios

/* Exerc�cio 16:Liste os nomes dos funcion�rios que moram em Recife e que exer�am
a fun��o de Programador. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE Cidade = 'Recife' AND Funcao = 'Programador'

/* Exerc�cio 17: Liste os nomes dos funcion�rios que trabalham no departamento
Pessoal. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE CodigoFuncionarioGerente = '1320'

/* Exerc�cio 18:Liste o nome e o departamento de todos os funcion�rios que ganham
mais de 5 mil. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE Salario > 5000.00

/* Exerc�cio 19: Liste os nomes dos funcion�rios que moram em Curitiba e que
exer�am a fun��o de Telefonista. */

SELECT PrimeiroNome, SegundoNome, UltimoNome FROM Funcionarios WHERE Cidade = 'Curitiba' AND Funcao = 'Telefonista'

/*  Exerc�cio 20: Liste os departamentos dos funcion�rios que t�m a fun��o de Programador. */

SELECT Nome FROM Departamentos WHERE CodigoFuncionarioGerente = '1427'