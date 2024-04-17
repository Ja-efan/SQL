-- Active: 1713328275487@@127.0.0.1@3306@programmers
CREATE TABLE DEVELOPER_INFOS(  
    ID VARCHAR(10) NOT NULL PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(100) UNIQUE NOT NULL,
    SKILL_1 VARCHAR(50),
    SKILL_2 VARCHAR(50),
    SKILL_3 VARCHAR(50)
);

INSERT INTO DEVELOPER_INFOS (ID, FIRST_NAME, LAST_NAME, EMAIL, SKILL_1, SKILL_2, SKILL_3) VALUES
('D165', 'Jerami', 'Edwards', 'jerami_edwards@grepp.co', 'Java', 'JavaScript', 'Python'),
('D161', 'Carsen', 'Garza', 'carsen_garza@grepp.co', 'React', NULL, NULL),
('D164', 'Kelly', 'Grant', 'kelly_grant@grepp.co', 'C#', NULL, NULL),
('D163', 'Luka', 'Cory', 'luka_cory@grepp.co', 'Node.js', NULL, NULL),
('D162', 'Cade', 'Cunningham', 'cade_cunningham@grepp.co', 'Vue', 'C++', 'Python');