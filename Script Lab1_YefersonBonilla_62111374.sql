
USE TiendaOnline;

CREATE TABLE Categorias (
    id_categoria INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(50)
);

CREATE TABLE dbo.Productos (
        id_producto INT PRIMARY KEY IDENTITY,
        nombre VARCHAR(100),
        descripcion TEXT,
        precio DECIMAL(10, 2),
        id_categoria INT,
        FOREIGN KEY (id_categoria) REFERENCES dbo.Categorias(id_categoria)
    );
    
CREATE TABLE Clientes (
        id_cliente INT PRIMARY KEY IDENTITY,
        nombre VARCHAR(100),
        email VARCHAR(100)
    );
    
CREATE TABLE Pedidos (
        id_pedido INT PRIMARY KEY IDENTITY,
        id_cliente INT,
        fecha_pedido DATETIME,
        estado VARCHAR(50),
        FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
    );
   
CREATE TABLE DetallesPedido (
        id_detalle INT PRIMARY KEY IDENTITY,
        id_pedido INT,
        id_producto INT,
        cantidad INT,
        precio_unitario DECIMAL(10, 2),
        FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido),
        FOREIGN KEY (id_producto) REFERENCES Productos(id_producto)
    );   
    
