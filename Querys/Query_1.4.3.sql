/*1.4.3*/
CREATE TEMPORARY TABLE PMAX (
        SELECT  
                SEQ.MATERIA,
                SEN.PARTIDO,
                TV.SIGLA,
                SEQ.RESULTADO,
                SEN.UF,
                COUNT(TV.SIGLA) AS QTD
        FROM base_senado.voto VT
        LEFT JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
        LEFT JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
        LEFT JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
        LEFT JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
        WHERE TS.idTIPO_SESSAO IN (1, 3) /*Filtro para selecionar apenas proposicoes que foram normais e complementares e nao secretas*/
		AND SEQ.RESULTADO IN ('Aprovado', 'Rejeitado') /*Filtro para selecionar apenas proposicoes que foram aprovadas e rejeitadas*/
                AND TV.idTIPO_VOTO IN (2, 5, 15, 16) /*Filtro para selecionar apenas votos especificos*/
		/*AND SUBSTRING(SEQ.DATA,1,7) BETWEEN '2015-01' AND '2016-08' /*Filtro para selecionar a data do pre ou pos impeachment*/
                /*AND SUBSTRING(SEQ.DATA,1,7) BETWEEN '2016-09' AND '2017-12' /*Filtro para selecionar a data do pre ou pos impeachment*/
        GROUP BY SEQ.MATERIA, SEN.PARTIDO, TV.SIGLA, SEQ.RESULTADO, SEN.UF
);
CREATE TEMPORARY TABLE VOTOPARTIDO (
        SELECT
              PMAX.MATERIA,
              PMAX.PARTIDO,
              PMAX.RESULTADO,
              PMAX.UF,
              MAX(PMAX.SIGLA) AS SIGLA,
              MAX(PMAX.QTD) AS QTD
        FROM PMAX 
        WHERE
        PMAX.SIGLA NOT IN ('Presidente (art. 51 RISF)'/*, 'P-NRV', 'Abstenção', 'LS', 'Ncom', 'Obstrução', 'MIS', 'AP', 'Votou'*/)
        GROUP BY PMAX.MATERIA,
                 PMAX.PARTIDO,
                 PMAX.RESULTADO,
                 PMAX.UF
);
/*------------------------------------------------------------------------------------------------------------------------------------------*/

SELECT DISTINCT
VP.UF AS UF,
CONCAT(', MAX(CASE WHEN VP.UF=''',VP.UF,''' THEN VP.SIGLA END) AS "',VP.UF,'"') AS TEXTO
FROM VOTOPARTIDO VP
ORDER BY 1, 2;
/*------------------------------------------------------------------------------------------------------------------------------------------*/

SELECT
VP.MATERIA
/*Copia e cola o retorno do resultado da coluna TEXTO da query anterior para gerar a transposicao de linhas para colunas, como no exemplo abaixo*/
, MAX(CASE WHEN VP.UF='AC' THEN VP.SIGLA END) AS "AC"
, MAX(CASE WHEN VP.UF='AL' THEN VP.SIGLA END) AS "AL"
, MAX(CASE WHEN VP.UF='AM' THEN VP.SIGLA END) AS "AM"
, MAX(CASE WHEN VP.UF='AP' THEN VP.SIGLA END) AS "AP"
, MAX(CASE WHEN VP.UF='BA' THEN VP.SIGLA END) AS "BA"
, MAX(CASE WHEN VP.UF='CE' THEN VP.SIGLA END) AS "CE"
, MAX(CASE WHEN VP.UF='DF' THEN VP.SIGLA END) AS "DF"
, MAX(CASE WHEN VP.UF='ES' THEN VP.SIGLA END) AS "ES"
, MAX(CASE WHEN VP.UF='GO' THEN VP.SIGLA END) AS "GO"
, MAX(CASE WHEN VP.UF='MA' THEN VP.SIGLA END) AS "MA"
, MAX(CASE WHEN VP.UF='MG' THEN VP.SIGLA END) AS "MG"
, MAX(CASE WHEN VP.UF='MS' THEN VP.SIGLA END) AS "MS"
, MAX(CASE WHEN VP.UF='MT' THEN VP.SIGLA END) AS "MT"
, MAX(CASE WHEN VP.UF='PA' THEN VP.SIGLA END) AS "PA"
, MAX(CASE WHEN VP.UF='PB' THEN VP.SIGLA END) AS "PB"
, MAX(CASE WHEN VP.UF='PE' THEN VP.SIGLA END) AS "PE"
, MAX(CASE WHEN VP.UF='PI' THEN VP.SIGLA END) AS "PI"
, MAX(CASE WHEN VP.UF='PR' THEN VP.SIGLA END) AS "PR"
, MAX(CASE WHEN VP.UF='RJ' THEN VP.SIGLA END) AS "RJ"
, MAX(CASE WHEN VP.UF='RN' THEN VP.SIGLA END) AS "RN"
, MAX(CASE WHEN VP.UF='RO' THEN VP.SIGLA END) AS "RO"
, MAX(CASE WHEN VP.UF='RR' THEN VP.SIGLA END) AS "RR"
, MAX(CASE WHEN VP.UF='RS' THEN VP.SIGLA END) AS "RS"
, MAX(CASE WHEN VP.UF='SC' THEN VP.SIGLA END) AS "SC"
, MAX(CASE WHEN VP.UF='SE' THEN VP.SIGLA END) AS "SE"
, MAX(CASE WHEN VP.UF='SP' THEN VP.SIGLA END) AS "SP"
, MAX(CASE WHEN VP.UF='TO' THEN VP.SIGLA END) AS "TO"
, VP.RESULTADO
FROM VOTOPARTIDO VP
/*WHERE VP.SIGLA IN ('Sim', 'Não') /*Filtro para selecionar apenas votos especificos*/
GROUP BY VP.MATERIA
ORDER BY VP.MATERIA;