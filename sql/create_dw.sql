CREATE SCHEMA Dimensional;

CREATE TABLE Dimensional.DimTempo(
    ChaveTempo INT PRIMARY KEY,
    Data DATE,
    Dia INT,
    Mes INT,
    Ano INT,
    DiaSemana INT,
    Trimestre INT
);

CREATE TABLE Dimensional.DimVendedor(
    ChaveVendedor INT PRIMARY KEY,
    IDVendedor INT,
    Nome VARCHAR(50),
    DataInicioValidade DATE NOT NULL,
    DataFimValidade DATE

);

CREATE TABLE Dimensional.DimCliente(
    ChaveCliente INT PRIMARY KEY,
    IDCliente INT,
    Nome VARCHAR(50),
    Estado VARCHAR(2),
    Sexo CHAR(1),
    Status VARCHAR(50),
    DataInicioValidade DATE NOT NULL,
    DataFimValidade DATE
);

CREATE TABLE Dimensional.DimProduto(
    ChaveProduto INT PRIMARY KEY,
    IDProduto INT,
    Produto VARCHAR(45),
    DataInicioValidade DATE NOT NULL,
    DataFimValidade DATE
);

CREATE TABLE Dimensional.FatoVendas(
    ChaveVendas INT PRIMARY KEY,
    ChaveTempo INT REFERENCES Dimensional.DimTempo (ChaveTempo),
    ChaveVendedor INT REFERENCES Dimensional.DimVendedor (ChaveVendedor),
    ChaveCliente INT REFERENCES Dimensional.DimCliente (ChaveCliente),
    ChaveProduto INT REFERENCES Dimensional.DimProduto (ChaveProduto),
    Quantidade INT,
    ValorUnitario NUMERIC(10,2),
    ValorTotal NUMERIC(10,2),
    Desconto NUMERIC(10,2)
);