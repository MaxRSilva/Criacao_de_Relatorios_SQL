UPDATE hospedagens
SET ativo = 1 
WHERE hospedagem_id IN ('1', '10', '100');

UPDATE proprietarios
SET contato = 'daniela_120@gmail.com'
WHERE proprietario_id = '1009';

DELETE FROM reservas
WHERE hospedagem_id IN ('10000', '1001');

DELETE FROM avaliacoes
WHERE hospedagem_id IN ('10000', '1001');

DELETE FROM hospedagens
WHERE hospedagem_id IN ('10000', '1001');