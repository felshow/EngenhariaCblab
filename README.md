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

# Perguntas dos Desafios

DESAFIO 1
1. Descreva o esquema JSON correspondente ao exemplo acima.
Resposta:
O JSON fornecido representa um pedido de restaurante (guestCheck)
-guestCheckId: Identificador único do pedido.
-chkNum: Número do cheque.
-opnBusDt: Data de abertura do pedido.
-opnUTC: Data e hora de abertura em UTC.
-opnLcl: Data e hora de abertura no horário local.
-clsdBusDt: Data de fechamento do pedido.
-clsdUTC: Data e hora de fechamento em UTC.
-clsdLcl: Data e hora de fechamento no horário local.
-lastTransUTC: Data e hora da última transação em UTC.
-lastTransLcl: Data e hora da última transação no horário local.
-lastUpdatedUTC: Data e hora da última atualização em UTC.
-lastUpdatedLcl: Data e hora da última atualização no horário local.
-clsdFlag: Indicador de pedido fechado.
-gstCnt: Contagem de convidados.
-subTtl: Subtotal do pedido.
-nonTxblSlsTtl: Total de vendas não tributáveis.
-chkTtl: Total do cheque.
-dscTtl: Total de descontos.
-payTtl: Total pago.
-balDueTtl: Saldo devido.
-rvcNum: Número do ponto de venda.
-otNum: Número da ordem de trabalho.
-ocNum: Número da ordem de compra.
-tblNum: Número da mesa.
-tblName: Nome da mesa.
-empNum: Número do empregado.
-numSrvcRd: Número de rodadas de serviço.
-numChkPrntd: Número de cheques impressos.
-taxes: Lista de impostos aplicados ao pedido.
-taxNum: Número do imposto.
-txblSlsTtl: Total de vendas tributáveis.
-taxCollTtl: Total de imposto coletado.
-taxRate: Taxa de imposto.
-type: Tipo de imposto.
-detailLines: Lista de itens detalhados do pedido.
-guestCheckLineItemId: Identificador único do item do pedido.
-rvcNum: Número do ponto de venda.
-dtlOtNum: Número da ordem de trabalho detalhada.
-dtlOcNum: Número da ordem de compra detalhada.
-lineNum: Número da linha.
-dtlId: Identificador detalhado.
-detailUTC: Data e hora do detalhe em UTC.
-detailLcl: Data e hora do detalhe no horário local.
-lastUpdateUTC: Data e hora da última atualização em UTC.
-lastUpdateLcl: Data e hora da última atualização no horário local.
-busDt: Data do negócio.
-wsNum: Número da estação de trabalho.
-dspTtl: Total exibido.
-dspQty: Quantidade exibida.
-aggTtl: Total agregado.
-aggQty: Quantidade agregada.
-chkEmpId: Identificador do empregado do cheque.
-chkEmpNum: Número do empregado do cheque.
-svcRndNum: Número da rodada de serviço.
-seatNum: Número do assento.
-menuItem: Detalhes do item do menu.
-miNum: Número do item do menu.
-modFlag: Indicador de modificação.
-inclTax: Imposto incluído.
-activeTaxes: Impostos ativos.
-prcLvl: Nível de preço.

Desafio 2
1. Por que armazenar as respostas das APIs?
Resposta:Dentre varios motivos, armazenar respostas de APIs pode reduzir a necessidade de fazer chamadas repetidas para a mesma API, economizando tempo e recursos computacionais.Ter uma cópia local das respostas de APIs garante que você está trabalhando com dados consistentes.Manter um registro das respostas de APIs serve como um backup em caso de falhas ou indisponibilidade da API original.

2. Como você armazenaria os dados? Crie uma estrutura de pastas capaz de armazenar as respostas da API. Ela deve permitir manipulaçõe, verificações, buscas e pesquisas rápidas.
Resposta:Para armazenar as respostas das APIs de forma eficiente e organizada, podemos criar uma estrutura de pastas que facilite a manipulação, verificação, busca e pesquisa rápida dos dados.

3. Considere que a resposta do endpoint getGuestChecks foi alterada, por exemplo, guestChecks.taxes foi renomeado para guestChecks.taxation. O que isso implicaria?
resposta: Se guestChecks.taxes foi renomeado para guestChecks.taxation, isso implicaria algumas mudanças importantes no seu código e na estrutura de dados para que funcione devidamente. Será necessario atualizar todas as partes do seu código que fazem referência a guestChecks.taxes para guestChecks.taxation. Isso inclui a extração de dados, a normalização dos DataFrames e qualquer manipulação subsequente dos dados. Os DataFrames que você cria a partir das respostas da API precisarão ser ajustados para refletir a nova estrutura.
