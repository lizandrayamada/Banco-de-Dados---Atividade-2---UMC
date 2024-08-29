-- 0. Criação do Banco de Dados
CREATE DATABASE PessoasDatabase;
USE PessoasDatabase;
 
-- 1. Criação da Tabela PESSOAS
CREATE TABLE PESSOAS (
  codigo VARCHAR(255),
  nome VARCHAR(255),
  cpf VARCHAR(14),
  rg VARCHAR(20),
  email VARCHAR(255)
);
 
INSERT INTO PESSOAS (codigo, nome, cpf, rg, email) VALUES
('01', 'João Silva', '123.456.789-01', 'MG1234567', 'joao.silva@example.com'),
('02', 'Maria Oliveira', '234.567.890-12', 'SP2345678', 'maria.oliveira@example.com'),
('03', 'Pedro Santos', '345.678.901-23', 'RJ3456789', 'pedro.santos@example.com'),
('04', 'Ana Costa', '456.789.012-34', 'RS4567890', 'ana.costa@example.com'),
('05', 'Lucas Pereira', '567.890.123-45', 'DF5678901', 'lucas.pereira@example.com'),
('06', 'Fernanda Almeida', '678.901.234-56', 'BA6789012', 'fernanda.almeida@example.com'),
('07', 'Carlos Lima', '789.012.345-67', 'CE7890123', 'carlos.lima@example.com'),
('08', 'Juliana Rocha', '890.123.456-78', 'PR8901234', 'juliana.rocha@example.com'),
('09', 'Ricardo Fernandes', '901.234.567-89', 'SC9012345', 'ricardo.fernandes@example.com'),
('10', 'Gabriela Martins', '012.345.678-90', 'GO0123456', 'gabriela.martins@example.com'),
('11', 'Roberto Nunes', '123.456.780-12', 'MT1234567', 'roberto.nunes@example.com'),
('12', 'Patrícia Soares', '234.567.891-23', 'MS2345678', 'patricia.soares@example.com'),
('13', 'Marcos Castro', '345.678.902-34', 'AM3456789', 'marcos.castro@example.com'),
('14', 'Larissa Carvalho', '456.789.013-45', 'PA4567890', 'larissa.carvalho@example.com'),
('15', 'André Souza', '567.890.124-56', 'TO5678901', 'andre.souza@example.com'),
('16', 'Camila Dias', '678.901.235-67', 'MA6789012', 'camila.dias@example.com'),
('17', 'Eduardo Lima', '789.012.346-78', 'PI7890123', 'eduardo.lima@example.com'),
('18', 'Tatiane Costa', '890.123.457-89', 'SE8901234', 'tatiane.costa@example.com'),
('19', 'Felipe Barbosa', '901.234.568-90', 'AL9012345', 'felipe.barbosa@example.com'),
('20', 'Viviane Araújo', '012.345.679-01', 'PB0123456', 'viviane.araujo@example.com'),
('21', 'Rafael Lima', '123.456.791-12', 'ES1234567', 'rafael.lima@example.com'),
('22', 'Bianca Freitas', '234.567.892-23', 'MA2345678', 'bianca.freitas@example.com'),
('23', 'João Vitor', '345.678.903-34', 'RO3456789', 'joao.vitor@example.com'),
('24', 'Julio César', '456.789.014-45', 'AC4567890', 'julio.cesar@example.com'),
('25', 'Nathalia Pinto', '567.890.125-56', 'AP5678901', 'nathalia.pinto@example.com'),
('26', 'Roberta Silva', '678.901.236-67', 'RR6789012', 'roberta.silva@example.com'),
('27', 'Eduardo Almeida', '789.012.347-78', 'PA7890123', 'eduardo.almeida@example.com'),
('28', 'Monique Campos', '890.123.458-89', 'BA8901234', 'monique.campos@example.com'),
('29', 'Leonardo Lima', '901.234.579-90', 'CE9012345', 'leonardo.lima@example.com'),
('30', 'Sofia Mendes', '012.345.680-01', 'PR0123456', 'sofia.mendes@example.com');
 
-- 2. Renomear a Tabela para FUNCIONARIOS
RENAME TABLE PESSOAS TO FUNCIONARIOS;
 
-- 3. Adicionar Colunas telefone e data_nascimento
ALTER TABLE FUNCIONARIOS
ADD telefone VARCHAR(15),
ADD data_nascimento DATE;
 
UPDATE FUNCIONARIOS
SET telefone = '123456789', data_nascimento = '1985-05-15'
WHERE nome = 'João Silva';
 
UPDATE FUNCIONARIOS
SET telefone = '987654321', data_nascimento = '1990-09-25'
WHERE nome = 'Maria Oliveira';
 
UPDATE FUNCIONARIOS
SET telefone = '456789123', data_nascimento = '1982-12-30'
WHERE nome = 'Pedro Santos';
 
UPDATE FUNCIONARIOS
SET codigo = '000', nome = 'Desconhecido', cpf = '000.000.000-00', rg = '0000000', email = 'desconhecido@example.com', telefone = '000000000', data_nascimento = '1900-01-01'
WHERE codigo IS NULL OR nome IS NULL OR cpf IS NULL OR rg IS NULL OR email IS NULL OR telefone IS NULL OR data_nascimento IS NULL;
 
-- 4. Modificar Colunas para NÃO NULOS
ALTER TABLE FUNCIONARIOS
MODIFY codigo VARCHAR(255) NOT NULL,
MODIFY nome VARCHAR(255) NOT NULL,
MODIFY cpf VARCHAR(14) NOT NULL,
MODIFY rg VARCHAR(20) NOT NULL,
MODIFY email VARCHAR(255) NOT NULL,
MODIFY telefone VARCHAR(15) NOT NULL,
MODIFY data_nascimento DATE NOT NULL;
 
-- 5. Modificar Coluna data_nascimento para Permitir Nulos
ALTER TABLE FUNCIONARIOS
MODIFY data_nascimento DATE NULL;
 
-- 6. Remover Coluna rg
ALTER TABLE FUNCIONARIOS
DROP COLUMN rg;
 
-- 7. Alterar Nome da Coluna telefone para celular
ALTER TABLE FUNCIONARIOS
CHANGE COLUMN telefone celular VARCHAR(15) NOT NULL;
 
SELECT * FROM FUNCIONARIOS;