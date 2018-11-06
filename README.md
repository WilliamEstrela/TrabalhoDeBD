# TrabalhoDeBD
Tema 1 - Sistema Imobiliário
Foi feito uma entrevista com o dono de uma imobiliária que solicitou um sistema para auxiliar na administração da imobiliária, sendo levantado as seguintes informações.

Atualmente a imobiliária registra os imóveis que administra em um fichário onde ficam registrados os dados do imóvel juntamente com os dados do proprietário, sendo que cada imóvel tem sua ficha individual.

Também existe uma ficha pra cada cliente que a imobiliária atenda, sendo que existem nas fichas de clientes, os clientes que são locatários e os que são possíveis compradores ou que já realizaram compras.

A imobiliária tem duas atividades principais que são elas: Vendas e alugueis.

Os corretores da imobiliária coletam imóveis para venda e aluguel, sendo que quando um cliente solicita ao corretor para visitar um imóveis para aluguel ou compra fica registrado na ficha do imóvel a data da visita e as observações feitas pelo corretor relacionada a visita e também uma classificação quanto a visita que pode ser: 
Negócio Fechado, Cliente em Dúvida, Visita Perdida, Apenas Estava Pesquisando.

Os imóveis tem características que devem ser armazenadas:
Quantidade de quarto, quantidade de banheiros, Endereço(Cidade, bairro, logradouro, numero) , é lajotada, Tamanho do Quintal(grande, médio, pequeno), proprietário que também é um cliente.

Para evitar problemas de insatisfação dos clientes o dono da imobiliária decidiu que nenhum negócio(aluguel ou compra) é fechado sem que o cliente faça uma visita ao imóvel primeiro.

Cada imóvel que a imobiliária está negociando, seja para aluguel ou compra, deve ser vistoriado periodicamente(pelo menos a cada 6 meses), sendo que a cada vistoria e registrada a data e o detalhamento do que foi averiguado na vistoria, e ainda, a cada vistoria recebe uma situação (Ok, Necessita reparo, Abandono de Cliente, Pintura), caso o imóvel precise de reparo, fica registrados os reparos realizados relacionados a essa vistoria, sendo que uma vistoria pode gerar vários reparos, os dados do reparo são(data, valor, descrição do reparo).

Quando um imóvel é alugado, fica registrada a data do fechamento do negocio e fica em aberto a data de entrada do cliente, pois o cliente só começa a contar o tempo de uso da casa para o aluguel a partir do momento que o cliente se muda para o imóvel, a partir desse ponto começa a contar o tempo de aluguel, sendo que o aluguel tem o vencimento no mesmo dia dos meses subsequentes.

Quando o cliente vai fazer o pagamento do aluguel fica registrada a data do pagamento e a situação do pagamento(Adiantada, Pontual ou atrasado).

No caso das compras fica registrada todas as etapas(Visita, negociação, providencia de documentos, pagamento, transferência e entrega), sendo que em todas as etapas fica registrada a data do inicio e fim da etapa, corretor, imóvel envolvido, e observação da etapa (o mesmo corretor cuida de todas as etapas)

Algumas observações:

Todas as informações citadas acima foram minimas, devendo ser acrescentado os atributos que vocês vejam como indispensáveis.

Existe relacionamento ternário.

Existe agregação.

As chaves primárias devem ser campos numéricos. 

Deverá ser feito o MER e o MR do sistema descrito acima,

Deverá ser criado a DDL para o PostgreSQL contendo as chaves primárias e estrangeiras.(arquivo: 01_cria_base.sql)

Deverá ser criado a DML de inserção de dados das tabelas geradas no MR, cada tabela deverá ter pelo menos 10 linhas sendo que deve ter pelo menos 3 tabelas com 20 linhas pelo menos, sendo essas 3 tabelas obrigatoriamente fruto de relacionamentos. Deverá ser Gerado dois arquivos de inserção com duas massa de testes. (arquivo: 02_dml_massa1.sql e 03_dml_massa2.sql)

Nas perguntas abaixo, todas devem retornar pelo menos uma tupla a não ser que seja explicitados o contrário.

Dica Leiam todas as perguntas antes de começar a modelagem.

As Consultas abaixo devem ser gravadas todas em um arquivo .sql.(aquivo: 04_dml_resposta.sql , as perguntas devem ser colocadas como comentário antes da sql de resposta)

Devera ser gerado um arquivo no formato doc,odt ou pdf com a pergunta, a sql de resposta e as tuplas resultantes da execução da sql, isso por questão, sendo que todas as questões estarão no mesmo arquivo.(arquivo: 05_documentacao_resposta.(dot|odt|pdf).

Perguntas:

Listar os dados de todos os Corretores cadastrados.

Listar os dados de todos os Clientes cadastrados.

Listar os dados de todas as visitas realizadas a imóveis.(pelo menos o nome do Cliente, Corretor, imóvel, data da visita e tipo: para aluguel ou venda)

Listar os dados de todas as vendas realizadas na imobiliária. ( pelo menos o nome do cliente, nome do corretor , data do inicio das negociações, imóvel)

Listar todas os imoveis e as etapas da negociação para a compra do imóvel.(Dados da venda conforme questão 4, e os dados da negociação, noma da etapa, data inicial,final, observação) 

Listar todas os imoveis alugados e o histórico das vistorias e dos reparos quando a vistoria tiver gerado reparos.

Fazer uma consulta com a estatística de visitas realizadas pelos corretores. Ou seja a quantidade de clientes atendido pelos corretores em um intervalo de data .(o intervalo será definido conforme a sua massa de dados).

Fazer uma consulta com a estatística de visitas realizada pelos corretores com detalhamento por tipo de visita, ou seja listar a quantidade de visitas realizadas pelos corretores por tipo de visita(venda ou aluguel).

Listar os Clientes que nunca fizeram Visitas.

Qual o Cliente que mais comprou imóvel na imobiliária.

Qual o Cliente que tem mais imóveis alugados

Qual o Imóvel que mais sofreu reparos

Qual o corretor mais produtivo(que mais vendeu imóveis).

Qual o Cliente(s) que menos atrasou ou nunca atrasou o aluguel.

Qual o Cliente(s) que mais atrasou o aluguel.

Qual o imóvel nunca foi visitado

Qual o imóvel mais visitado que está “encalhado”. Ou seja que nunca foi comprado ou alugado.

Fazer uma consulta com a estatística de clientes por sexo, ou seja a quantidade de clientes por sexo.

Fazer uma consulta com a estatística de clientes por cidade.

Fazer uma consulta com a estatística de visitas realizadas por tipo, ou seja a quantidade de visita com finalidade de aluguel e a quantidade para compra.

Listar os corretores das visitas com a finalidade(compra ou aluguel) que teve maior número de visitas

Fazer uma consulta com a estatística dos imóveis pela característica de tamanho do quintal que não estão alugados, ou seja a quantidade de imóveis por tamanho do quintal que não estão alugados.

Fazer uma consulta com a estatística de visitas dos corretores realizaram por classificação da visita, ou seja listar: Nome  do corretor, TotalNegocioFechado, TotalClienteEmDuvida, TotalVisitaPerdida, TotalApenasEstavaPesquisando

Listar os Clientes que já fizeram as seguintes ações(todas): visita, compra, aluguel e venda

Listar os corretores que já realizaram visitas para aluguel e compra.

Listar os corretores que menos realizaram visitas.

Faça vocês do grupo uma pergunta que necessite utilizar funções agregadas e subconsulta para obter a resposta.

Fazer uma consulta que liste o faturamento por mês separado por aluguel, venda. Formato de saída: Mês, valorTotalVenda, ValorTotalAluguel, ValorTotalReparos.
