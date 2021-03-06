/*2.1*/
SELECT DISTINCT
SEQ.materia AS MATERIA,
CONCAT(', MAX(CASE WHEN SEQ.MATERIA=''',SEQ.MATERIA,''' THEN TV.SIGLA END) AS "',SEQ.MATERIA,'"') AS TEXTO
FROM base_senado.voto VT
INNER JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
INNER JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
INNER JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
INNER JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
WHERE TS.idTIPO_SESSAO IN (1, 3) AND SEQ.RESULTADO IN ('Aprovado', 'Rejeitado') AND SEQ.materia IN ('PEC 00040/2011',
'PLC 00002/2015',
'MPV 00663/2014',
'MPV 00665/2014',
'PLS 00400/2014',
'MPV 00670/2015',
'MPV 00678/2015',
'MPV 00430/2015',
'PLC 00057/2015',
'PDS 00347/2015',
'PEC 00113/2015',
'PLC 00023/2015',
'PEC 00133/2015',
'MPV 00727/2016',
'MPV 00729/2016',
'PRS 00029/2016',
'DEN 00001/2016',
'PEC 00043/2012',
'PLC 00007/2016',
'MPV 00693/2015',
'PEC 00055/2016',
'PLS 00085/2017',
'PEC 00064/2016',
'MPV 00014/2001',
'PLC 00038/2017',
'SCD 00007/2016',
'PLS 00477/2011',
'SCD 00005/2015',
'PLS 00224/2013',
'PLC 00101/2015',
'MPV 00744/2016',
'MPV 00746/2016',
'PEC 00083/2015',
'PLC 00186/2015',
'PLS 00555/2015',
'PLS 00405/2016',
'PEC 00036/2016',
'PEC 00010/2013',
'PEC 00014/2016',
'PLC 00028/2017')
ORDER BY 1, 2;


SELECT
CONCAT(SEN.nome,' - ',SEN.partido,'/',SEN.UF) AS SENADOR
/*SEN.partido AS PARTIDO,
SEN.uf AS UF,
SEQ.materia AS MATERIA,
TV.sigla AS VOTO*/
, MAX(CASE WHEN SEQ.MATERIA='DEN 00001/2016' THEN TV.SIGLA END) AS "DEN 00001/2016"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00014/2001' THEN TV.SIGLA END) AS "MPV 00014/2001"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00663/2014' THEN TV.SIGLA END) AS "MPV 00663/2014"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00665/2014' THEN TV.SIGLA END) AS "MPV 00665/2014"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00678/2015' THEN TV.SIGLA END) AS "MPV 00678/2015"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00693/2015' THEN TV.SIGLA END) AS "MPV 00693/2015"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00727/2016' THEN TV.SIGLA END) AS "MPV 00727/2016"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00729/2016' THEN TV.SIGLA END) AS "MPV 00729/2016"
, MAX(CASE WHEN SEQ.MATERIA='MPV 00746/2016' THEN TV.SIGLA END) AS "MPV 00746/2016"
, MAX(CASE WHEN SEQ.MATERIA='PDS 00347/2015' THEN TV.SIGLA END) AS "PDS 00347/2015"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00010/2013' THEN TV.SIGLA END) AS "PEC 00010/2013"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00014/2016' THEN TV.SIGLA END) AS "PEC 00014/2016"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00036/2016' THEN TV.SIGLA END) AS "PEC 00036/2016"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00040/2011' THEN TV.SIGLA END) AS "PEC 00040/2011"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00043/2012' THEN TV.SIGLA END) AS "PEC 00043/2012"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00055/2016' THEN TV.SIGLA END) AS "PEC 00055/2016"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00064/2016' THEN TV.SIGLA END) AS "PEC 00064/2016"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00113/2015' THEN TV.SIGLA END) AS "PEC 00113/2015"
, MAX(CASE WHEN SEQ.MATERIA='PEC 00133/2015' THEN TV.SIGLA END) AS "PEC 00133/2015"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00002/2015' THEN TV.SIGLA END) AS "PLC 00002/2015"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00007/2016' THEN TV.SIGLA END) AS "PLC 00007/2016"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00023/2015' THEN TV.SIGLA END) AS "PLC 00023/2015"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00028/2017' THEN TV.SIGLA END) AS "PLC 00028/2017"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00038/2017' THEN TV.SIGLA END) AS "PLC 00038/2017"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00057/2015' THEN TV.SIGLA END) AS "PLC 00057/2015"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00101/2015' THEN TV.SIGLA END) AS "PLC 00101/2015"
, MAX(CASE WHEN SEQ.MATERIA='PLC 00186/2015' THEN TV.SIGLA END) AS "PLC 00186/2015"
, MAX(CASE WHEN SEQ.MATERIA='PLS 00085/2017' THEN TV.SIGLA END) AS "PLS 00085/2017"
, MAX(CASE WHEN SEQ.MATERIA='PLS 00400/2014' THEN TV.SIGLA END) AS "PLS 00400/2014"
, MAX(CASE WHEN SEQ.MATERIA='PLS 00405/2016' THEN TV.SIGLA END) AS "PLS 00405/2016"
, MAX(CASE WHEN SEQ.MATERIA='PLS 00477/2011' THEN TV.SIGLA END) AS "PLS 00477/2011"
, MAX(CASE WHEN SEQ.MATERIA='PRS 00029/2016' THEN TV.SIGLA END) AS "PRS 00029/2016"
, MAX(CASE WHEN SEQ.MATERIA='SCD 00005/2015' THEN TV.SIGLA END) AS "SCD 00005/2015"
, MAX(CASE WHEN SEQ.MATERIA='SCD 00007/2016' THEN TV.SIGLA END) AS "SCD 00007/2016"
FROM base_senado.voto VT
INNER JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
INNER JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
INNER JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
INNER JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
/*AND TV.idTIPO_VOTO IN (15, 16) SIM-N�O*/
GROUP BY SEN.NOME
ORDER BY SEN.NOME;