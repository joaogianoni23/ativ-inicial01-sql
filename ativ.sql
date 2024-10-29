Campeonatos possui times
 
CREATE DATABASE futebol;

CREATE TABLE times (
id_time SERIAL PRIMARY KEY,
nome VARCHAR(150)
);

CREATE TABLE campeonatos (
id_campeonato SERIAL PRIMARY KEY,
nome VARCHAR(150),
id_time_fk INT,
FOREIGN KEY (id_time_fk) REFERENCES times(id_time)
);

INSERT INTO times (nome) VALUES
('Corinthians'),
('Flamengo'),
('Barcelona'),
('Al Hilal'),
('Inter Miami'),
('Boca Juniors'),
('West Ham'),
('Ajax'),
('Mônaco'),
('Al Rayyan');

SELECT * FROM times;

INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Qatar Stars League', 10);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Premier League', 7);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Sulamericana', 1);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('La Liga', 3);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Campeonato Argentino de Futebol', 6);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Brasileirão', 2);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Ligue 1', 9);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Eredivisie', 8);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('MLS', 5);
INSERT INTO campeonatos (nome, id_time_fk) VALUES ('Liga dos Campeões da AFC', 4);
INSERT INTO campeonatos (nome) VALUES ('Superliga Indiana');

SELECT campeonatos.nome, times.nome FROM campeonatos INNER JOIN times ON campeonatos.id_time_fk = times.id_time;

SELECT campeonatos.nome, times.nome FROM campeonatos LEFT JOIN times ON campeonatos.id_time_fk = times.id_time;

SELECT campeonatos.nome, times.nome FROM campeonatos RIGHT JOIN times ON campeonatos.id_time_fk = times.id_time;

SELECT campeonatos.nome, times.nome FROM campeonatos FULL JOIN times ON campeonatos.id_time_fk = times.id_time;