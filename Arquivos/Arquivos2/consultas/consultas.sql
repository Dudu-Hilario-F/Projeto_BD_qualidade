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