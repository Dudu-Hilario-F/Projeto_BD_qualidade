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

-- FILIAL
CREATE TABLE FILIAL (
    id_filial               NUMBER(10) GENERATED ALWAYS AS IDENTITY CONSTRAINT PK_filial NOT NULL PRIMARY KEY,
    sku                     VARCHAR2(6) CONSTRAINT sku_filial NOT NULL UNIQUE,
    nome                    VARCHAR2(100) NOT NULL,
    telefone                VARCHAR2(13) NOT NULL UNIQUE,
    email                   VARCHAR2(100) NOT NULL UNIQUE,
    endereco                VARCHAR2(255) NOT NULL,
    cnpj                    VARCHAR2(14) NOT NULL UNIQUE,
    cpf                     VARCHAR2(11) NOT NULL UNIQUE,
    status_fornecedor       VARCHAR2(100) NOT NULL, /* Considerações Finais sobre status fornecedor da filial
                                                       Status do Fornecedor e da Filial: 
                                                            Mantenha o status de cada filial independente do status do fornecedor matriz. 
                                                            Isso permite que eu tenha um fornecedor ativo, mas uma filial inativa.
                                                    */
    
    id_fornecedor_matriz    NUMBER(10) NOT NULL, -- CHAVE ESTRANGEIRA
    
    -- CONSTRAINTS (RESTRIÇÕES) E REFERENCIAS DE TABELAS (RELACIONAMENTOS)
    CONSTRAINT CHK_TELEFONE_FILIAL CHECK(REGEXP_LIKE(telefone, '^\(\d{2}\)\s\d{5}-\d{4}$')),
    CONSTRAINT CHK_EMAIL_FILIAL CHECK(REGEXP_LIKE(email, '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Z|a-z]{2,}$')),
    CONSTRAINT CHK_CNPJ_FILIAL CHECK(REGEXP_LIKE(cnpj, '^\d{2}\.\d{3}\.\d{3}/\d{4}-\d{2}$')),
    CONSTRAINT CHK_CPF_FILIAL CHECK(REGEXP_LIKE(cpf, '^\d{3}\.\d{3}\.\d{3}-\d{2}$')),
    
    -- CHAVE ESTRANGEIRA REFERENCIANDO FORNECEDOR E A COLUNA (id_fornecedor_matriz)
    CONSTRAINT CHK_FK_FORNECEDOR FOREIGN KEY (id_fornecedor_matriz) REFERENCES FORNECEDOR (id_fornecedor)
          
) TABLESPACE TBS_FILIAL;


-- TABELA CATEGORIA
CREATE TABLE CATEGORIA (
    id_categoria         NUMBER(10) GENERATED ALWAYS AS IDENTITY CONSTRAINT PK_CATEGORIA NOT NULL PRIMARY KEY,
    nome                 VARCHAR2(100) NOT NULL UNIQUE CHECK (
                                                              UPPER(nome) = 'RESFRIADOS' OR 
                                                              UPPER(nome) = 'SALGADOS' OR 
                                                              UPPER(nome) = 'CLIMATIZADOS' OR 
                                                              UPPER(nome) = 'BOVINOS' OR 
                                                              UPPER(nome) = 'SUINOS' OR 
                                                              UPPER(nome) = 'CONGELADOS')
 
    -- SESSÃO DE COMENTARIOS LEIA
    
                         /* Aqui provavelmente dará um erro de duplicação de informação porque o usuario pode colocar RESFRIADO sem o (S) e o banco irá aceitar
                            futuramente vou arrumar com uma tiggers */
                        
                        /*Essa tabela vai dar um erro de violação do CHECK olhe o arquivo CDB1_USER_CARLOS que e compare com esse aqui.*/
) TABLESPACE TBS_CATEGORIA;
