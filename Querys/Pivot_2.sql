SELECT DISTINCT
SEN.NOME AS SENADOR,
CONCAT(', MAX(CASE WHEN SEN.idSENADOR=',SEN.idSENADOR,' THEN TV.SIGLA END) AS "',SEN.NOME,'"') AS TEXTO
FROM base_senado.SENADOR SEN
ORDER BY 1, 2


SELECT
SEQ.MATERIA
, MAX(CASE WHEN SEN.idSENADOR=1 THEN TV.SIGLA END) AS "Acir Gurgacz"
, MAX(CASE WHEN SEN.idSENADOR=8 THEN TV.SIGLA END) AS "A�cio Neves"
, MAX(CASE WHEN SEN.idSENADOR=100 THEN TV.SIGLA END) AS "Airton Sandoval"
, MAX(CASE WHEN SEN.idSENADOR=2 THEN TV.SIGLA END) AS "Aloysio Nunes Ferreira"
, MAX(CASE WHEN SEN.idSENADOR=3 THEN TV.SIGLA END) AS "Alvaro Dias"
, MAX(CASE WHEN SEN.idSENADOR=4 THEN TV.SIGLA END) AS "Ana Am�lia"
, MAX(CASE WHEN SEN.idSENADOR=84 THEN TV.SIGLA END) AS "�ngela Portela"
, MAX(CASE WHEN SEN.idSENADOR=85 THEN TV.SIGLA END) AS "Angela Portela"
, MAX(CASE WHEN SEN.idSENADOR=5 THEN TV.SIGLA END) AS "Antonio Anastasia"
, MAX(CASE WHEN SEN.idSENADOR=6 THEN TV.SIGLA END) AS "Antonio Carlos Valadares"
, MAX(CASE WHEN SEN.idSENADOR=86 THEN TV.SIGLA END) AS "Armando Monteiro"
, MAX(CASE WHEN SEN.idSENADOR=7 THEN TV.SIGLA END) AS "Ata�des Oliveira"
, MAX(CASE WHEN SEN.idSENADOR=9 THEN TV.SIGLA END) AS "Benedito de Lira"
, MAX(CASE WHEN SEN.idSENADOR=10 THEN TV.SIGLA END) AS "Blairo Maggi"
, MAX(CASE WHEN SEN.idSENADOR=13 THEN TV.SIGLA END) AS "C�ssio Cunha Lima"
, MAX(CASE WHEN SEN.idSENADOR=87 THEN TV.SIGLA END) AS "Cidinho Santos"
, MAX(CASE WHEN SEN.idSENADOR=11 THEN TV.SIGLA END) AS "Ciro Nogueira"
, MAX(CASE WHEN SEN.idSENADOR=12 THEN TV.SIGLA END) AS "Cristovam Buarque"
, MAX(CASE WHEN SEN.idSENADOR=14 THEN TV.SIGLA END) AS "Dalirio Beber"
, MAX(CASE WHEN SEN.idSENADOR=19 THEN TV.SIGLA END) AS "D�rio Berger"
, MAX(CASE WHEN SEN.idSENADOR=15 THEN TV.SIGLA END) AS "Davi Alcolumbre"
, MAX(CASE WHEN SEN.idSENADOR=88 THEN TV.SIGLA END) AS "Deca"
, MAX(CASE WHEN SEN.idSENADOR=16 THEN TV.SIGLA END) AS "Delc�dio do Amaral"
, MAX(CASE WHEN SEN.idSENADOR=17 THEN TV.SIGLA END) AS "Donizeti Nogueira"
, MAX(CASE WHEN SEN.idSENADOR=18 THEN TV.SIGLA END) AS "Douglas Cintra"
, MAX(CASE WHEN SEN.idSENADOR=20 THEN TV.SIGLA END) AS "Edison Lob�o"
, MAX(CASE WHEN SEN.idSENADOR=21 THEN TV.SIGLA END) AS "Eduardo Amorim"
, MAX(CASE WHEN SEN.idSENADOR=89 THEN TV.SIGLA END) AS "Eduardo Braga"
, MAX(CASE WHEN SEN.idSENADOR=90 THEN TV.SIGLA END) AS "Eduardo Lopes"
, MAX(CASE WHEN SEN.idSENADOR=22 THEN TV.SIGLA END) AS "Elmano F�rrer"
, MAX(CASE WHEN SEN.idSENADOR=23 THEN TV.SIGLA END) AS "Eun�cio Oliveira"
, MAX(CASE WHEN SEN.idSENADOR=28 THEN TV.SIGLA END) AS "F�tima Bezerra"
, MAX(CASE WHEN SEN.idSENADOR=24 THEN TV.SIGLA END) AS "Fernando Bezerra Coelho"
, MAX(CASE WHEN SEN.idSENADOR=25 THEN TV.SIGLA END) AS "Fernando Collor"
, MAX(CASE WHEN SEN.idSENADOR=26 THEN TV.SIGLA END) AS "Fernando Ribeiro"
, MAX(CASE WHEN SEN.idSENADOR=27 THEN TV.SIGLA END) AS "Flexa Ribeiro"
, MAX(CASE WHEN SEN.idSENADOR=29 THEN TV.SIGLA END) AS "Garibaldi Alves Filho"
, MAX(CASE WHEN SEN.idSENADOR=91 THEN TV.SIGLA END) AS "Gilberto Piselo"
, MAX(CASE WHEN SEN.idSENADOR=30 THEN TV.SIGLA END) AS "Gladson Cameli"
, MAX(CASE WHEN SEN.idSENADOR=31 THEN TV.SIGLA END) AS "Gleisi Hoffmann"
, MAX(CASE WHEN SEN.idSENADOR=33 THEN TV.SIGLA END) AS "H�lio Jos�"
, MAX(CASE WHEN SEN.idSENADOR=32 THEN TV.SIGLA END) AS "Humberto Costa"
, MAX(CASE WHEN SEN.idSENADOR=34 THEN TV.SIGLA END) AS "Ivo Cassol"
, MAX(CASE WHEN SEN.idSENADOR=35 THEN TV.SIGLA END) AS "Jader Barbalho"
, MAX(CASE WHEN SEN.idSENADOR=42 THEN TV.SIGLA END) AS "Jo�o Alberto Souza"
, MAX(CASE WHEN SEN.idSENADOR=43 THEN TV.SIGLA END) AS "Jo�o Capiberibe"
, MAX(CASE WHEN SEN.idSENADOR=36 THEN TV.SIGLA END) AS "Jorge Viana"
, MAX(CASE WHEN SEN.idSENADOR=37 THEN TV.SIGLA END) AS "Jos� Agripino"
, MAX(CASE WHEN SEN.idSENADOR=92 THEN TV.SIGLA END) AS "Jos� An�bal"
, MAX(CASE WHEN SEN.idSENADOR=38 THEN TV.SIGLA END) AS "Jos� Maranh�o"
, MAX(CASE WHEN SEN.idSENADOR=39 THEN TV.SIGLA END) AS "Jos� Medeiros"
, MAX(CASE WHEN SEN.idSENADOR=40 THEN TV.SIGLA END) AS "Jos� Pimentel"
, MAX(CASE WHEN SEN.idSENADOR=41 THEN TV.SIGLA END) AS "Jos� Serra"
, MAX(CASE WHEN SEN.idSENADOR=93 THEN TV.SIGLA END) AS "K�tia Abreu"
, MAX(CASE WHEN SEN.idSENADOR=44 THEN TV.SIGLA END) AS "Lasier Martins"
, MAX(CASE WHEN SEN.idSENADOR=47 THEN TV.SIGLA END) AS "L�dice da Mata"
, MAX(CASE WHEN SEN.idSENADOR=45 THEN TV.SIGLA END) AS "Lindbergh Farias"
, MAX(CASE WHEN SEN.idSENADOR=48 THEN TV.SIGLA END) AS "L�cia V�nia"
, MAX(CASE WHEN SEN.idSENADOR=46 THEN TV.SIGLA END) AS "Luiz Henrique"
, MAX(CASE WHEN SEN.idSENADOR=49 THEN TV.SIGLA END) AS "Magno Malta"
, MAX(CASE WHEN SEN.idSENADOR=50 THEN TV.SIGLA END) AS "Marcelo Crivella"
, MAX(CASE WHEN SEN.idSENADOR=51 THEN TV.SIGLA END) AS "Maria do Carmo Alves"
, MAX(CASE WHEN SEN.idSENADOR=52 THEN TV.SIGLA END) AS "Marta Suplicy"
, MAX(CASE WHEN SEN.idSENADOR=53 THEN TV.SIGLA END) AS "Omar Aziz"
, MAX(CASE WHEN SEN.idSENADOR=54 THEN TV.SIGLA END) AS "Otto Alencar"
, MAX(CASE WHEN SEN.idSENADOR=94 THEN TV.SIGLA END) AS "Pastor Valadares"
, MAX(CASE WHEN SEN.idSENADOR=55 THEN TV.SIGLA END) AS "Paulo Bauer"
, MAX(CASE WHEN SEN.idSENADOR=56 THEN TV.SIGLA END) AS "Paulo Paim"
, MAX(CASE WHEN SEN.idSENADOR=57 THEN TV.SIGLA END) AS "Paulo Rocha"
, MAX(CASE WHEN SEN.idSENADOR=95 THEN TV.SIGLA END) AS "Pedro Chaves"
, MAX(CASE WHEN SEN.idSENADOR=96 THEN TV.SIGLA END) AS "Pinto Itamaraty"
, MAX(CASE WHEN SEN.idSENADOR=58 THEN TV.SIGLA END) AS "Raimundo Lira"
, MAX(CASE WHEN SEN.idSENADOR=59 THEN TV.SIGLA END) AS "Randolfe Rodrigues"
, MAX(CASE WHEN SEN.idSENADOR=60 THEN TV.SIGLA END) AS "Regina Sousa"
, MAX(CASE WHEN SEN.idSENADOR=61 THEN TV.SIGLA END) AS "Reguffe"
, MAX(CASE WHEN SEN.idSENADOR=62 THEN TV.SIGLA END) AS "Renan Calheiros"
, MAX(CASE WHEN SEN.idSENADOR=63 THEN TV.SIGLA END) AS "Ricardo Ferra�o"
, MAX(CASE WHEN SEN.idSENADOR=64 THEN TV.SIGLA END) AS "Ricardo Franco"
, MAX(CASE WHEN SEN.idSENADOR=97 THEN TV.SIGLA END) AS "Roberto Muniz"
, MAX(CASE WHEN SEN.idSENADOR=65 THEN TV.SIGLA END) AS "Roberto Requi�o"
, MAX(CASE WHEN SEN.idSENADOR=66 THEN TV.SIGLA END) AS "Roberto Rocha"
, MAX(CASE WHEN SEN.idSENADOR=68 THEN TV.SIGLA END) AS "Rom�rio"
, MAX(CASE WHEN SEN.idSENADOR=67 THEN TV.SIGLA END) AS "Romero Juc�"
, MAX(CASE WHEN SEN.idSENADOR=69 THEN TV.SIGLA END) AS "Ronaldo Caiado"
, MAX(CASE WHEN SEN.idSENADOR=70 THEN TV.SIGLA END) AS "Rose de Freitas"
, MAX(CASE WHEN SEN.idSENADOR=71 THEN TV.SIGLA END) AS "Sandra Braga"
, MAX(CASE WHEN SEN.idSENADOR=73 THEN TV.SIGLA END) AS "S�rgio Petec�o"
, MAX(CASE WHEN SEN.idSENADOR=72 THEN TV.SIGLA END) AS "Simone Tebet"
, MAX(CASE WHEN SEN.idSENADOR=74 THEN TV.SIGLA END) AS "Tasso Jereissati"
, MAX(CASE WHEN SEN.idSENADOR=75 THEN TV.SIGLA END) AS "Telm�rio Mota"
, MAX(CASE WHEN SEN.idSENADOR=101 THEN TV.SIGLA END) AS "Thieres Pinto"
, MAX(CASE WHEN SEN.idSENADOR=76 THEN TV.SIGLA END) AS "Valdir Raupp"
, MAX(CASE WHEN SEN.idSENADOR=77 THEN TV.SIGLA END) AS "Vanessa Grazziotin"
, MAX(CASE WHEN SEN.idSENADOR=78 THEN TV.SIGLA END) AS "Vicentinho Alves"
, MAX(CASE WHEN SEN.idSENADOR=98 THEN TV.SIGLA END) AS "Virginio de Carvalho"
, MAX(CASE WHEN SEN.idSENADOR=79 THEN TV.SIGLA END) AS "Waldemir Moka"
, MAX(CASE WHEN SEN.idSENADOR=80 THEN TV.SIGLA END) AS "Walter Pinheiro"
, MAX(CASE WHEN SEN.idSENADOR=81 THEN TV.SIGLA END) AS "Wellington Fagundes"
, MAX(CASE WHEN SEN.idSENADOR=82 THEN TV.SIGLA END) AS "Wilder Morais"
, MAX(CASE WHEN SEN.idSENADOR=99 THEN TV.SIGLA END) AS "Wirlande da Luz"
, MAX(CASE WHEN SEN.idSENADOR=83 THEN TV.SIGLA END) AS "Zeze Perrella"
FROM base_senado.voto VT
INNER JOIN base_senado.senador SEN 	ON VT.idSENADOR = SEN.idSENADOR
INNER JOIN base_senado.sequencia SEQ 	ON VT.idSEQUENCIA = SEQ.idSEQUENCIA
INNER JOIN base_senado.tipo_voto TV 	ON VT.idTIPO_VOTO = TV.idTIPO_VOTO
INNER JOIN base_senado.tipo_sessao TS 	ON SEQ.TIPO_SESSAO = TS.idTIPO_SESSAO
GROUP BY SEQ.MATERIA
ORDER BY SEQ.MATERIA