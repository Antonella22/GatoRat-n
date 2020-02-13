;********************************************************
;Descripción: Juego del gato y ratón
;
;
;
;Autor: Antonella Burbano
;Versión: 1.0
;Fecha: 12/02/2020
;********************************************************

	    list p=16F887
	    #include P16F887.inc
	    org 0x00
	    goto inicio
	    org 0x05
inicio
	    bcf STATUS,RP1         ;0 a RP1 del registro STATUS
	    bsf STATUS,RP0         ;1 a RP0 ingresar Banco 1 
	    clrf TRISB		   ;8 leds para el movimiento del gato y el ratón
	    movlw b'00000011'	   ;RD0, RD1  = Entrada para los pulsadores del movimiento del gato
	    movwf TRISD		   ;RD2 salida para el led que indica que el ratón fue atrapado
	    bsf STATUS,RP1	   ;Ingreso al banco 3
	    clrf ANSEL
	    clrf ANSELH		   ;Deshabilita canales analógico
	    bcf STATUS,RP0         ;RP0 = 0
	    bcf STATUS,RP1	   ;RP0 = 0, devuelta al banco 0
bucle
	    


