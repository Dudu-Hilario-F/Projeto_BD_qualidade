CREATE TABLE AUDITORIA_BACA (

    idAudi_bacalhau         NUMBER(10) GENERATED ALWAYS AS IDENTITY CONSTRAINT PK_AUDITO_BACA NOT NULL PRIMARY KEY,
    data_desembarque        DATE NOT NULL,
    hora_desembarque        TIMESTAMP NOT NULL,
    termino_desembarque     TIMESTAMP NOT NULL,
    NF                      VARCHAR2(9) NOT NULL, 
    placa_caminhao          VARCHAR2(7) NOT NULL, 



    -- CONSTRAINTS E CHECKS 
    CONSTRAINT CHK_NOTA_FISCAL CHECK (REGEXP_LIKE(NF, '^\d{9}$')),
    CONSTRAINT CHK_PLACA_CAMINHAO CHECK (REGEXP_LIKE(placa_caminhao, '^[A-Z]{3}\d{4}$'))

) TABLESPACE TBS_AUDITORIA_BACA;