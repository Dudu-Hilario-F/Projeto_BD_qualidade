-- CRIAÇÃO DAS TABELAS
CREATE TABLE FORNECEDOR(
    id_fornecedor           NUMBER(10) GENERATED ALWAYS AS IDENTITY CONSTRAINT PK_idfornecedor NOT NULL PRIMARY KEY,
    sku                     VARCHAR2(6) CONSTRAINT sku_fornecedor NOT NULL UNIQUE,
    nome                    VARCHAR2(100) NOT NULL,
    telefone                VARCHAR2(13) NOT NULL UNIQUE,
    email                   VARCHAR2(100) NOT NULL UNIQUE,
    endereco                VARCHAR2(255) NOT NULL,
    cnpj                    VARCHAR2(14) NOT NULL UNIQUE,
    cpf                     VARCHAR2(11) NOT NULL UNIQUE,
    status_fornecedor       VARCHAR2(100) NOT NULL,
    
    -- CONSTRAINTS (RESTRIÇÕES)
    CONSTRAINT CHK_TELEFONE_FORNECEDOR CHECK(REGEXP_LIKE(telefone, '^\(\d{2}\)\s\d{5}-\d{4}$')),
    CONSTRAINT CHK_EMAIL_FORNECEDOR CHECK(REGEXP_LIKE(email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$')),
    CONSTRAINT CHK_CNPJ_FORNECEDOR CHECK(REGEXP_LIKE(cnpj, '^\d{2}\.\d{3}\.\d{3}/\d{4}-\d{2}$')),
    CONSTRAINT CHK_CPF_FORNECEDOR CHECK(REGEXP_LIKE(cpf, '^\d{3}\.\d{3}\.\d{3}-\d{2}$'))
          
) TABLESPACE TBS_FORNECEDOR;