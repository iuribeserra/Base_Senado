/*1.4.2*/
CREATE TEMPORARY TABLE PMAX (
        SELECT  
                SEQ.MATERIA,
                SEN.PARTIDO,
                TV.SIGLA,
                SEQ.RESULTADO,
                SEQ.DATA,
                COUNT(TV.SIGLA) AS QTD
        FROM base_senado.voto VT
        LEFT JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
        LEFT JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
        LEFT JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
        LEFT JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
        WHERE TS.idTIPO_SESSAO IN (1, 3) /*Filtro para selecionar apenas proposicoes que foram normais e complementares e nao secretas*/
        AND SEQ.RESULTADO IN ('Aprovado', 'Rejeitado') /*Filtro para selecionar apenas proposicoes que foram aprovadas e rejeitadas*/
        /*AND TV.idTIPO_VOTO IN (2, 5, 15, 16) /*Filtro para selecionar apenas votos especificos*/
        /*AND SUBSTRING(SEQ.DATA,1,7) BETWEEN '2015-01' AND '2016-08' /*Filtro para selecionar a data do pre ou pos impeachment*/
        /*AND SUBSTRING(SEQ.DATA,1,7) BETWEEN '2016-09' AND '2017-12' /*Filtro para selecionar a data do pre ou pos impeachment*/
        GROUP BY SEQ.MATERIA, SEN.PARTIDO, TV.SIGLA, SEQ.RESULTADO, SEQ.DATA
);
CREATE TEMPORARY TABLE VOTOPARTIDO (
        SELECT
              PMAX.MATERIA,
              PMAX.PARTIDO,
              PMAX.RESULTADO,
              PMAX.DATA,
              MAX(PMAX.SIGLA) AS SIGLA,
              MAX(PMAX.QTD) AS QTD
        FROM PMAX 
        WHERE
        PMAX.SIGLA NOT IN ('Presidente (art. 51 RISF)'/*, 'P-NRV', 'Abstenção', 'LS', 'Ncom', 'Obstrução', 'MIS', 'AP'*/)
        GROUP BY PMAX.MATERIA,
                 PMAX.PARTIDO,
                 PMAX.RESULTADO,
                 PMAX.DATA
);
/*------------------------------------------------------------------------------------------------------------------------------------------*/

SELECT DISTINCT
        VP.PARTIDO AS PARTIDO,
        CONCAT(', MAX(CASE WHEN VP.PARTIDO= "',VP.PARTIDO,'" THEN VP.SIGLA END) AS "',VP.PARTIDO,'"') AS TEXTO
FROM VOTOPARTIDO VP
ORDER BY 1, 2;
/*------------------------------------------------------------------------------------------------------------------------------------------*/

SELECT
VP.MATERIA,
DATE_FORMAT(VP.DATA, '%d/%m/%Y') AS DATA
, MAX(CASE WHEN VP.PARTIDO= "DEM" THEN VP.SIGLA END) AS "DEM"
, MAX(CASE WHEN VP.PARTIDO= "PCdoB" THEN VP.SIGLA END) AS "PCdoB"
, MAX(CASE WHEN VP.PARTIDO= "PDT" THEN VP.SIGLA END) AS "PDT"
, MAX(CASE WHEN VP.PARTIDO= "PMDB" THEN VP.SIGLA END) AS "PMDB"
, MAX(CASE WHEN VP.PARTIDO= "PP" THEN VP.SIGLA END) AS "PP"
, MAX(CASE WHEN VP.PARTIDO= "PPS" THEN VP.SIGLA END) AS "PPS"
, MAX(CASE WHEN VP.PARTIDO= "PR" THEN VP.SIGLA END) AS "PR"
, MAX(CASE WHEN VP.PARTIDO= "PRB" THEN VP.SIGLA END) AS "PRB"
, MAX(CASE WHEN VP.PARTIDO= "PSB" THEN VP.SIGLA END) AS "PSB"
, MAX(CASE WHEN VP.PARTIDO= "PSC" THEN VP.SIGLA END) AS "PSC"
, MAX(CASE WHEN VP.PARTIDO= "PSD" THEN VP.SIGLA END) AS "PSD"
, MAX(CASE WHEN VP.PARTIDO= "PSDB" THEN VP.SIGLA END) AS "PSDB"
, MAX(CASE WHEN VP.PARTIDO= "PSOL" THEN VP.SIGLA END) AS "PSOL"
, MAX(CASE WHEN VP.PARTIDO= "PT" THEN VP.SIGLA END) AS "PT"
, MAX(CASE WHEN VP.PARTIDO= "PTB" THEN VP.SIGLA END) AS "PTB"
, VP.RESULTADO
FROM VOTOPARTIDO VP
/*WHERE VP.SIGLA NOT IN ('Votou')*/
GROUP BY VP.MATERIA
ORDER BY VP.MATERIA;