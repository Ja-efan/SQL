CREATE TABLE DEVELOPERS(
    ID VARCHAR(50) UNIQUE NOT NULL,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    EMAIL VARCHAR(50) UNIQUE NOT NULL,
    SKILL_CODE INTEGER NOT NULL
);
INSERT INTO DEVELOPERS (ID, FIRST_NAME, LAST_NAME, EMAIL, SKILL_CODE) VALUES
('D165', 'Jerami', 'Edwards', 'jerami_edwards@grepp.co', 400),
('D161', 'Carsen', 'Garza', 'carsen_garza@grepp.co', 2048),
('D164', 'Kelly', 'Grant', 'kelly_grant@grepp.co', 1024),
('D163', 'Luka', 'Cory', 'luka_cory@grepp.co', 16384),
('D162', 'Cade', 'Cunningham', 'cade_cunningham@grepp.co', 8452);
