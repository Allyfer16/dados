CREATE TABLE estados ( id_estados INT UNSIGNED NOT NULL AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL, 
sigla VARCHAR(2) NOT NULL, 
regiao ENUM('Norte', 'Nordeste', 'Centro-Oeste', 'Sudeste', 'Sul') NOT NULL, 
populacao DECIMAL(5,2) NOT NULL, 
PRIMARY KEY (id_estado), 
UNIQUE KEY (nome), 
UNIQUE KEY (sigla),
 );

 Create table if not exists cidades (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    estado_id INT UNSIGNED NOT NULL,
    area DECIMAL(10,2),
    PRIMARY KEY (id),
    FOREIGN KEY (estado_id) REFERENCES estados (id_estado)
)