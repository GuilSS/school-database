# Sistema Escolar - Banco de Dados

Este repositório contém a modelagem e o script SQL para um **sistema escolar**, incluindo alunos, professores, turmas e disciplinas.

## 📌 Descrição do Projeto

O projeto foi desenvolvido para praticar **modelagem de banco de dados relacional** e o uso de chaves primárias/estrangeiras.  
Ele representa um sistema escolar simples com:

- **Alunos** (CPF, nome, matrícula)
- **Turmas** (código, descrição, horário)
- **Professores** (matrícula, RG, nome)
- **Disciplinas** (carga horária, professor responsável)
- **Atrelamentos** de alunos e professores às turmas

## 🔧 Tecnologias Utilizadas

- **PostgreSQL** (ou outro SGBD relacional)
- **SQL Padrão** para criação de tabelas
- **DBML** para gerar o diagrama (usando [dbdiagram.io](https://dbdiagram.io))

## 📚 Objetivo Educacional

Este projeto demonstra:
- Criação de tabelas com `PRIMARY KEY`, `UNIQUE` e `FOREIGN KEY`
- Uso de `SEQUENCE` e `SERIAL` para geração de IDs automáticos
- Relacionamentos entre entidades de um sistema escolar
- Inserção de dados fictícios para testes

## 🚀 Como Utilizar

1. Copie o conteúdo do arquivo [SCHOOL_FILE_CODE_SQL.sql](./SCHOOL_FILE_CODE_SQL.sql)
2. Execute no seu SGBD (PostgreSQL recomendado)
3. Teste as relações consultando as tabelas com `SELECT * FROM nome_tabela`

## 👨‍💻 Autor

Projeto desenvolvido por **Guilherme Sadlovski** como parte de estudos para modelagem e administração de bancos de dados.
