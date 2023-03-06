COPY staging.clientes
FROM 's3://data-warehouse-jjbike-source/raw/relacional/clientes/LOAD00000001.csv'
CREDENTIALS 'aws_access_key_id=;aws_secret_access_key='
REGION 'us-east-1'
DELIMITER ','
DATEFORMAT 'DD/MM/YYYY';

COPY staging.produtos
FROM 's3://data-warehouse-jjbike-source/raw/relacional/produtos/LOAD00000001.csv'
CREDENTIALS 'aws_access_key_id=;aws_secret_access_key='
REGION 'us-east-1'
DELIMITER ','
DATEFORMAT 'DD/MM/YYYY';

COPY staging.vendedores
FROM 's3://data-warehouse-jjbike-source/raw/relacional/vendedores/LOAD00000001.csv'
CREDENTIALS 'aws_access_key_id=;aws_secret_access_key='
REGION 'us-east-1'
DELIMITER ','
DATEFORMAT 'DD/MM/YYYY';

COPY staging.vendas
FROM 's3://data-warehouse-jjbike-source/raw/relacional/vendas/LOAD00000001.csv'
CREDENTIALS 'aws_access_key_id=;aws_secret_access_key='
REGION 'us-east-1'
DELIMITER ','
DATEFORMAT 'DD/MM/YYYY';

COPY staging.itensvenda
FROM 's3://data-warehouse-jjbike-source/raw/relacional/vendas/LOAD00000001.csv'
CREDENTIALS 'aws_access_key_id=;aws_secret_access_key='
REGION 'us-east-1'
DELIMITER ','
DATEFORMAT 'DD/MM/YYYY';