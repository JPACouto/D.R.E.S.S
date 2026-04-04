
CREATE TABLE usuarios (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    senha TEXT NOT NULL,
    perfil TEXT NOT NULL CHECK (perfil IN ('ADMIN', 'FUNCIONARIO')),
    is_active BOOLEAN NOT NULL DEFAULT 1
);

CREATE TABLE clientes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    cpf TEXT NOT NULL UNIQUE,
    email TEXT NOT NULL,
    telefone TEXT,
    endereco TEXT
);

CREATE TABLE produtos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL,
    descricao TEXT,
    preco REAL NOT NULL CHECK (preco >= 0),
    quantidade_estoque INTEGER NOT NULL DEFAULT 0,
    estoque_minimo INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE vendas (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_usuario INTEGER NOT NULL,
    id_cliente INTEGER NOT NULL,
    data DATETIME DEFAULT CURRENT_TIMESTAMP,
    valor_total REAL NOT NULL DEFAULT 0.00,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id),
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE itens_venda (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    id_venda INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER NOT NULL,
    preco_unitario REAL NOT NULL,
    subtotal REAL GENERATED ALWAYS AS (quantidade * preco_unitario) STORED,
    FOREIGN KEY (id_venda) REFERENCES vendas(id) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);
