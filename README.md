# 💊 Mini Projeto ETL - IQVIA (SCD Tipo 2)

## 📌 Sobre o Projeto
Este projeto tem como objetivo desenvolver um pipeline de ETL (Extract, Transform, Load) simulando o processamento de dados do setor farmacêutico, com foco na rastreabilidade histórica de informações utilizando o conceito de Slowly Changing Dimension (SCD Tipo 2).

---

## 🎯 Objetivo de Negócio
Empresas do setor farmacêutico precisam acompanhar alterações ao longo do tempo, como mudanças de preço ou categoria de produtos.

Este projeto garante que:
- Nenhum dado histórico seja perdido
- Todas as alterações sejam rastreadas
- Análises temporais possam ser realizadas com precisão

---

## 🏗️ Arquitetura do Projeto

O pipeline foi dividido em três camadas:

### 🟫 Bronze (Dados Brutos)
- Fonte: Arquivos CSV/Excel
- Armazenamento: Google Cloud Storage / BigQuery
- Dados sem tratamento

### 🟪 Silver (Dados Tratados)
- Limpeza de dados
- Padronização de tipos
- Remoção de valores nulos
- Estruturação para análise

### 🟨 Gold (Dados Analíticos)
- Implementação do SCD Tipo 2
- Controle de histórico
- Tabela dimensional pronta para análise

---

## ⚙️ Tecnologias Utilizadas

- Google Cloud Storage
- BigQuery
- SQL
- Git & GitHub

---

## 🔄 Implementação do SCD Tipo 2

A lógica aplicada garante que:

- ✔ Registros novos são inseridos
- ✔ Alterações geram uma nova linha
- ✔ O registro anterior é encerrado com data de fim
- ✔ Apenas um registro ativo por produto

### 📊 Estrutura da Tabela Final

| Coluna | Descrição |
|------|----------|
| sk_produto | Chave substituta (UUID) |
| id_produto_original | ID do produto |
| valor_produto | Valor atual do produto |
| data_inicio_validade | Início da vigência |
| data_fim_validade | Fim da vigência |
| flag_ativo | Indica registro atual |

---

## 🧪 Exemplo de Funcionamento (SCD)

| Produto | Valor | Início | Fim | Ativo |
|--------|------|--------|-----|------|
| 734399 | 4200 | 22/03 | 23/03 | ❌ |
| 734399 | 4620 | 23/03 | NULL | ✅ |

---

## 📁 Estrutura do Repositório
mini-projeto-etl-iqvia-modulo-2/
│
├── sql/
│ ├── 01_silver.sql
│ ├── 02_gold.sql
│ ├── 03_update_simulacao.sql
│ ├── 04_scd_update.sql
│ └── 05_scd_insert.sql
│
├── diagram/
│ └── arquitetura.png
│
└── README.md

---

## 🚧 Principais Desafios

- Tratamento de dados provenientes de Excel com colunas inconsistentes
- Padronização de nomes e tipos no BigQuery
- Implementação correta do SCD Tipo 2 garantindo integridade do histórico

---

## 🧠 Aprendizados

- Construção de pipelines de dados em camadas (Bronze, Silver, Gold)
- Aplicação prática de SCD Tipo 2
- Modelagem dimensional
- Boas práticas de versionamento com Git

---

## 👨‍💻 Autor

**Arthur**  
🔗 GitHub: https://github.com/ArtPG93

---

## ⭐ Considerações Finais

Este projeto simula um cenário real de engenharia de dados, com foco em qualidade, organização e rastreabilidade das informações, sendo aplicável em ambientes corporativos.