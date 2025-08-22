# Board de Tarefas DIO  
Sistema de gerenciamento de **quadros Kanban** em Java — evolução do desafio da DIO.

## 🚀 Sobre o Projeto  
Este repositório contém uma versão ampliada do desafio original da **Digital Innovation One**, construindo um sistema completo de gerenciamento Kanban, com funcionalidades focadas em organização de tarefas, controle de fluxo e produtividade.

---

## 🔧 Principais Melhorias  
- Edição de **cards** (título e descrição)  
- Listagem completa de **boards**  
- Registro automático da data de criação nos **cards**  
- Testes unitários com **JUnit 5**  
- CLI mais elaborada (tratamento de entradas + modo demonstração)

---

## 🛠 Tecnologias Utilizadas

| Tecnologia    | Versão | Finalidade                  |
|---------------|--------|-----------------------------|
| **Java**      | 17+    | Linguagem principal         |
| **Gradle**    | 8.0+   | Gerenciamento de dependências |
| **MySQL**     | 8.0+   | Banco de dados              |
| **Liquibase** | 4.29.1 | Controle de migrações       |
| **Lombok**    | 1.18.34 | Redução de boilerplate      |
| **JUnit 5**   | 5.10.0 | Testes unitários            |

---

## 📂 Estrutura do Projeto

```
src/
├── main/java/br/com/dio/
│ ├── dto/ # Objetos de transferência de dados
│ ├── exception/ # Exceções personalizadas
│ ├── persistence/
│ │ ├── config/ # Configurações de conexão
│ │ ├── converter/ # Conversores de dados
│ │ ├── dao/ # Data Access Objects
│ │ ├── entity/ # Entidades de domínio
│ │ └── migration/ # Estratégias de migração
│ ├── service/ # Regras de negócio
│ └── ui/ # Interface via CLI
├── test/java/ # Testes unitários
└── resources/
└── db/changelog/ # Scripts de migração do Liquibase

```


---

## ⚡ Funcionalidades

### Boards  
- ✅ Criar novos boards  
- ✅ Listar todos os boards existentes  
- ✅ Excluir boards  
- ✅ Configurar colunas personalizadas

### Cards  
- ✅ Criar cards com título e descrição  
- ✨ **Editar** cards já existentes  
- ✅ Mover cards entre colunas  
- ✨ **Exibir data de criação** do card  
- ✅ Cancelar cards  
- ✅ Sistema de bloqueios

### Bloqueios  
- ✅ Bloquear cards com justificativa  
- ✅ Desbloquear com motivo  
- ✅ Histórico completo de bloqueios  
- ✅ Contador de bloqueios por card

---

## ▶️ Como Executar

### Pré-requisitos  
- Java 17 ou mais recente  
- MySQL 8.0+  
- Gradle 8.0+

### 1. Clone o Repositório  
```bash
git clone https://github.com/milenamorais20/Board-de-tarefas-DIO.git
cd Board-de-tarefas-DIO
```

### 2. Configure o Banco de Dados
Exemplo de comandos SQL:
```
CREATE DATABASE board_db;
CREATE USER 'board_user'@'localhost' IDENTIFIED BY 'board_pass';
GRANT ALL PRIVILEGES ON board_db.* TO 'board_user'@'localhost';
```

###3. Ajuste a Conexão
Edite o arquivo src/main/resources/liquibase.properties definindo:
```
url=jdbc:mysql://localhost:3306/board_db
username=board_user
password=board_pass
```
### 4. Execute a Aplicação
``./gradlew run``

## 🧪 Testes
```
# Executar todos os testes
./gradlew test

# Executar com relatório detalhado
./gradlew test --info

# Executar testes específicos
./gradlew test --tests "CardServiceTest"

```
## 🎮 Modo Demo
``./gradlew runDemo
``

## 📋 Menus
Menu Principal
```
1. Criar novo board

2. Selecionar board existente

3. Listar todos os boards

4. Excluir board

5. Sair
```


Menu do Board

```
1. Criar card

2. Mover card

3. Bloquear card

4. Desbloquear card

5. Cancelar card

6. Editar card

7. Visualizar board

8. Visualizar coluna com cards

9. Detalhes do card

10. Voltar

11. Sair

```

## 🗄 Estrutura do Banco de Dados
- BOARDS – armazena dados dos boards
- BOARDS_COLUMNS – colunas personalizadas por board
- CARDS – cards, incluindo data de criação
- BLOCKS – histórico de bloqueios de cards


## 📌 Observações
- O comando ./gradlew run executa a aplicação de forma interativa, esperando entradas do usuário.
- O ./gradlew runDemo gera automaticamente um board de exemplo (se não houver).


## 🧑‍💻 Desenvolvido por

📧 [Milena Morais](https://github.com/milenamorais20)

---

## 📄 Licença

Este projeto é open-source e está sob a licença [MIT](LICENSE).


