-- 1) Listar os dados de todos os Corretores cadastrados.
select *
from corretores;
-- 2) Listar os dados de todos os Clientes cadastrados.
select *
from cliente;
-- 3) Listar os dados de todas as visitas realizadas a imóveis.
-- (pelo menos o nome do Cliente, Corretor, imóvel, data da visita e tipo: para aluguel ou venda)
select cliente.nome, corretores.nome, imovel.id_imovel, visita.data_visita
from imovel
  inner join visita on imovel.id_imovel = visita.id_imovel
  inner join cliente on cliente.id_cliente = imovel.id_cliente
  inner join corretores on corretores.id_corretores = visita.id_corretores;
-- falta o tipo da visita?? adicionar na relação da visita o tipo ? ou na relação imovel??

-- 4) Listar os dados de todas as vendas realizadas na imobiliária.
-- ( pelo menos o nome do cliente, nome do corretor , data do inicio das negociações, imóvel)
select cliente.nome, corretores.nome, venda_etapas.data_inicio, imovel.id_imovel
from venda
  inner join venda_etapas on venda_etapas.data_entrada = venda.data_entrada
  inner join visita on visita.data_visita = venda.data_entrada
  inner join imovel on imovel.id_imovel = visita.id_imovel
  inner join cliente on cliente.id_cliente = imovel.id_cliente
  inner join  corretores on corretores.id_corretores = visita.id_corretores;



-- 5) Listar todas os imoveis e as etapas da negociação para a compra do imóvel.(Dados da venda conforme questão 4, e os dados da negociação, noma da etapa, data inicial,final, observação)

-- 6) Listar todas os imoveis alugados e o histórico das vistorias e dos reparos quando a vistoria tiver gerado reparos.

-- 7) Fazer uma consulta com a estatística de visitas realizadas pelos corretores. Ou seja a quantidade de clientes atendido pelos corretores em um intervalo de data .(o intervalo será definido conforme a sua massa de dados).

-- 8) Fazer uma consulta com a estatística de visitas realizada pelos corretores com detalhamento por tipo de visita, ou seja listar a quantidade de visitas realizadas pelos corretores por tipo de visita(venda ou aluguel).

-- 9) Listar os Clientes que nunca fizeram Visitas.

-- 10) Qual o Cliente que mais comprou imóvel na imobiliária.

-- 11) Qual o Cliente que tem mais imóveis alugados

-- 12) Qual o Imóvel que mais sofreu reparos

-- 13) Qual o corretor mais produtivo(que mais vendeu imóveis).

-- 14) Qual o Cliente(s) que menos atrasou ou nunca atrasou o aluguel.

-- 15) Qual o Cliente(s) que mais atrasou o aluguel.

-- 16) Qual o imóvel nunca foi visitado

-- 17) Qual o imóvel mais visitado que está “encalhado”. Ou seja que nunca foi comprado ou alugado.

-- 18) Fazer uma consulta com a estatística de clientes por sexo, ou seja a quantidade de clientes por sexo.

-- 19) Fazer uma consulta com a estatística de clientes por cidade.

-- 20) Fazer uma consulta com a estatística de visitas realizadas por tipo, ou seja a quantidade de visita com finalidade de aluguel e a quantidade para compra.

-- 21) Listar os corretores das visitas com a finalidade(compra ou aluguel) que teve maior número de visitas

-- 22) Fazer uma consulta com a estatística dos imóveis pela característica de tamanho do quintal que não estão alugados, ou seja a quantidade de imóveis por tamanho do quintal que não estão alugados.

-- 23) Fazer uma consulta com a estatística de visitas dos corretores realizaram por classificação da visita, ou seja listar: Nome  do corretor, TotalNegocioFechado, TotalClienteEmDuvida, TotalVisitaPerdida, TotalApenasEstavaPesquisando

-- 24) Listar os Clientes que já fizeram as seguintes ações(todas): visita, compra, aluguel e venda

-- 25) Listar os corretores que já realizaram visitas para aluguel e compra.

-- 26) Listar os corretores que menos realizaram visitas.

-- 27) Faça vocês do grupo uma pergunta que necessite utilizar funções agregadas e subconsulta para obter a resposta.

-- 28) Fazer uma consulta que liste o faturamento por mês separado por aluguel, venda. Formato de saída: Mês, valorTotalVenda, ValorTotalAluguel, ValorTotalReparos.