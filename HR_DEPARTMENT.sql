create table HR_DEPARTMENT(
    DEPT_ID VARCHAR(50) NOT NULL PRIMARY KEY,
    DEPT_NAME_KR VARCHAR(50) NOT NULL,
    DEPT_NAME_EN VARCHAR(50) NOT NULL,
    LOCATION VARCHAR(50) NOT NULL
);

INSERT INTO HR_DEPARTMENT (`DEPT_ID`, `DEPT_NAME_KR`, `DEPT_NAME_EN`, `LOCATION`) VALUES
('D0001', '법무팀' ,'Law Dep', '그렙타워 4층'),
('D0002', '인사팀' ,'Human resources', '그렙타워 4층'),
('D0003', '총무팀' ,'General Affairs', '그렙타워 4층');
