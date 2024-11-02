CREATE TABLE BACALHAU_ANALISE (

    idAnaliseBaca             NUMBER(5) GENERATED ALWAYS AS IDENTITY CONSTRAINT CHK_PRIMARY_BACA PRIMARY KEY,
    data_chegada              DATE NOT NULL,
    temp_prod                 FLOAT NOT NULL,
    conicoes_embala           VARCHAR2(100) NOT NULL,
    rotulagem                 VARCHAR2(100) NOT NULL,
    manchas_pretas            VARCHAR2(100) NOT NULL,
    odor                      VARCHAR2(100) NOT NULL,
    textura                   VARCHAR2(100) NOT NULL,
    data_prod                 DATE NOT NULL,
    data_validade             DATE NOT NULL,
    sif                       INT NOT NULL,
    status                    VARCHAR2(100) NOT NULL,
    
    
    -- CHAVES ESTRANGEIRAS E CONSTRAINTS
    fk_ProdutosBaca           INT NOT NULL,
    fk_FuncionarioMatriz      INT NOT NULL,
    
    CONSTRAINT CHK_FK_BACALHAU FOREIGN KEY (fk_ProdutosBaca) REFERENCES PRODUTOS_BACALHAU (id_bacalhau),
    CONSTRAINT CHK_FUNCIONARIOS_FK FOREIGN KEY (fk_FuncionarioMatriz) REFERENCES FUNCIONARIOS (idFuncionarios)


) TABLESPACE TBS_ANALISE_BACALHAU;