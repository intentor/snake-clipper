*Procedure CobrProc para uso no Jogo Snake
*CobrProc v0.1
*Por Andre Martins
*andrel_martins@yahoo.com.br

*Funcoes presentes nesta Procedure:
* - CLIN(<Variavel de Tempo>) - Define Linha aleatoria para a Cobra
* - CCOL(<Variavel de Tempo>) - Define Coluna aleatoria para a Cobra
* - CLINCMD(<Variavel de Tempo>) - Define Linha aleatoria para a Comida
* - CCOLCMD(<Variavel de Tempo>) - Define Coluna aleatoria para a Comida
* - POSCMDC(<Variavel de Coluna da Comida>) - Define Coluna para a Comida
* - CBRCRV(<Linha>,<Coluna>) - Verifica se caractere atual == PosCurv
* - CPRCBR(<Linha>,<Coluna>) - Verifica se caractere atual == alguma PosCobr
* - SNAKE() - Inicia SNAKE GAME ENGINE 0.1

*============================================================================

*-------------------------------------------*
* Funcao CLIN                               *
*[Seleciona aleatoriamente uma Linha (1-24)]*
*-------------------------------------------* 

FUNCTION CLIN(vTempo)

*Definicao das variaveis LOCAIS
vRight = 0
vLeft = 0
vNum = 0
vLinNum = 0
vlin = 0
vLinStr = SPACE(2)

*Variavel que indica a parte dos segundos (direita)
vRight = VAL(RIGHT(vTempo,2))
*Variavel que indica a parte das horas (esquerda)
vLeft = VAL(LEFT(vTempo,2))
*Variavel que armazenara a linha final

*Variavel que realiza o calculo da aleatoriedade
vNum = (vRight * vLeft) + (vRight * 2) + (vLeft + vRight)

*Selecionando o valor de dois digitos para a linha
IF VAL(LEFT(vTempo,1)) < 5
	vLinStr = RIGHT(STR(vNum),1) + RIGHT(vTempo,1)
ELSE
	vLinStr = RIGHT(vTempo,1) + RIGHT(STR(vNum),1)
ENDIF
vLinNum = VAL(vLinStr)

*Compreendendo o valor de "vLin" entre 2 e 23

DO CASE
	CASE vLinNum == 0
		vLin = 2
	CASE vLinNum == 1
		vLin = 3
	CASE vLinNum == 2
		vLin = 4
	CASE vLinNum == 3
		vLin = 5
	CASE vLinNum == 4
		vLin = 6
	CASE vLinNum == 5
		vLin = 7
	CASE vLinNum == 6
		vLin = 8
	CASE vLinNum == 7
		vLin = 9
	CASE vLinNum == 8
		vLin = 10
	CASE vLinNum == 9
		vLin = 11
	CASE vLinNum == 10
		vLin = 12
	CASE vLinNum == 11
		vLin = 13
	CASE vLinNum == 12
		vLin = 14
	CASE vLinNum == 13
		vLin = 15
	CASE vLinNum == 14
		vLin = 16
	CASE vLinNum == 15
		vLin = 17
	CASE vLinNum == 16
		vLin = 18
	CASE vLinNum == 17
		vLin = 19
	CASE vLinNum == 18
		vLin = 20
	CASE vLinNum == 19
		vLin = 21
	CASE vLinNum == 20
		vLin = 22
	CASE vLinNum == 21
		vLin = 23
	CASE vLinNum == 22
		vLin = 21
	CASE vLinNum == 23
		vLin = 20
	CASE vLinNum == 24
		vLin = 19
	CASE vLinNum == 25
		vLin = 18
	CASE vLinNum == 26
		vLin = 17
	CASE vLinNum == 27
		vLin = 16
	CASE vLinNum == 28
		vLin = 15
	CASE vLinNum == 29
		vLin = 14
	CASE vLinNum == 30
		vLin = 13
	CASE vLinNum == 31
		vLin = 12
	CASE vLinNum == 32
		vLin = 11
	CASE vLinNum == 33
		vLin = 10
	CASE vLinNum == 34
		vLin = 9
	CASE vLinNum == 35
		vLin = 8
	CASE vLinNum == 36
		vLin = 7
	CASE vLinNum == 37
		vLin = 6
	CASE vLinNum == 38
		vLin = 5
	CASE vLinNum == 39
		vLin = 4
	CASE vLinNum == 40
		vLin = 3
	CASE vLinNum == 41
		vLin = 2
	CASE vLinNum == 42
		vLin = 3
	CASE vLinNum == 43
		vLin = 4
	CASE vLinNum == 44
		vLin = 5
	CASE vLinNum == 45
		vLin = 6
	CASE vLinNum == 46
		vLin = 7
	CASE vLinNum == 47
		vLin = 8
	CASE vLinNum == 48
		vLin = 9
	CASE vLinNum == 49
		vLin = 10
	CASE vLinNum == 50
		vLin = 11
	CASE vLinNum == 51
		vLin = 12
	CASE vLinNum == 52
		vLin = 13
	CASE vLinNum == 53
		vLin = 14
	CASE vLinNum == 54
		vLin = 15
	CASE vLinNum == 55
		vLin = 16
	CASE vLinNum == 56
		vLin = 17
	CASE vLinNum == 57
		vLin = 18
	CASE vLinNum == 58
		vLin = 19
	CASE vLinNum == 59
		vLin = 20
	CASE vLinNum == 60
		vLin = 21
	CASE vLinNum == 61
		vLin = 22
	CASE vLinNum == 62
		vLin = 23
	CASE vLinNum == 63
		vLin = 21
	CASE vLinNum == 64
		vLin = 20
	CASE vLinNum == 65
		vLin = 19
	CASE vLinNum == 66
		vLin = 18
	CASE vLinNum == 67
		vLin = 17
	CASE vLinNum == 68
		vLin = 16
	CASE vLinNum == 69
		vLin = 15
	CASE vLinNum == 70
		vLin = 14
	CASE vLinNum == 71
		vLin = 13
	CASE vLinNum == 72
		vLin = 12
	CASE vLinNum == 73
		vLin = 11
	CASE vLinNum == 74
		vLin = 10
	CASE vLinNum == 75
		vLin = 9
	CASE vLinNum == 76
		vLin = 8
	CASE vLinNum == 77
		vLin = 7
	CASE vLinNum == 78
		vLin = 6
	CASE vLinNum == 79
		vLin = 5
	CASE vLinNum == 80
		vLin = 4
	CASE vLinNum == 81
		vLin = 3
	CASE vLinNum == 82
		vLin = 2
	CASE vLinNum == 83
		vLin = 3
	CASE vLinNum == 84
		vLin = 4
	CASE vLinNum == 85
		vLin = 5
	CASE vLinNum == 86
		vLin = 6
	CASE vLinNum == 87
		vLin = 7
	CASE vLinNum == 88
		vLin = 8
	CASE vLinNum == 89
		vLin = 9
	CASE vLinNum == 90
		vLin = 10
	CASE vLinNum == 91
		vLin = 11
	CASE vLinNum == 92
		vLin = 12
	CASE vLinNum == 93
		vLin = 13
	CASE vLinNum == 94
		vLin = 14
	CASE vLinNum == 95
		vLin = 15
	CASE vLinNum == 96
		vLin = 16
	CASE vLinNum == 97
		vLin = 17
	CASE vLinNum == 98
		vLin = 18
	CASE vLinNum == 99
		vLin = 19
ENDCASE

vRight = 0
vLeft = 0
vNum = 0
vLinNum = 0
vLinStr = ""

RETURN(vLin)

*============================================================================

*============================================================================

*--------------------------------------------*
* Funcao CCOL                                *
*[Seleciona aleatoriamente uma Coluna (1-78)]*
*--------------------------------------------*

FUNCTION CCOL(vTempo)

*Definicao das variaveis LOCAIS
vRight = 0
vLeft = 0
vNum = 0
vColNum = 0
vCol = 0
vColStr = SPACE(2)

*Variavel que indica a parte dos segundos (direita)
vRight = VAL(RIGHT(vTempo,2))
*Variavel que indica a parte das horas (esquerda)
vLeft = VAL(LEFT(vTempo,2))
*Variavel que armazenara a linha final

*Variavel que realiza o calculo da aleatoriedade
vNum = (vRight * vLeft) + (vRight * 2) + (vLeft + vRight)

*Selecionando o valor de dois digitos para a linha
IF VAL(LEFT(vTempo,1)) < 5
	vColStr = RIGHT(STR(vNum),1) + RIGHT(vTempo,1)
ELSE
	vColStr = RIGHT(vTempo,1) + RIGHT(STR(vNum),1)
ENDIF
vColNum = VAL(vColStr)

*Compreendendo o valor de "vColNum" entre 7 e 69

DO CASE
	CASE vColNum == 0
		vCol = 7
	CASE vColNum == 1
		vCol = 8
	CASE vColNum == 2
		vCol = 9
	CASE vColNum == 3
		vCol = 10
	CASE vColNum == 4
		vCol = 11
	CASE vColNum == 5
		vCol = 12
	CASE vColNum == 6
		vCol = 13
	CASE vColNum == 7
		vCol = 14
	CASE vColNum == 8
		vCol = 15
	CASE vColNum == 9
		vCol = 16
	CASE vColNum == 10
		vCol = 17
	CASE vColNum == 11
		vCol = 18
	CASE vColNum == 12
		vCol = 19
	CASE vColNum == 13
		vCol = 20
	CASE vColNum == 14
		vCol = 21
	CASE vColNum == 15
		vCol = 22
	CASE vColNum == 16
		vCol = 23
	CASE vColNum == 17
		vCol = 24
	CASE vColNum == 18
		vCol = 25
	CASE vColNum == 19
		vCol = 26
	CASE vColNum == 20
		vCol = 27
	CASE vColNum == 21
		vCol = 28
	CASE vColNum == 22
		vCol = 29
	CASE vColNum == 23
		vCol = 30
	CASE vColNum == 24
		vCol = 31
	CASE vColNum == 25
		vCol = 32
	CASE vColNum == 26
		vCol = 33
	CASE vColNum == 27
		vCol = 34
	CASE vColNum == 28
		vCol = 35
	CASE vColNum == 29
		vCol = 36
	CASE vColNum == 30
		vCol = 37
	CASE vColNum == 31
		vCol = 38
	CASE vColNum == 32
		vCol = 39
	CASE vColNum == 33
		vCol = 40
	CASE vColNum == 34
		vCol = 41
	CASE vColNum == 35
		vCol = 42
	CASE vColNum == 36
		vCol = 43
	CASE vColNum == 37
		vCol = 44
	CASE vColNum == 38
		vCol = 45
	CASE vColNum == 39
		vCol = 46
	CASE vColNum == 40
		vCol = 47
	CASE vColNum == 41
		vCol = 48
	CASE vColNum == 42
		vCol = 49
	CASE vColNum == 43
		vCol = 50
	CASE vColNum == 44
		vCol = 51
	CASE vColNum == 45
		vCol = 52
	CASE vColNum == 46
		vCol = 53
	CASE vColNum == 47
		vCol = 54
	CASE vColNum == 48
		vCol = 55
	CASE vColNum == 49
		vCol = 56
	CASE vColNum == 50
		vCol = 57
	CASE vColNum == 51
		vCol = 58
	CASE vColNum == 52
		vCol = 59
	CASE vColNum == 53
		vCol = 60
	CASE vColNum == 54
		vCol = 61
	CASE vColNum == 55
		vCol = 62
	CASE vColNum == 56
		vCol = 63
	CASE vColNum == 57
		vCol = 64
	CASE vColNum == 58
		vCol = 65
	CASE vColNum == 59
		vCol = 66
	CASE vColNum == 60
		vCol = 67
	CASE vColNum == 61
		vCol = 68
	CASE vColNum == 62
		vCol = 69
	CASE vColNum == 63
		vCol = 68
	CASE vColNum == 64
		vCol = 67
	CASE vColNum == 65
		vCol = 66
	CASE vColNum == 66
		vCol = 65
	CASE vColNum == 67
		vCol = 64
	CASE vColNum == 68
		vCol = 63
	CASE vColNum == 69
		vCol = 62
	CASE vColNum == 70
		vCol = 61
	CASE vColNum == 71
		vCol = 60
	CASE vColNum == 72
		vCol = 59
	CASE vColNum == 73
		vCol = 58
	CASE vColNum == 74
		vCol = 57
	CASE vColNum == 75
		vCol = 56
	CASE vColNum == 76
		vCol = 55
	CASE vColNum == 77
		vCol = 54
	CASE vColNum == 78
		vCol = 53
	CASE vColNum == 79
		vCol = 52
	CASE vColNum == 80
		vCol = 51
	CASE vColNum == 81
		vCol = 50
	CASE vColNum == 82
		vCol = 49
	CASE vColNum == 83
		vCol = 48
	CASE vColNum == 84
		vCol = 47
	CASE vColNum == 85
		vCol = 46
	CASE vColNum == 86
		vCol = 45
	CASE vColNum == 87
		vCol = 44
	CASE vColNum == 88
		vCol = 43
	CASE vColNum == 89
		vCol = 42
	CASE vColNum == 90
		vCol = 41
	CASE vColNum == 91
		vCol = 40
	CASE vColNum == 92
		vCol = 39
	CASE vColNum == 93
		vCol = 38
	CASE vColNum == 94
		vCol = 37
	CASE vColNum == 95
		vCol = 36
	CASE vColNum == 96
		vCol = 35
	CASE vColNum == 97
		vCol = 34
	CASE vColNum == 98
		vCol = 33
	CASE vColNum == 99
		vCol = 32
ENDCASE

vRight = 0
vLeft = 0
vNum = 0
vColNum = 0
vColStr = ""

RETURN(vCol)

*============================================================================

*============================================================================

*-------------------------------------------------------------------*
* Funcao CLINCMD						    *
*[Seleciona aleatoriamente uma Linha (1-24) para exibicao da comida *
*para a cobra]							    *
*-------------------------------------------------------------------*

FUNCTION CLINCMD(vTempo)

*Definicao das variaveis LOCAIS
vRight = 0
vLeft = 0
vNum = 0
vLinNum = 0
vlin = 0
vLinStr = ""

*Variavel que indica a parte dos segundos (direita)
vRight = VAL(RIGHT(vTempo,2))
*Variavel que indica a parte das horas (esquerda)
vLeft = VAL(LEFT(vTempo,2))
*Variavel que armazenara a linha final

*Variavel que realiza o calculo da aleatoriedade
vNum = (vRight * vLeft) + (vLeft * 4) + (vLeft + vRight) + (vRight * 3)

*Selecionando o valor de dois digitos para a linha
IF VAL(LEFT(vTempo,1)) < 5
	vLinStr = RIGHT(vTempo,1) + RIGHT(STR(vNum),1)
ELSE
	vLinStr = RIGHT(STR(vNum),1) + RIGHT(vTempo,1)
ENDIF
vLinNum = VAL(vLinStr)

*Compreendendo o valor de "vLin" entre 2 e 23

DO CASE
	CASE vLinNum == 0
		vLin = 2
	CASE vLinNum == 1
		vLin = 3
	CASE vLinNum == 2
		vLin = 4
	CASE vLinNum == 3
		vLin = 5
	CASE vLinNum == 4
		vLin = 6
	CASE vLinNum == 5
		vLin = 7
	CASE vLinNum == 6
		vLin = 8
	CASE vLinNum == 7
		vLin = 9
	CASE vLinNum == 8
		vLin = 10
	CASE vLinNum == 9
		vLin = 11
	CASE vLinNum == 10
		vLin = 12
	CASE vLinNum == 11
		vLin = 13
	CASE vLinNum == 12
		vLin = 14
	CASE vLinNum == 13
		vLin = 15
	CASE vLinNum == 14
		vLin = 16
	CASE vLinNum == 15
		vLin = 17
	CASE vLinNum == 16
		vLin = 18
	CASE vLinNum == 17
		vLin = 19
	CASE vLinNum == 18
		vLin = 20
	CASE vLinNum == 19
		vLin = 21
	CASE vLinNum == 20
		vLin = 22
	CASE vLinNum == 21
		vLin = 23
	CASE vLinNum == 22
		vLin = 21
	CASE vLinNum == 23
		vLin = 20
	CASE vLinNum == 24
		vLin = 19
	CASE vLinNum == 25
		vLin = 18
	CASE vLinNum == 26
		vLin = 17
	CASE vLinNum == 27
		vLin = 16
	CASE vLinNum == 28
		vLin = 15
	CASE vLinNum == 29
		vLin = 14
	CASE vLinNum == 30
		vLin = 13
	CASE vLinNum == 31
		vLin = 12
	CASE vLinNum == 32
		vLin = 11
	CASE vLinNum == 33
		vLin = 10
	CASE vLinNum == 34
		vLin = 9
	CASE vLinNum == 35
		vLin = 8
	CASE vLinNum == 36
		vLin = 7
	CASE vLinNum == 37
		vLin = 6
	CASE vLinNum == 38
		vLin = 5
	CASE vLinNum == 39
		vLin = 4
	CASE vLinNum == 40
		vLin = 3
	CASE vLinNum == 41
		vLin = 2
	CASE vLinNum == 42
		vLin = 3
	CASE vLinNum == 43
		vLin = 4
	CASE vLinNum == 44
		vLin = 5
	CASE vLinNum == 45
		vLin = 6
	CASE vLinNum == 46
		vLin = 7
	CASE vLinNum == 47
		vLin = 8
	CASE vLinNum == 48
		vLin = 9
	CASE vLinNum == 49
		vLin = 10
	CASE vLinNum == 50
		vLin = 11
	CASE vLinNum == 51
		vLin = 12
	CASE vLinNum == 52
		vLin = 13
	CASE vLinNum == 53
		vLin = 14
	CASE vLinNum == 54
		vLin = 15
	CASE vLinNum == 55
		vLin = 16
	CASE vLinNum == 56
		vLin = 17
	CASE vLinNum == 57
		vLin = 18
	CASE vLinNum == 58
		vLin = 19
	CASE vLinNum == 59
		vLin = 20
	CASE vLinNum == 60
		vLin = 21
	CASE vLinNum == 61
		vLin = 22
	CASE vLinNum == 62
		vLin = 23
	CASE vLinNum == 63
		vLin = 21
	CASE vLinNum == 64
		vLin = 20
	CASE vLinNum == 65
		vLin = 19
	CASE vLinNum == 66
		vLin = 18
	CASE vLinNum == 67
		vLin = 17
	CASE vLinNum == 68
		vLin = 16
	CASE vLinNum == 69
		vLin = 15
	CASE vLinNum == 70
		vLin = 14
	CASE vLinNum == 71
		vLin = 13
	CASE vLinNum == 72
		vLin = 12
	CASE vLinNum == 73
		vLin = 11
	CASE vLinNum == 74
		vLin = 10
	CASE vLinNum == 75
		vLin = 9
	CASE vLinNum == 76
		vLin = 8
	CASE vLinNum == 77
		vLin = 7
	CASE vLinNum == 78
		vLin = 6
	CASE vLinNum == 79
		vLin = 5
	CASE vLinNum == 80
		vLin = 4
	CASE vLinNum == 81
		vLin = 3
	CASE vLinNum == 82
		vLin = 2
	CASE vLinNum == 83
		vLin = 3
	CASE vLinNum == 84
		vLin = 4
	CASE vLinNum == 85
		vLin = 5
	CASE vLinNum == 86
		vLin = 6
	CASE vLinNum == 87
		vLin = 7
	CASE vLinNum == 88
		vLin = 8
	CASE vLinNum == 89
		vLin = 9
	CASE vLinNum == 90
		vLin = 10
	CASE vLinNum == 91
		vLin = 11
	CASE vLinNum == 92
		vLin = 12
	CASE vLinNum == 93
		vLin = 13
	CASE vLinNum == 94
		vLin = 14
	CASE vLinNum == 95
		vLin = 15
	CASE vLinNum == 96
		vLin = 16
	CASE vLinNum == 97
		vLin = 17
	CASE vLinNum == 98
		vLin = 18
	CASE vLinNum == 99
		vLin = 19
ENDCASE

vRight = 0
vLeft = 0
vNum = 0
vLinNum = 0
vLinStr = ""

RETURN(vLin)

*============================================================================

*============================================================================

*--------------------------------------------------------------------*
* Funcao CCOLCMD						     *
*[Seleciona aleatoriamente uma Coluna (1-24) para exibicao da comida *
*para a cobra]							     *
*--------------------------------------------------------------------*

FUNCTION CCOLCMD(vTempo)

*Definicao das variaveis LOCAIS
vRight = 0
vLeft = 0
vNum = 0
vColNum = 0
vCol = 0
vColStr = SPACE(2)

*Variavel que indica a parte dos segundos (direita)
vRight = VAL(RIGHT(vTempo,2))
*Variavel que indica a parte das horas (esquerda)
vLeft = VAL(LEFT(vTempo,2))
*Variavel que armazenara a linha final

*Variavel que realiza o calculo da aleatoriedade
vNum = (vRight * vLeft) + (vLeft * 4) + (vLeft + vRight) + (vRight * 3)

*Selecionando o valor de dois digitos para a linha
IF VAL(LEFT(vTempo,1)) < 5
	vColStr = RIGHT(vTempo,1) + RIGHT(STR(vNum),1)
ELSE
	vColStr = RIGHT(STR(vNum),1) + RIGHT(vTempo,1)
ENDIF
vColNum = VAL(vColStr)

*Compreendendo o valor de "vColNum" entre 2 e 77

DO CASE
	CASE vColNum == 0
		vCol = 2
	CASE vColNum == 1
		vCol = 3
	CASE vColNum == 2
		vCol = 4
	CASE vColNum == 3
		vCol = 5
	CASE vColNum == 4
		vCol = 6
	CASE vColNum == 5
		vCol = 7
	CASE vColNum == 6
		vCol = 8
	CASE vColNum == 7
		vCol = 9
	CASE vColNum == 8
		vCol = 10
	CASE vColNum == 9
		vCol = 11
	CASE vColNum == 10
		vCol = 12
	CASE vColNum == 11
		vCol = 13
	CASE vColNum == 12
		vCol = 14
	CASE vColNum == 13
		vCol = 15
	CASE vColNum == 14
		vCol = 16
	CASE vColNum == 15
		vCol = 17
	CASE vColNum == 16
		vCol = 18
	CASE vColNum == 17
		vCol = 19
	CASE vColNum == 18
		vCol = 20
	CASE vColNum == 19
		vCol = 21
	CASE vColNum == 20
		vCol = 22
	CASE vColNum == 21
		vCol = 23
	CASE vColNum == 22
		vCol = 24
	CASE vColNum == 23
		vCol = 25
	CASE vColNum == 24
		vCol = 26
	CASE vColNum == 25
		vCol = 27
	CASE vColNum == 26
		vCol = 28
	CASE vColNum == 27
		vCol = 29
	CASE vColNum == 28
		vCol = 30
	CASE vColNum == 29
		vCol = 31
	CASE vColNum == 30
		vCol = 32
	CASE vColNum == 31
		vCol = 33
	CASE vColNum == 32
		vCol = 34
	CASE vColNum == 33
		vCol = 35
	CASE vColNum == 34
		vCol = 36
	CASE vColNum == 35
		vCol = 37
	CASE vColNum == 36
		vCol = 38
	CASE vColNum == 37
		vCol = 39
	CASE vColNum == 38
		vCol = 40
	CASE vColNum == 39
		vCol = 41
	CASE vColNum == 40
		vCol = 42
	CASE vColNum == 41
		vCol = 43
	CASE vColNum == 42
		vCol = 44
	CASE vColNum == 43
		vCol = 45
	CASE vColNum == 44
		vCol = 46
	CASE vColNum == 45
		vCol = 47
	CASE vColNum == 46
		vCol = 48
	CASE vColNum == 47
		vCol = 49
	CASE vColNum == 48
		vCol = 50
	CASE vColNum == 49
		vCol = 51
	CASE vColNum == 50
		vCol = 52
	CASE vColNum == 51
		vCol = 53
	CASE vColNum == 52
		vCol = 54
	CASE vColNum == 53
		vCol = 55
	CASE vColNum == 54
		vCol = 56
	CASE vColNum == 55
		vCol = 57
	CASE vColNum == 56
		vCol = 58
	CASE vColNum == 57
		vCol = 59
	CASE vColNum == 58
		vCol = 60
	CASE vColNum == 59
		vCol = 61
	CASE vColNum == 60
		vCol = 62
	CASE vColNum == 61
		vCol = 63
	CASE vColNum == 62
		vCol = 64
	CASE vColNum == 63
		vCol = 65
	CASE vColNum == 64
		vCol = 66
	CASE vColNum == 65
		vCol = 67
	CASE vColNum == 66
		vCol = 68
	CASE vColNum == 67
		vCol = 69
	CASE vColNum == 68
		vCol = 70
	CASE vColNum == 69
		vCol = 71
	CASE vColNum == 70
		vCol = 72
	CASE vColNum == 71
		vCol = 73
	CASE vColNum == 72
		vCol = 74
	CASE vColNum == 73
		vCol = 75
	CASE vColNum == 74
		vCol = 76
	CASE vColNum == 75
		vCol = 77
	CASE vColNum == 76
		vCol = 76
	CASE vColNum == 77
		vCol = 75
	CASE vColNum == 78
		vCol = 74
	CASE vColNum == 79
		vCol = 73
	CASE vColNum == 80
		vCol = 72
	CASE vColNum == 81
		vCol = 71
	CASE vColNum == 82
		vCol = 70
	CASE vColNum == 83
		vCol = 69
	CASE vColNum == 84
		vCol = 68
	CASE vColNum == 85
		vCol = 67
	CASE vColNum == 86
		vCol = 66
	CASE vColNum == 87
		vCol = 65
	CASE vColNum == 88
		vCol = 64
	CASE vColNum == 89
		vCol = 63
	CASE vColNum == 90
		vCol = 62
	CASE vColNum == 91
		vCol = 61
	CASE vColNum == 92
		vCol = 60
	CASE vColNum == 93
		vCol = 59
	CASE vColNum == 94
		vCol = 58
	CASE vColNum == 95
		vCol = 57
	CASE vColNum == 96
		vCol = 56
	CASE vColNum == 97
		vCol = 55
	CASE vColNum == 98
		vCol = 54
	CASE vColNum == 99
		vCol = 53
ENDCASE

vRight = 0
vLeft = 0
vNum = 0
vColNum = 0
vColStr = ""

RETURN(vCol)

*============================================================================

*============================================================================

*-------------------------------------*
* Funcao POSCMDC                      *
*[Define a posicao da Comida (Coluna)]*
*-------------------------------------*

FUNCTION POSCMDC(vColTmp)

*Tal posicao e definida baseando-se na atual posicao da Cobra. Isso impede
*de a comida aparecer por sobre as posicoes pertencentes a Cobra.

*NAO HA NECESSIDADE de verificar-se se se a cobra pode colidir-se com a
*comida pelas linhas; a funcao POSCMDC ja indica qual coluna esta vaga.
*Sendo assim, pode-se concluir que se ha uma coluna vaga, e porque nesta
*coluna nao ha nenhuma linha utilizada.

*Inicia a verificacao de todas as posicoes de COLUNA da Cobra

vTam = 1
vTamTmp = 0

DO WHILE vTam != (vTamCobr + 1)

*Verifica se a Coluna de aparicao da Comida e igual a alguma das 
*Colunas em que a Cobra se encontra 
IF PosCobrX[vTam] == vColTmp
	
	*Se a primeira das Colunas indicar igualdade, verifica-se
	*Se a proxima coluna e [=78]
	IF (vColTmp + 1) == 78

		*Se [=78], verifica-se as outras colunas com o DO
		*para assim saber-se se alguma delas e igual a 
		*[coluna atual - vMin]

		*(A variavel contadora temporaria passa a valer 2
		*por conta de que a primeira Coluna ja fora vista)
		vTamTmp = 2

		*Variavel de diminuicao da coluna, valendo 1
		vMin = 1
		
		DO WHILE vTamTmp != (vTamCobr + 1)

			IF PosCobrX[vTamTmp] != (vColTmp - vMin)
					
				*Se for diferente, verifica-se se esta 
				*Coluna [=1]
				IF (vColTmp - vMin) == 1
						
					*Se sim, prossegue-se com
					*a verificacao, so que desta vez
					*acrescenta-se [+1] a coluna atual
						
					*Variavel de aumento da 
					*coluna, valendo 1
					vMin = 1
					*Inicia-se o contador
					*na terceira posicao
					vTamTmp = 3

					DO WHILE vTamTmp != (vTamCobr + 1)

						IF PosCobrX[vTamTmp] != (vColTmp + vMin)

							*Se for diferente, esta sera 
							*Coluna onde a comida surgira
							vColTmp = (vColTmp - vMin)
							EXIT
						ENDIF

						*Se for igual, prossegue-se com o DO
							
						vMin++
						vTamTmp++
						LOOP

					ENDDO

					EXIT

				ELSE

					*Se for diferente, esta sera 
					*Coluna onde a comida surgira
					vColTmp = (vColTmp - vMin)
					EXIT

				ENDIF
			
			ENDIF

			*Se for igual, prossegue-se com a verificacao
				
			vMin++
			vTamTmp++
			LOOP
		ENDDO

	ELSE

	        *Se [!=78], verifica-se as outras colunas com o DO
		*para assim saber-se se alguma delas e igual a 
		*[coluna atual + vMin]
			
		*(A variavel contadora temporaria passa a valer 2
		*por conta de que a primeira Coluna ja fora vista)
		vTamTmp = 2			

		*Variavel de diminuicao da coluna, valendo 1
		vMin = 1			

		DO WHILE vTamTmp != (vTamCobr + 1)

			IF PosCobrX[vTamTmp] != (vColTmp + vMin)
					
				IF (vColTmp + vMin) == 78				

					*Se [=78], verifica-se as outras colunas com o DO
					*para assim saber-se se alguma delas e igual a 
					*[coluna atual - vMin]

					*(A variavel contadora temporaria passa a valer 2
					*por conta de que a primeira Coluna ja fora vista)
					vTamTmp = 2

					*Variavel de diminuicao da coluna, valendo 1
					vMin = 1
		
					DO WHILE vTamTmp != (vTamCobr + 1)

						IF PosCobrX[vTamTmp] != (vColTmp - vMin)
							
							*Se for diferente, esta sera 
							*Coluna onde a comida surgira
							vColTmp = (vColTmp - vMin)
							EXIT

						ENDIF

						*Se for igual, prossegue-se com a verificacao
					
						vMin++
						vTamTmp++
						LOOP

					ENDDO

					EXIT		
	
				ELSE

					*Se for diferente, esta sera a Coluna onde a 
					*comida surgira
					vColTmp = (vColTmp - vMin)
					EXIT

				ENDIF
			
			ENDIF
				
			*Se for igual, continua-se a verificacao
				
			vMin++
			vTamTmp++
			LOOP

		ENDDO 

	ENDIF

ENDIF

vTam++
LOOP 

ENDDO

*Se for diferente, esta sera a coluna onde a comida surgira

vTam = 0
vTamTmp = 0

RETURN(vColTmp)

*============================================================================

*============================================================================

*----------------------------------------------------------*
* Funcao CBRCRV                                            *
*[Verifica se o caractere atual da Cobra esta em uma curva]*
*----------------------------------------------------------* 

FUNCTION CBRCRV(vPosX,vPosY)

*Variavel contadora da busca por curvas
vMovCrv = QuantCrv
vDirec = 0

DO WHILE vMovCrv != 0

	IF vPosX == PosCurvX[vMovCrv] .AND. vPosY == PosCurvY[vMovCrv]

		vDirec = CurvDrct[vMovCrv]
		EXIT
	
	ENDIF

	vMovCrv--
	LOOP
 
ENDDO

*Retorna a direcao da Curva
RETURN(vDirec)

*============================================================================


*============================================================================

*-------------------------------------------------------*
* Funcao CPRCBR                                         *
*[Verifica se o caractere atual esta na mesma posicao de*
*algum caractere formador do corpo da Cobra]            *
*-------------------------------------------------------* 

FUNCTION CPRCBR()

*Variavel contadora da quantidade de caracteres do corpo da Cobra,
*inciando-se pelo fim do corpo
vMovPos = vTamCobr
vEncontr = .F.

DO WHILE vMovPos != 1

	IF PosCobrX[1] == PosCobrX[vMovPos] .AND. PosCobrY[1] == PosCobrY[vMovPos]

		vEncontr = .T.
		EXIT
	
	ENDIF

	vMovPos--
	LOOP
 
ENDDO

*Retorna ".T." se PosCobr = PosCobr e ".F." se PosCobr != PosCobr
RETURN(vEncontr)

*============================================================================

*============================================================================

*-----------------*
* Procedure SNAKE *
*[Motor do Jogo]  *
*-----------------* 

FUNCTION GAME()

*------------------------------*
* Snake Game Engine 0.1        *
* Por Andre Martins            *
* andrel_martins@yahoo.com.br  *
*------------------------------*

*Limpa a tela para iniciar o Jogo
CLEAR SCREEN
@1,1 TO 24,78 DOUBLE
@14,30 SAY "Iniciando Jogo..."
INKEY(1)
@14,22 CLEAR TO 14,53

*Cria a cobra em uma posicao aleatoria
vLinCobr = CLIN(TIME())
vColCobr = CCOL(TIME())
@vLinCobr,vColCobr SAY "******@"
vTamCobr = 7

*=======================================================================
*-----------------------------------------------*
* Funcao PosCobr                                *
*[Insere a posicao inicial da Cobra nas Vetores]*
*-----------------------------------------------*

*Variavel de Posicao PosCobrX[Coluna]
*O numero entre chaves define o maximo de tamanho da Cobra
PUBLIC PosCobrX[65]

*Variavel de Posicao PosCobrY[Linha]
*O numero entre chaves define o maximo de tamanho da Cobra
PUBLIC PosCobrY[65]

*Esta variavel indica a direcao (segundo a tabela ASCII) seguida por cada 
*caractere formado atraves de PosCobrX e PosCobrY.
PUBLIC CharDrct[65]

*Variavel que define o contador do comando DO
vTam = 1

*Comando DO, executando enquanto vTam é DIFERENTE do tamanho da Cobra
DO WHILE vTam != (vTamCobr + 1)

	IF vTam == 1
	
		*Se [Contador (vTam) = 1], siginifica a primeira vez no 
		*DO. Assim, as primeiras posicoes das Vetores PosCobr X e Y 
		*serao iguais a coluna e a linha, respectivamente, onde esta 
        	*posicionado a Cabeca da Cobra
	
		PosCobrX[vTam] = vColCobr +  (vTamCobr - 1)
		PosCobrY[vTam] = vLinCobr
		CharDrct[vTam] = 4

	ELSE
	
		*Se [Contador (vTam) > 1], significa que DO ja fora 
		*executado. Assim, continua-se, inserindo as outras 
		*posicoes da Cobra na Vetor, que são o seu Corpo
	
		PosCobrX[vTam] = (PosCobrX[(vTam-1)] - 1)
		PosCobrY[vTam] = vLinCobr
		CharDrct[vTam] = 4
	
	ENDIF 

	vTam++
	Loop

ENDDO

vTam = 1

*=======================================================================

*Cria a comida em posicao aleatoria, diferente da posicao do corpo da cobra

*Variaveis captam uma linha e uma coluna aleatorias
vColCmd = POSCMDC(CCOLCMD(TIME()))
vLinCmd = CLINCMD(TIME())

@vLinCmd,vColCmd SAY "#"



*---Motor Principal (LOOP) -----------------------
*O FIM do jogo pode ocorrer caso haja:
* a) Colisao da Cobra com alguma parte do Cenario;
* b) Jogador alcancar valor [ > 900.000 ] pontos.

SET CURSOR OFF

*Faz com que a variavel que indica o tipo de termino de jogo valha FALSE
*indicando, assim, termino de jogo por morte
vEndGame = .F.

*Variavel que indica FIM do Jogo.
vFim = .F.

*Variaveis que definem, respectivamente:
* - a posicao da curva na Coluna;
* - a posicao da curva na linha;
* - a direcao que possue a curva (5-Cima, 24-Baixo, 19-Esquerda, 4-Direita)
*[os numeros de indicacao da curva sao os valores das teclas na Tabela ASCII]
* - a quantidade de curvas espalhadas pelo corpo da Cobra.
PUBLIC PosCurvX[64]
PUBLIC PosCurvY[64]
PUBLIC CurvDrct[64]
QuantCrv = 0

*Variavel contadora para exibicao dos pontos na tela
vTemp = 0

DO WHILE vFim != .T.

	*Aguarda o pressionamento de alguma Tecla, movimentando a Cobra

	INKEY(vSpeed)	

	*Contador que verifica a exibicao dos pontos na tela
	IF vTemp != 0

		vTemp++
		IF vTemp == 4

			@1,1 TO 24,78 DOUBLE
			vTemp = 0

		ENDIF

	ENDIF

	*------
	*Verificacao da Tecla pressionada
	*------	


	*Direcao para CIMA
	IF LASTKEY() = 5

		IF CharDrct[1] != 24 .AND. CharDrct[1] != 5

			QuantCrv++
			PosCurvX[QuantCrv] = PosCobrX[1]
			PosCurvY[QuantCrv] = PosCobrY[1]
			CurvDrct[QuantCrv] = 5 

		ENDIF

	ENDIF

	*Direcao para BAIXO
	IF LASTKEY() = 24
	
		IF CharDrct[1] != 5 .AND. CharDrct[1] != 24

			QuantCrv++
			PosCurvX[QuantCrv] = PosCobrX[1]
			PosCurvY[QuantCrv] = PosCobrY[1]
			CurvDrct[QuantCrv] = 24 

		ENDIF

	ENDIF

	*Direcao para ESQUERDA
	IF LASTKEY() = 19
	
		IF CharDrct[1] != 4 .AND. CharDrct[1] != 19

			QuantCrv++
			PosCurvX[QuantCrv] = PosCobrX[1]
			PosCurvY[QuantCrv] = PosCobrY[1]
			CurvDrct[QuantCrv] = 19

		ENDIF

	ENDIF

	*Direcao para DIREITA
	IF LASTKEY() = 4

		IF CharDrct[1] != 19 .AND. CharDrct[1] != 4

			QuantCrv++
			PosCurvX[QuantCrv] = PosCobrX[1]
			PosCurvY[QuantCrv] = PosCobrY[1]
			CurvDrct[QuantCrv] = 4 

		ENDIF
	
	ENDIF

	*Tecla ESC (Finaliza o Jogo)
	IF LASTKEY() = 27

		vFim = .T.

	ENDIF


	*-----
	*Para que ocorra a movimentacao, primeiramente limpa-se a 
	*area atual do caractere e refaz-se o caractere um espaco 
	*a frente segundo a sua trajetoria
	*-----


	*Limpa os caracteres formadores do Corpo da Cobra
	vTam = 1
	DO WHILE vTam != (vTamCobr + 1)

		@PosCobrY[vTam],PosCobrX[vTam] SAY " "

		vTam++

		LOOP

	ENDDO	

	*A variavel contadora incia-se valendo "1", para assim definir as 
	*posicoes corretas nos vetores.
	vMovCbr = 1

	*variavel que indica temporariamente a quantidade de curvas.
	vTmpCrv = QuantCrv

	*Variavel que define a direcao da cabeca da Cobra.
	vCarac = SPACE(1)

	*Variavel que indica a quantidade de curvas realizadas, para que assim
	*se possa encontrar a curva mais próxima durante as movimentacoes
	vCurv = 0

	DO WHILE vMovCbr != (vTamCobr + 1)

		*O IF abaixo veririfica se a Cobra colidiu-se com seu proprio
		*corpo, permitindo que o jogo continue apenas se nao houver 
		*colisao.
		
		IF CPRCBR() == .F.

			*Primeiramente verifica-se se a posicao atual e igual
			*a posicao de alguma das curvas.

			vConfCrv = CBRCRV(PosCobrX[vMovCbr],PosCobrY[vMovCbr])

			IF vConfCrv != 0

				*Se existir uma curva nesta posicao, muda a direcao 
				*deste caractere para a direcao da curva

				*Direcao para Cima
				IF vConfCrv == 5
							
					PosCobrY[vMovCbr] = PosCobrY[vMovCbr] - 1
					CharDrct[vMovCbr] = 5

				ENDIF

				*Direcao para Baixo
				IF vConfCrv == 24
						
					PosCobrY[vMovCbr] = PosCobrY[vMovCbr] + 1
					CharDrct[vMovCbr] = 24

				ENDIF

				*Direcao para Esquerda
				IF vConfCrv == 19
	
					PosCobrX[vMovCbr] = PosCobrX[vMovCbr] - 1
					CharDrct[vMovCbr] = 19

				ENDIF
	
				*Direcao para Direita
				IF vConfCrv == 4

					PosCobrX[vMovCbr] = PosCobrX[vMovCbr] + 1
					CharDrct[vMovCbr] = 4

				ENDIF			
	
				*Se for o ultimo caractere, exclue esta curva do Vetor
				IF vMovCbr == vTamCobr
			
					*A ultima curva e igual a primeira posicao
					*do Vetor de curvas (pois fora a primeira
					*curva a ser criada e, da mesma forma,
					*sera a primeira curva a ser excluida).
					PosCurvX[1] = 0
					PosCurvY[1] = 0
					CurvDrct[1] = 0
					QuantCrv--

				ENDIF

			ELSE

				*Se nao houver uma curva, move o caractere segundo
				*sua direcao

				*Direcao para Cima
				IF CharDrct[vMovCbr] == 5
						
					PosCobrY[vMovCbr] = PosCobrY[vMovCbr] - 1
				
				ENDIF

				*Direcao para Baixo
				IF CharDrct[vMovCbr] == 24
						
					PosCobrY[vMovCbr] = PosCobrY[vMovCbr] + 1

				ENDIF

				*Direcao para Esquerda
				IF CharDrct[vMovCbr] == 19
			
					PosCobrX[vMovCbr] = PosCobrX[vMovCbr] - 1

				ENDIF

				*Direcao para Direita
				IF CharDrct[vMovCbr] == 4

					PosCobrX[vMovCbr] = PosCobrX[vMovCbr] + 1

				ENDIF			
	
			ENDIF

		ELSE
			
			*Isso indica que a Cobra colidiu-se com seu proprio
			*corpo. FIM DE JOGO

			CLEAR SCREEN
			vFim = .T.

		ENDIF

		vMovCbr++
		LOOP
		
	ENDDO			

	*Saindo do DO, deve-se verificar se alguma curva foi excluida 
	*para assim reordenar as posicoes dos vetores de curva

	IF vTmpCrv != QuantCrv

		*Usa-se a mesma variavel contadora da quantidade de caracteres
		vMovCbr = 1

		DO WHILE vMovCbr != (vTmpCrv + 1)

			PosCurvX[vMovCbr] = PosCurvX[vMovCbr + 1]	
			PosCurvY[vMovCbr] = PosCurvY[vMovCbr + 1]		
			CurvDrct[vMovCbr] = CurvDrct[vMovCbr + 1] 
				
			vMovCbr++
			LOOP

		ENDDO

	ENDIF

	*Desenha os novos caracteres formadores do Corpo da Cobra
	vTam = 1
	DO WHILE vTam != (vTamCobr + 1)

		IF vTam == 1

			vCarac = "@"

		ELSE

			vCarac = "*"

		ENDIF

		@PosCobrY[vTam],PosCobrX[vTam] SAY vCarac

		vTam++

		LOOP

	ENDDO	


	*------
	*Verificacao de encontro com a comida
	*------	


	*Se a posicao da cabeca da Cobra (primeira posicao do vetor) for igual
	*a posicao da comida, acrescenta-se pontos a variavel para esse fim
	*e acrescenta-se um caractere ao corpo da Cobra e aumenta-se a sua 
	*velocidade
	IF PosCobrX[1] == vColCmd .AND. PosCobrY[1] == vLinCmd
	
		*Para criar-se os novos caracteres, verifica-se primeiramente
		*a direcao do ultimo caractere formador do corpo da Cobra,
		*e atraves desta direcao insere-se o(s) novo(s) caractere(s)
		*na ultima posicao, seguindo a mesma direcao que este ultimo
		*caractere estiver a seguir.

		*Direcao para Cima
		IF CharDrct[vTamCobr] == 5
							
			vTamCobr++
			PosCobrY[vTamCobr] = PosCobrY[vTamCobr - 1] + 1
			PosCobrX[vTamCobr] = PosCobrX[vTamCobr - 1]
			CharDrct[vTamCobr] = CharDrct[vTamCobr - 1]

		ENDIF

		*Direcao para Baixo
		IF CharDrct[vTamCobr]  == 24
						
			vTamCobr++
			PosCobrY[vTamCobr] = PosCobrY[vTamCobr - 1] - 1
			PosCobrX[vTamCobr] = PosCobrX[vTamCobr - 1]
			CharDrct[vTamCobr] = CharDrct[vTamCobr - 1]

		ENDIF

		*Direcao para Esquerda
		IF CharDrct[vTamCobr]  == 19

			vTamCobr++
			PosCobrY[vTamCobr] = PosCobrY[vTamCobr - 1]
			PosCobrX[vTamCobr] = PosCobrX[vTamCobr - 1] + 1
			CharDrct[vTamCobr] = CharDrct[vTamCobr - 1]

		ENDIF
	
		*Direcao para Direita
		IF CharDrct[vTamCobr]  == 4

			vTamCobr++
			PosCobrY[vTamCobr] = PosCobrY[vTamCobr - 1]
			PosCobrX[vTamCobr] = PosCobrX[vTamCobr - 1] - 1
			CharDrct[vTamCobr] = CharDrct[vTamCobr - 1]

		ENDIF			

		@PosCobrY[vTamCobr],PosCobrX[vTamCobr] SAY "*"

		vPontos = vPontos + vValPont

		vValPont = vValPont + 100

		*Exibe os pontos na Tela
		@1,1 TO 24,78 DOUBLE
		SET COLOR TO G++
		@1,66 SAY STR(vPontos) + " "
		SET COLOR TO W

		*A variavel que indica a exibicao temporaria dos pontos na tela
		*passa a valer 1, indicando o inicio do contador
		vTemp = 1

		IF vPontos > 900000 .OR. vTamCobr == 65
			
			*Se a quantidade de pontos for maior que 900.000,
			*ou o Tamanho da Cobra = 65,  Jogo terminou
			vFim = .T.
			vEndGame = .T.

		ELSE

			*Gera uma nova comida em posicao aleatoria

			vColCmd = POSCMDC(CCOLCMD(TIME()))
			vLinCmd = CLINCMD(TIME())

			@vLinCmd,vColCmd SAY "#"

			IF vSpeed != .01 

				vSpeed = vSpeed - .01

			ENDIF				

		ENDIF
		
	
	ENDIF

	*Verifica se a Cobra colidiu com o Cenario
	IF PosCobrX[1] == 1 .OR. PosCobrX[1] == 78

		vFim = .T.
	
	ENDIF
		
	IF PosCobrY[1] == 1 .OR. PosCobrY[1] == 24
	
		vFim = .T.	

	ENDIF

	LOOP

ENDDO

*---FIM DE JOGO-----------------------------------

RETURN

*============================================================================


*============================================================================

*---------------------------------------*
* FUNCAO INICIA                         *
*[Mostra o Menu Principal com as opcoes]*
*---------------------------------------* 

FUNCTION INICIA()
*Inicia o Jogo mostrando a Tela principal

CLEAR SCREEN
@1,1 TO 24,78 DOUBLE
@16,28,22,51 BOX vBorda
@15,27,23,52 BOX vBorda

SET WRAP ON
@18,33 PROMPT " INICIAR JOGO " MESSAGE ""
@19,33 PROMPT "    OPCOES    " MESSAGE ""
@20,33 PROMPT "     SAIR     " MESSAGE ""
MENU TO vOP

CLEAR SCREEN

RETURN

*============================================================================


*============================================================================

*------------------------------------*
* FUNCAO OPCOES                      *
*[Exibe o Menu com as opcoes do Jogo]*
*------------------------------------* 

FUNCTION OPCOES()
*Cria a tela de Opcoes

CLEAR SCREEN
@1,1 TO 24,78 DOUBLE

*Tela Temporaria de selecao da velocidade do Jogo
@9,22,18,53 BOX vBorda
SET WRAP ON 
SET MESSAGE TO 23 CENTER
@10,26 SAY "Selecione a Velocidade"   
@12,27 PROMPT "    **@  **@            " MESSAGE "     Velocidade 1     "
@13,27 PROMPT "    **@    **@          " MESSAGE "     Velocidade 2     "
@14,27 PROMPT "    **@      **@        " MESSAGE "     Velocidade 3     "
@15,27 PROMPT "    **@        **@      " MESSAGE "     Velocidade 4     "
@16,27 PROMPT "    **@          **@    " MESSAGE "     Velocidade 5     "
MENU TO vSpeed

*Condicao que define a velocidade
DO CASE
	CASE vSpeed == 1
		vValPont = 14500
		vSpeed = .63
	CASE vSpeed == 2
		vValPont = 18500
		vSpeed = .53
	CASE vSpeed == 3
		vValPont = 22500
		vSpeed = .43
	CASE vSpeed == 4
		vValPont = 26500
		vSpeed = .23
	CASE vSpeed == 5
		vValPont = 30500
		vSpeed = .13
END CASE

CLEAR SCREEN

RETURN

*============================================================================