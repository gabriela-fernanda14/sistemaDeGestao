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
