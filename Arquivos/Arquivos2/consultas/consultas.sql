-- CONSULTA PARA MUDAR O CAMINHO DO DATAFILE
SELECT file_name 
FROM dba_data_files 
WHERE tablespace_name = 'TBS_CATEGORIA';

SELECT file_name 
FROM dba_data_files 
WHERE tablespace_name = 'TBS_FORNECEDOR';

SELECT file_name 
FROM dba_data_files 
WHERE tablespace_name = 'TBS_FILIAL';

SELECT file_name 
FROM dba_data_files 
WHERE tablespace_name = 'TBS_PRODUTO_BACALHAU';

SELECT tablespace_name FROM dba_tablespaces;
SELECT constraint_name FROM dba_constraints
WHERE constraint_name = 'ANALISE_BACALHAU';



-- CONSULTAS DE TABELAS
SELECT * FROM PRODUTOS_BACALHAU

