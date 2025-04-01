DROP DATABASE IF EXISTS tik_tok;
-- Creación Base de Datos
CREATE DATABASE tik_tok;
USE tik_tok;
CREATE TABLE user (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
surname VARCHAR(50) NOT NULL,
email VARCHAR(50) NOT NULL,
password VARCHAR(50) NOT NULL
);
CREATE TABLE administrator (
id INT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES user(id)
);
CREATE TABLE client (
id INT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES user(id),
tasks VARCHAR(50) NOT NULL
);
CREATE TABLE reviewoverseer (
id INT,
PRIMARY KEY (id),
FOREIGN KEY (id) REFERENCES user(id)
);
CREATE TABLE project (
id INT AUTO_INCREMENT PRIMARY KEY,
owner_id VARCHAR(50) NOT NULL,
numtasks int NOT NULL,
startdate VARCHAR(50) NOT NULL,
duedate VARCHAR(50) NOT NULL,
iscompleted BOOLEAN NOT NULL
);
CREATE TABLE task (
id_project INT NOT NULL,
id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (id_project) REFERENCES project(id),
iscompleted BOOLEAN NOT NULL
);
CREATE TABLE review (
id_client INT NOT NULL,
id INT AUTO_INCREMENT PRIMARY KEY,
FOREIGN KEY (id_client) REFERENCES client(id)
);
CREATE TABLE oversees (
    id_overseer INT,
    id_review INT,
    PRIMARY KEY (id_overseer, id_review),
    FOREIGN KEY (id_overseer) REFERENCES reviewoverseer(id),
    FOREIGN KEY (id_review) REFERENCES review(id)
);
CREATE TABLE creates (
    id_project INT,
    id_client INT,
    PRIMARY KEY (id_project, id_client),
    FOREIGN KEY (id_project) REFERENCES project(id),
    FOREIGN KEY (id_client) REFERENCES client(id)
);
CREATE TABLE manages (
    id_user INT,
    id_administrator INT,
    PRIMARY KEY (id_user, id_administrator),
    FOREIGN KEY (id_user) REFERENCES user(id),
    FOREIGN KEY (id_administrator) REFERENCES administrator(id)
);