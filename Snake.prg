*=================================================
*  Snake Versao 0.1                             =
*Por Andre Martins (andrel_martins@yahoo.com.br) =
*=================================================

SET PROCEDURE TO ProcCobr

	*DEFININDO AS VARIAVEIS

	*Variavel para borda
	PUBLIC vBorda

	vBorda=chr(201)+chr(205)+chr(187)+chr(186)+;
	chr(188)+chr(205)+chr(200)+chr(186)+""

	*Variavel que define o valor da pontuacao
	PUBLIC vValPont
	vValPont = 14500

	*Variavel que define a velocidade do Jogo
	PUBLIC vSpeed	
	vSpeed = .63

	*Variavel que armazena os pontos
	PUBLIC vPontos

	*Variavel que indica em que linha o rabo da cobra esta
	PUBLIC vLinCobr

	*Variavel que indica em que linha a comida esta
	PUBLIC vLinCmd

	*Variavel que indica em que coluna o rabo da cobra esta
	PUBLIC vColCobr

	*Variavel que indica em que coluna o comida esta
	PUBLIC vColCmd

	*Variavel que indica o tamanho da cobra
	PUBLIC vTamCobr

	*Variavel que indica se o jogador terminou o jogo por merecimento ou morte
	PUBLIC vEndGame

	*Variavel indicadora de Opcoes do Menu Principal
	PUBLIC vOP

DO WHILE .T.

	INICIA()

	DO CASE

		CASE vOP == 1

			vEndGame = .F.

			*Inicializa SNAKE GAME ENGINE 0.1
			vPontos = 0
			GAME()
	
			*Nova Tela para indicar fim de Jogo e a pontuacao

			INKEY(0.35)
	
			CLEAR SCREEN

			IF vEndGame == .T.

				@12,34 SAY "SALVOU O JOGO!"

			ELSE

				@12,34 SAY "GAME OVER"

				INKEY(3)

				@12,34 CLEAR TO 12,42
				@12,32 SAY "Sua Pontuacao:"
	
				IF vPontos == 0

					@13,39 SAY "0"

				ELSE
	
					vCalc = (78 - LEN(STR(vPontos))) / 2
					@13,vCalc SAY vPontos

				ENDIF

				INKEY(4)

			ENDIF

			vSpeed = .63
			vValPont = 14500

		CASE vOP == 2
		
			*Abre a Tela de Opcoes
			OPCOES()

		CASE vOP == 3

			*Finaliza o Jogo
			EXIT

	ENDCASE

	LOOP

ENDDO

CLEAR SCREEN

QUIT