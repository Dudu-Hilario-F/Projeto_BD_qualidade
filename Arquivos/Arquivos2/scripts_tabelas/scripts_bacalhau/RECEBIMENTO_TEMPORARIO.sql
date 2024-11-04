CREATE GLOBAL TEMPORARY TABLE RECEBIMENTO_TEMPORARIO(

    idRecebimentoTemp             NUMBER(10) GENERATED ALWAYS AS IDENTITY CONSTRAINT PK_RECEBIMENTO_TEMP NOT NULL PRIMARY KEY,
    nome                          VARCHAR2(100) NOT NULL,
    marca                         VARCHAR2(100) NOT NULL,
    tipo_produto                  VARCHAR2(100) NOT NULL,
    variacoes                     VARCHAR2(100) NOT NULL,
    origem                        VARCHAR2(100) NOT NULL
    
)ON COMMIT PRESERVE ROWS;