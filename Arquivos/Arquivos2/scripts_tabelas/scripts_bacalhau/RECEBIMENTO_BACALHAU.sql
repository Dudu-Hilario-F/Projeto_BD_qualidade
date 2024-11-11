CREATE TABLE RECEBIMENTO_BACALHAU(
    idRecebimentoBaca          NUMBER(5) GENERATED ALWAYS AS IDENTITY CONSTRAINT CHK_RECEBIMENTO_BACA PRIMARY KEY,
    data_entrada               DATE NOT NULL,
    quantidade                 INTEGER NOT NULL CHECK (quantidade >=0),
    nome                       VARCHAR2(20) NOT NULL,
    lote                       VARCHAR2(8) NOT NULL


)TABLESPACE TBS_RECEBIMENTO_BACA;