INSERT INTO "C##CARLOSEDUARDO"."RECEBIMENTO_TEMPORARIO" (NOME, MARCA, TIPO_PRODUTO, VARIACOES, ORIGEM) 
VALUES ('Filé de Peito de Frango', 'Sadia', 'Aves', 'Sem osso, Congelado', 'Brasil');

-- TESTE DE INSERT

INSERT ALL INTO "C##CARLOSEDUARDO"."PRODUTOS_BACALHAU" (SKU, NOME, MARCA, TIPO_PRODUTO, CLASSIF_POR_ORIGEM, VARIACOES_BACALHAU, FK_CATEGORIA_ID)
VALUES
  (
  'SKU001', 'Bacalhau Tipo 1', 'MarcaA', 'Seco', 'Noruega', 'Tipo A', 1,
  'SKU002', 'Bacalhau Tipo 2', 'MarcaB', 'Salgado', 'Portugal', 'Tipo B', 2,
  'SKU003', 'Bacalhau Tipo 3', 'MarcaC', 'Desfiado', 'Brasil', 'Tipo C', 1
  
);


INSERT ALL
    INTO PRODUTOS_BACALHAU "C##CARLOSEDUARDO"."PRODUTOS_BACALHAU" 
            VALUES ( 'SKU001', 'Bacalhau Tipo 1', 'MarcaA', 'Seco', 'Noruega', 'Tipo A', 1)
    INTO PRODUTOS_BACALHAU (SKU, NOME, MARCA, TIPO_PRODUTO, CLASSIF_POR_ORIGEM, VARIACOES_BACALHAU, FK_CATEGORIA_ID)
            VALUES ('SKU002', 'Bacalhau Tipo 2', 'MarcaB', 'Salgado', 'Portugal', 'Tipo B', 2)
    INTO PRODUTOS_BACALHAU (SKU, NOME, MARCA, TIPO_PRODUTO, CLASSIF_POR_ORIGEM, VARIACOES_BACALHAU, FK_CATEGORIA_ID)
            VALUES ('SKU003', 'Bacalhau Tipo 3', 'MarcaC', 'Desfiado', 'Brasil', 'Tipo C', 1)
            
SELECT * FROM PRODUTOS_BACALHAU;


INSERT INTO PRODUTOS_BACALHAU (SKU, NOME, MARCA, TIPO_PRODUTO, CLASSIF_POR_ORIGEM, VARIACOES_BACALHAU, FK_CATEGORIA_ID) 
VALUES ('SKU001', 'Bacalhau Tipo 1', 'MarcaA', 'Seco', 'Noruega', 'Tipo A', 1),
       ('SKU002', 'Bacalhau Tipo 2', 'MarcaB', 'Salgado', 'Portugal', 'Tipo B', 2),
       ('SKU003', 'Bacalhau Tipo 3', 'MarcaC', 'Desfiado', 'Brasil', 'Tipo C', 1);
    




