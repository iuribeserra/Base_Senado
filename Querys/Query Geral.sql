SELECT
	SEN.nome AS SENADOR,
        SEN.uf AS UF,
        SEN.partido AS PARTIDO,
        TV.sigla AS VOTO,
        TV.descricao AS VOTO_DESCRICAO,
	SEQ.DATA AS DATA,
        SEQ.materia AS MATERIA,
        SEQ.EMENTA AS EMENTA,
        SEQ.DESCRICAO AS DESCRICAO,
        SEQ.SEQUENCIA AS SEQUENCIA,
        SEQ.SESSAO AS SESSAO,
        TS.DESCRICAO AS TIPO_SESSAO
FROM base_senado.voto VT
INNER JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
INNER JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
INNER JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
INNER JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO

