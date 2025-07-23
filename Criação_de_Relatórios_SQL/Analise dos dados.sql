-- Verificação de hoteis ativos//
SELECT * 
FROM hospedagens
WHERE tipo = 'hotel' AND ativo = 1;   


-- Verificação de ticket médio dos clientes 
SELECT
	cliente_id,
    ROUND (AVG (preco_total),2) AS 'ticket medio'
FROM alugueis
GROUP BY cliente_id;   

-- Verificação da medida de estadia 

SELECT 
	cliente_id,
    AVG(DATEDIFF(data_fim,data_inicio)) AS  media_dias_estadia
FROM alugueis
GROUP BY cliente_id
ORDER BY media_dias_estadia DESC;


-- Filtro de Informações dos proprietários
SELECT p.nome AS nome_proprietário, 
	COUNT(h.hospedagem_id) AS total_hospedagens_ativas 
FROM proprietarios p 
JOIN hospedagens h
	ON p.proprietario_id = h.proprietario_id
WHERE h.ativo = 1
GROUP BY p.nome 
ORDER BY total_hospedagens_ativas DESC
LIMIT 10; 

-- Verificação de propriedades inativas 
SELECT p.nome,	
	COUNT(*) AS total_hospedagens_inativas
FROM proprietarios p 
JOIN hospedagens h 
	ON p.proprietario_id = h.proprietario_id
WHERE h.ativo = 0
GROUP BY p.nome
ORDER BY total_hospedagens_inativas DESC;


-- Datas de reservas 
SELECT 
	YEAR(data_inicio) AS ano, 
    MONTH(data_inicio) AS mes,
    COUNT(*) AS total_alugueis
FROM alugueis 
GROUP BY ano, mes
ORDER BY total_alugueis DESC;