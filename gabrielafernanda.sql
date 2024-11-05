CREATE DATABASE clinica;

CREATE TABLE pacientes (
    id_paciente SERIAL PRIMARY KEY.
    nome_paciente VARCHAR (50),
    email_paciente VARCHAR (50),
    telefone_paciente VARCHAR (50)
);

CREATE TABLE medicos (
    id_medico SERIAL PRIMARY KEY,
    nome_medico VARCHAR(50),
    especialidade_medico VARCHAR(50)
);

CREATE TABLE consultas(
    id_consulta SERIAL PRIMARY KEY,
    id_paciente INT,
    id_medico  INT,
    data_consulta DATE,
    motivo_consulta VARCHAR(50),
    CONSTRAINT fk_paciente FOREIGN KEY (id_paciente) REFERENCES pacientes (id_paciente),
    CONSTRAINT fk_medico FOREIGN KEY (id_medico) REFERENCES medicos (id_medico)
);

INSERT INTO pacientes  (nome_paciente, email_paciente, telefone_paciente) VALUES ('Ana Luiza', 'analuiza@gmail.com', '(11) 98754-6064');
INSERT INTO pacientes  (nome_paciente, email_paciente, telefone_paciente) VALUES ('Pedro Henrique', 'pedrohenrique@gmail.com', '(11) 98853-4609');
INSERT INTO pacientes  (nome_paciente, email_paciente, telefone_paciente) VALUES ('Carlos Oliveira', 'carlosoliveira@gmail.com', '(19) 97697-7490');
INSERT INTO pacientes  (nome_paciente, email_paciente, telefone_paciente) VALUES ('Joao Pedro', 'joaopedro@gmail.com', '(19) 97653-9765');
INSERT INTO pacientes  (nome_paciente, email_paciente, telefone_paciente) VALUES ('Marcos Arruda', 'marcosarruda@gmail.com', '(11) 99123-5675')

INSERT INTO medicos (nome_medico, especialidade_medico) VALUES ('Juliana Tavares', 'Cardiologista');
INSERT INTO medicos (nome_medico, especialidade_medico) VALUES ('Vitor Gianoni', 'Ginecologista');
INSERT INTO medicos (nome_medico, especialidade_medico) VALUES ('Marina Pimentel', 'Ortopedista');
INSERT INTO medicos (nome_medico, especialidade_medico) VALUES ('Mariana de Souza', 'Cirurgião');
INSERT INTO medicos (nome_medico, especialidade_medico) VALUES ('Ana Paula', 'Neurologista');
INSERT INTO medicos (nome_medico, especialidade_medico) VALUES ('Joao Paulo', 'Pneumologista');

INSERT INTO consultas (id_paciente, id_medico, data_consulta, motivo_consulta) VALUES (1, 1, '2024-11-04', 'Pressão extremamente alta');
INSERT INTO consultas (id_paciente, id_medico, data_consulta, motivo_consulta) VALUES (4, 2, '2024-11-07', 'Dor ao urinar');
INSERT INTO consultas (id_paciente, id_medico, data_consulta, motivo_consulta) VALUES (3, 3, '2024-11-03', 'Dores musculares');
INSERT INTO consultas (id_paciente, id_medico, data_consulta, motivo_consulta) VALUES (5, 5, '2020-02-06', 'Convulsões');
INSERT INTO consultas (id_paciente, id_medico, data_consulta, motivo_consulta) VALUES (2, 4, '2024-11-08', 'Retirada de pintas');