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