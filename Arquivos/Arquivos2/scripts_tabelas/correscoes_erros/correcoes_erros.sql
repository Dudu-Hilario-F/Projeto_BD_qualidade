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