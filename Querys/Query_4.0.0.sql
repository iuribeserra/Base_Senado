SELECT
	SEN.nome AS SENADOR,
	TV.sigla AS VOTO,
	SEQ.resultado AS RESULTADO,
	COUNT(*) AS QTD_RESULTADO_GANHADOR
FROM base_senado.voto VT
INNER JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
INNER JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
INNER JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
INNER JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
WHERE TV.sigla LIKE 'Sim' AND SEQ.resultado LIKE 'Aprovado'
GROUP BY 1,2,3
ORDER BY 4 DESC