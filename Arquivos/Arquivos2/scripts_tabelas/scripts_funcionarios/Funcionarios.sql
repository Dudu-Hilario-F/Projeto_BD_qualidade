CREATE TABLE FUNCIONARIOS (

    idFuncionarios        NUMBER(5) GENERATED ALWAYS AS IDENTITY CONSTRAINT CHK_FUNCIONARIOS PRIMARY KEY,
    nome                  VARCHAR2(100) NOT NULL,
    sobrenome             VARCHAR2(100) NOT NULL,
    cargo                 VARCHAR2(100) NOT NULL,
    email                 VARCHAR2(100) NOT NULL UNIQUE,
    status                VARCHAR2(100) NOT NULL,
    
    
    
    -- CHAVES ESTRANGEIRAS E CONSTRAINTS
    CONSTRAINT CHK_EMAIL_FUNCIONARIOS CHECK(REGEXP_LIKE(email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$'))

) TABLESPACE TBS_FUNCIONARIOS;


