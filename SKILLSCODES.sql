CREATE TABLE SKILLCODES (
    NAME VARCHAR(50) UNIQUE NOT NULL,
    CATEGORY VARCHAR(50) NOT NULL,
    CODE VARCHAR(50) UNIQUE NOT NULL
);

INSERT INTO SKILLCODES (NAME, CATEGORY, CODE) VALUES
('C++', 'Back End', '4'),
('JavaScript', 'Front End', '16'),
('Java', 'Back End', '128'),
('Python', 'Back End', '256'),
('C#', 'Back End', '1024'),
('React', 'Front End', '2048'),
('Vue', 'Front End', '8192'),
('Node.js', 'Back End', '16384');