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
 
    -- SESS�O DE COMENTARIOS LEIA
    
                         /* Aqui provavelmente dar� um erro de duplica��o de informa��o porque o usuario pode colocar RESFRIADO sem o (S) e o banco ir� aceitar
                            futuramente vou arrumar com uma tiggers */
                        
                        /*Essa tabela vai dar um erro de viola��o do CHECK olhe o arquivo CDB1_USER_CARLOS que e compare com esse aqui.*/
) TABLESPACE TBS_CATEGORIA;