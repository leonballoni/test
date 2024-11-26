# DBA Challenge 20240802 - Bike Store Inc - Base de Dados
> This is a challenge by [Coodesh](https://coodesh.com/)

------------------------

Desafio relacionado a construção de consultas SQL a fim de avaliar conceitos fundamentais no uso de SQL e seus paradigmas.

------------------------

## Passo de análise
1. Investigação do conteúdo oferecido pelo diagrama lógico do banco de dados relacional
2. Foi identificado dois setores principais: Vendas e Produção 
3. Vendas é composto por relação de compradores, funcionários, pedidos (principal), itens de pedidos e lojas
4. Produção composto pela principal de produtos e suas dimensões de categoria, estoque e marca
5. O relacionamento existente entre todas a tabelas se limita para no máximo 1xN e no mínimo 1x0

------------------------
## Passo da construção das consultas
Por ordem de perguntas (começando da primeira até a última)

1. Primeira consulta é uma análise da lista de **compradores** que NÃO existem na tabela de **pedidos**
   1. compõe em buscar a tabela **compradores** e manter apenas aqueles que não estejam na tabela de **pedidos**
   2. **Consulta em: select_all_customers_no_order**
2. Similar à primeira pergunta, foi mantido apenas aqueles **produtos** que NÃO possuem referência na tabela de **itens pedidos**
   1. **Consulta em: select_all_products_not_ordered**
3. Similar à primeira pergunta, foi mantido apenas **produtos** que NÃO possuem referência em **estoque**
   1. **Consulta em: select_all_products_no_stock**
4. a consulta de maior carga cognitiva, inicialmente foi mapeado quais campos era necessários
   1. Campos são marca, lojas e quantidade de itens
   2. A partir disso, realizou-se a mescla das tabelas a partir de INNER JOIN a fim de garantir que APENAS aquelas entidades que possuem alguma relação fossem retornadas (evita-se agrupamentos nulos ou incompletos)
   3. Fez se a agregação de tipo soma do campo **quantidade**
   4. Por fim, agrupou-se os campos marcas e lojas para se obter o conjunto de quantidades esperados pela pergunta.
   5. **Consulta em: grouped_sales_by_brand_and_store**
5. Obtive retorno similar à primeira pergunta alterando o conceito de busca ao fazer a mescla e filtrar pelos **funcionários** não existentes na tabela **pedidos**
   1. **Consulta em not_related_employees_with_an_order**


------------------------

# Referências

1. Foi utilizado linguagem de declaração conhecida como SQL 
2. IDE utilizada: Pycharm Professional
3. Markdown para documentar