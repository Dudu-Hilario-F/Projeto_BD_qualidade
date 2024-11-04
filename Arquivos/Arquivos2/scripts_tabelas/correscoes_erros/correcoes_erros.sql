SELECT * FROM CATEGORIA;

ALTER TABLE CATEGORIA
ADD CONSTRAINT CHK_CATEGORIA_NAME
CHECK (UPPER(nome) IN ('Resfriados', 'Salgados', 'Climatizados', 'Bovinos', 'Suinos', 'Congelados')) -- ALTERADO COM ERRO EU QUERO APENAS UMA CATEGORIA DA LISTA

-- CATEGORIA ARRUMADA
DROP TABLE CATEGORIA PURGE;

-- CORRIGINDO O CAMINHO DOS DATAFILES
-- DATAFILE CATEGORIA
ALTER DATABASE MOVE DATAFILE '/u01/app/oracle/homes/OraDB21Home1/dbs/C:UsersduduDesktopprojetosQualidadeBDArquivosTABLESPACESoradata_categoriacategoria.dbf' 
TO '/u01/app/oracle/oradata/ORCL/datafile/categoria.dbf';

-- DATAFILE FORNECEDOR
ALTER DATABASE MOVE DATAFILE '/u01/app/oracle/homes/OraDB21Home1/dbs/C:UsersduduDesktopprojetosQualidadeBDArquivosTABLESPACESoradata_fornecedorfornecedor.dbf' 
TO '/u01/app/oracle/oradata/ORCL/datafile/fornecedor.dbf';

-- DATAFILE FILIAL
ALTER DATABASE MOVE DATAFILE '/u01/app/oracle/homes/OraDB21Home1/dbs/C:UsersduduDesktopprojetosQualidadeBDArquivosTABLESPACESoradata_filialfilial.dbf' 
TO '/u01/app/oracle/oradata/ORCL/datafile/filial.dbf';

-- DATAFILE BACALHAU
ALTER DATABASE MOVE DATAFILE '/u01/app/oracle/homes/OraDB21Home1/dbs/C:UsersduduDesktopprojetosQualidadeBDArquivosTABLESPACESoradata_bacalhaubacalhau.dbf' 
TO '/u01/app/oracle/oradata/ORCL/datafile/bacalhau.dbf';

-- REMOVENDO O LOTE DA TABELA DE BACALHAU
ALTER TABLE PRODUTOS_BACALHAU
DROP COLUMN LOTE;

ALTER TABLE PRODUTOS_BACALHAU
ADD (

    tipo_produto varchar2(100) NOT NULL,
    classif_por_origem varchar2(100) NOT NULL,
    variacoes_bacalhau varchar2(100) NOT NULL
);

ALTER TABLE PRODUTOS_BACALHAU
DROP COLUMN ID_CATEGORIA_FK;

ALTER TABLE PRODUTOS_BACALHAU
ADD (

    fk_categoria_id INT NOT NULL,
    
    CONSTRAINT CHK_ESTRANGEIRA FOREIGN KEY (fk_categoria_id) REFERENCES CATEGORIA (ID_CATEGORIA)


);

DROP TABLE ANALISE_E_AUDITORIA_BACA PURGE;



ALTER TABLE BACALHAU_ANALISE
ADD (
    idRecebimentoTemp   INTEGER NOT NULL,
    CONSTRAINT CHK_RECEBIMENTO_TEMP FOREIGN KEY (idRecebimentoTemp) REFERENCES RECEBIMENTO_TEMPORARIO (idRecebimentoTemp)    
);


-- FIM ALTERA��ES BACALHAU

-- CORRE��ES TABELA FORNECEDORES E FILIAIS

