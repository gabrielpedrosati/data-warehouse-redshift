# Projeto de implantação do Data Warehouse Redshift

## Projeto

As tomadas de decisão da empresa JJ Bike (empresa fictícia) não estão indo muito bem, os gestores não possuem dados suficientes para a tomada de decisão, os relatórios são feitos no Excel de maneira manual, muitas vezes trazendo dados equivocados sobre a empresa. 

Por conta desse problemas, a solução encontrada foi de implementar um Data Warehouse (DW) que é um repositório central de dados, o DW integra dados de diversas fontes em um único local, acabando com a necessidade de abrir várias planilhas do Excel ou tendo que baixar base em vários sistemas diferentes. Além disso, o DW é uma tecnologia otimizada para consulta dos dados e que permite rastrear os dados ao longo do tempo. Por fim, ele permite gerar relatórios, criação de Dashboards e extração de insights que servirão de embasamento para as tomadas de decisão da JJ Bike.

Para a implantação do DW foi selecionado o Redshift, solução de DW da nuvem AWS.

!["Redshift"](/imgs/redshift.png)

## Levantamento de Requisitos

Antes de modelar o Data Warehouse precisamos identificar a fonte de dados que alimentará nosso sistema e qual será a nossa tabela Fato, agente de negócio que será analisado, e as tabelas dimensões.

**Fonte de Dados**: Os dados estão armazenados em um Banco de Dados Relacional, que mantém as operações da empresa funcionando dia e noite. É desse Banco de Dados que serão extraídos os dados e armazenados no Redshift, solução de Data Warehouse da AWS.

**Indicadores**: Após levantamento de requisitos os gestores informaram que gostariam de acompanhar as Vendas, sob número de vendas por Vendedor, Clientes que mais compram e os Produtos mais vendidos.

**Tabela Fato:** 
- Vendas

**Tabelas Dimensão:**
- Dimensão Tempo **Obrigatória**
- Dimensão Cliente 
- Dimensão Vendedor
- Dimensão Produto

## Banco de Dados Relacional
Esse é o Banco de Dados do qual servirá como fonte de dados para o nosso Data Warehouse.

!["Relacional"](/imgs/modelo_relacional.png)

## Data Warehouse
Modelagem do Data Warehouse no modelo Star Schema.

!["Dimensional"](/imgs/modelo_dimensional.png)

# Execução

## Criar Cluster
!["Cluster"](/imgs/create-cluster-01.png)

## Criar Banco de Dados no Redshift
!["DB-Redshift"](/imgs/create-database.png)

## Criação de Schema e Tabelas
Para a criação do schema e das tabelas utilizei o script: [create_dw.sql](/sql/create_dw.sql)

!["Tables"](/imgs/dimesional-dw.png)

# Contato
Sinta-se livre para me contactar em: [Gabriel Pedrosa](https://www.linkedin.com/in/gabrielpedrosati/).