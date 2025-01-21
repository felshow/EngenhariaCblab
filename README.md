# EngenhariaCblab
Repositorio voltado para teste pratico de engenharia de dados do CBLab.
Projeto de Armazenamento e Manipulação de Respostas de API CBLAB

# Descrição:
Este projeto tem como objetivo armazenar, manipular e analisar o json de uma resposta API. Ele inclui a criação de uma estrutura de pastas organizada para armazenar as respostas, a normalização dos dados em DataFrames, a conversão de datas e horários para o fuso horário do Brasil e o formato DD/MM/YYYY demonstrando um pouco como funciona a arquitetura Medallion, onde na camada brone os json foi recebido e transformado em DataFrames, na camada Silver os Dataframes passaram por uma padronização no titulo das tabelas e na camada Gold as datas foram alteradas para o datetime do Brasil.

# Melhorias:
Este projeto possui melhorias na colunas Taxes e DetailLines no dataframe GuestChecked, possui como sugestão de melhoria ser inserido o ID do dataframe Taxes e um ID do dataframe DetailLines em seus respectivos campos no dataframe GuestChecked.

# Requisitos: 
- Python 3.x
- Pandas


