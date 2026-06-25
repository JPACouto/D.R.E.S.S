# D.R.E.S.S. - Digital Retail Enterprise Sales System

![Status](https://img.shields.io/badge/status-em%20desenvolvimento-yellow)
![Versão](https://img.shields.io/badge/versão-1.0.0-blue)
![Licença](https://img.shields.io/badge/licença-MIT-green)

**Sistema de Gestão Comercial para Lojas de Roupas**

---

## Sumário

- [Descrição do Projeto](#descrição-do-projeto)
- [Funcionalidades](#funcionalidades)
- [Tecnologias Utilizadas](#tecnologias-utilizadas)
- [Pré-requisitos](#pré-requisitos)
- [Instalação e Configuração](#instalação-e-configuração)
- [Autenticação](#autenticação)
- [Endpoints da API](#endpoints-da-api)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Testes](#testes)
- [Autores](#autores)
- [Licença](#licença)

---

## Descrição do Projeto

O **D.R.E.S.S.** (*Digital Retail Enterprise Sales System*) é um sistema de gestão comercial projetado para atender às demandas operacionais de lojas de roupas. A aplicação contempla o ciclo completo de operações no varejo de moda, desde o controle de estoque e cadastro de produtos até o registro de vendas, gestão de clientes e geração de relatórios gerenciais.

O projeto foi desenvolvido em contexto acadêmico com o objetivo de aplicar conceitos de engenharia de software a um cenário real de comércio, priorizando boas práticas de desenvolvimento, organização de código e usabilidade.

### Justificativa

O setor de varejo de vestuário apresenta desafios recorrentes na gestão de inventário, controle financeiro e relacionamento com o cliente. O D.R.E.S.S. propõe uma solução integrada que centraliza essas operações em uma única plataforma, proporcionando:

- Organização e rastreabilidade do catálogo de produtos
- Visibilidade em tempo real sobre a disponibilidade de estoque
- Registro estruturado de transações comerciais
- Base de dados de clientes para fidelização e análise de comportamento de compra
- Indicadores de desempenho para suporte à tomada de decisão

---

## Funcionalidades

### Gestão de Produtos
- Cadastro, edição e exclusão de produtos
- Controle de preço e quantidade em estoque
- Bloqueio de venda quando estoque é insuficiente

### Gestão de Clientes
- Cadastro completo com dados pessoais e de contato
- Validação de CPF único e e-mail válido
- Cliente com vendas registradas não pode ser excluído

### Registro de Vendas
- Registro de venda com múltiplos itens
- Cálculo automático do valor total
- Atualização automática do estoque após a venda (com transação no banco)

### Relatórios
- Relatório de vendas por período
- Relatório de vendas por cliente

### Controle de Acesso
- Autenticação via login e senha com token JWT
- Senhas armazenadas com hash (BCrypt)
- Perfis de acesso: `ADMIN` e `FUNCIONARIO`
- Rotas protegidas por token, com restrição por perfil em ações sensíveis

---

## Tecnologias Utilizadas

| Camada            | Tecnologia                          |
|-------------------|--------------------------------------|
| Back-end          | Node.js, Express                    |
| Front-end         | Django (Web) — *em desenvolvimento* |
| Banco de Dados    | MySQL                                |
| Autenticação      | JWT (jsonwebtoken) + BCrypt          |
| Testes            | Jest                                 |
| Versionamento     | Git, GitHub                          |
| IDE               | VS Code                              |

---

## Pré-requisitos

- [Node.js](https://nodejs.org/) (versão 18.x ou superior)
- [MySQL](https://www.mysql.com/) (ou [XAMPP](https://www.apachefriends.org/), que já inclui o MySQL)
- [Git](https://git-scm.com/)

---

## Instalação e Configuração

### 1. Clonar o repositório

```bash
git clone https://github.com/JPACouto/D.R.E.S.S
cd D.R.E.S.S/backend
```

### 2. Instalar as dependências

```bash
npm install
```

### 3. Criar o banco de dados

Crie um banco chamado `dress` no MySQL (via phpMyAdmin, MySQL Workbench ou terminal) e execute o script localizado em:
