CREATE TABLE ECOLI_DATA(
    ID INTEGER NOT NULL,
    PARENT_ID INTEGER ,
    SIZE_OF_COLONY INTEGER NOT NULL,
    DIFFERENTIATION_DATE DATE NOT NULL,
    GENOTYPE INTEGER NOT NULL
);

INSERT INTO ECOLI_DATA (ID, PARENT_ID, SIZE_OF_COLONY, DIFFERENTIATION_DATE, GENOTYPE) VALUES
(1, NULL, 10, '2019-01-01', 5),
(2, NULL, 2, '2019-05-01', 3),
(3, 1, 100, '2020-01-01', 4),
(4, 2, 17, '2022-04-01', 4),
(5, 2, 10, '2020-09-01', 6),
(6, 4, 101, '2021-12-01', 22);

INSERT INTO ECOLI_DATA (ID, PARENT_ID, SIZE_OF_COLONY, DIFFERENTIATION_DATE, GENOTYPE) VALUES
(7,6,101,'2022-01-01', 23),
(8,6,1,'2022-01-01', 27);