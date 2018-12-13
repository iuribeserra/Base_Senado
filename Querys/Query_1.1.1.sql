/*1.1.1*/
SELECT
        SEQ.materia AS MATERIA,
        DATE_FORMAT(SEQ.DATA,'%d/%m/%Y') AS DATA,
	CONCAT(SEN.nome,' - ',SEN.partido,'/',SEN.UF) AS SENADOR,
	SEQ.resultado AS RESULTADO
FROM base_senado.voto VT
INNER JOIN base_senado.senador SEN ON VT.idSENADOR = SEN.idSENADOR
INNER JOIN base_senado.sequencia SEQ ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
INNER JOIN base_senado.tipo_voto TV ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
INNER JOIN base_senado.tipo_sessao TS ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
WHERE TS.idTIPO_SESSAO IN (1, 3) /*Filtro para selecionar apenas proposicoes que foram normais e complementares e nao secretas*/
AND SEQ.RESULTADO IN ('Aprovado', 'Rejeitado') /*Filtro para selecionar apenas proposicoes que foram aprovadas e rejeitadas*/
/*AND TV.idTIPO_VOTO IN (2, 5, 15, 16) /*Filtro para selecionar apenas votos especificos*/
/*AND SUBSTRING(SEQ.DATA,1,7) BETWEEN '2015-01' AND '2016-08' /*Filtro para selecionar a data do pre ou pos impeachment*/
/*AND SUBSTRING(SEQ.DATA,1,7) BETWEEN '2016-09' AND '2017-12' /*Filtro para selecionar a data do pre ou pos impeachment*/;