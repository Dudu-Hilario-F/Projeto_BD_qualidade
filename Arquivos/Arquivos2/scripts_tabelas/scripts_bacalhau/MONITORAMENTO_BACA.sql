CREATE TABLE MONITORAMENTO_BACALHAU(
    idMonitoramentoBaca        NUMBER(5) GENERATED ALWAYS AS IDENTITY CONSTRAINT CHK_MONITORAMENTO_BACA PRIMARY KEY,
    data_monito                DATE NOT NULL,
    temp_camara                FLOAT NOT NULL,
    temp_produto               FLOAT NOT NULL,
    condicoes_embalagem        VARCHAR2(20) NOT NULL,
    marca_de_pisadas           VARCHAR2(20) NOT NULL,
    validade                   DATE NOT NULL,
    manchas_pretas             VARCHAR2(20) NOT NULL,
    goteira_termoking          VARCHAR2(20) NOT NULL,
    umidade_camara             VARCHAR2(20) NOT NULL,
    umidade_produto            VARCHAR2(20) NOT NULL,
    
    
    -- CONSTRAINTS E CHAVES ESTRANGEIRAS
    idArmazenamentoBaca        INTEGER NOT NULL,
    
    CONSTRAINT CHK_ARMAZE_MONITORAMENTO_FK FOREIGN KEY (idArmazenamentoBaca) REFERENCES ARMAZENAMENTO_BACALHAU (idArmazenamentoBaca)

)TABLESPACE TBS_ARMAZENAMENTO_BACA;