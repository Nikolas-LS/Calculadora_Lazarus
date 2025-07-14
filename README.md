```
   ____      _            _       _           
  / ___|__ _| | ___ _   _| | __ _| |_ ___  ___ 
 | |   / _` | |/ __| | | | |/ _` | __/ _ \/ __|
 | |__| (_| | | (__| |_| | | (_| | ||  __/\__ \
  \____\__,_|_|\___|\__,_|_|\__,_|\__\___||___/

 - > Calculadora Básica e Científica
```
# Calculadora (Lazarus + Free Pascal)

Este projeto consiste no desenvolvimento de uma **calculadora completa**, contendo dois modos de operação:

- **Calculadora Básica** – com as quatro operações fundamentais: adição (+), subtração (-), multiplicação (*) e divisão (/).
- **Calculadora Científica** – com funções adicionais para usuários que necessitam de operações mais avançadas.

O sistema foi construído utilizando a **IDE Lazarus** com a linguagem **Free Pascal**, possibilitando uma interface gráfica amigável e separação clara entre lógica e interface.

## 🎯 Objetivo

Criar uma aplicação de calculadora unificada, onde o usuário pode **alternar entre os modos básico e científico** por meio de um botão dentro da própria interface. A proposta é ser um projeto modular e bem organizado para facilitar o entendimento e futuras expansões.

---

## 🗂 Estrutura do Projeto

```
Calculadora/
├── Forms/                 # Contém os formulários e interfaces
│   ├── formbasica.pas     # Código-fonte da calculadora básica
│   ├── formbasica.lfm     # Arquivo de design da calculadora básica
│   ├── formcientifica.pas # Código-fonte da calculadora científica
│   └── formcientifica.lfm # Arquivo de design da calculadora científica
│
├── Logic/                 # Módulos de lógica e regras de negócio
│   ├── calculadoracore.pas    # Funções de cálculo reutilizáveis
│   └── memóriamanager.pas     # Gerenciador de memória (por exemplo, histórico, MR/MC/M+)
│
├── backup/                # Arquivos de backup automáticos
│
├── Calculadora.lpi        # Arquivo de projeto Lazarus
├── Calculadora.lpr        # Arquivo principal do projeto
├── Calculadora.ico        # Ícone da aplicação
├── Calculadora.lps        # Arquivo de sessão do Lazarus
└── Calculadora.res        # Recursos adicionais
```

---

## 🛠 Tecnologias Utilizadas

- **Lazarus IDE** – Ambiente de desenvolvimento visual para Free Pascal.
- **Free Pascal** – Linguagem utilizada para lógica e implementação da aplicação.
- **Arquitetura Modular** – Separação clara entre formulários (interface) e lógica de cálculo.

---

## 🚀 Como Executar

1. Clone este repositório ou copie os arquivos do projeto.
2. Abra o arquivo `Calculadora.lpi` na IDE Lazarus.
3. Compile e execute (F9).
4. Use o botão de alternância para trocar entre os modos básico e científico.

---

## 📌 Futuras Implementações (alternativas)

- Histórico de cálculos.
- Suporte a funções trigonométricas e logarítmicas.
- Suporte a teclas do teclado.
- Estilização da interface.

---

## 👨‍💻 Autor

Nikolas Lopes da Silva
