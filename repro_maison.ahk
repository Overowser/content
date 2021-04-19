#include entrer_enclos.ahk
#include select_filtre.ahk
#include select_filtre2.ahk
#include etable_to_inv.ahk
#include aller_maison.ahk
#include aller_enclos.ahk
#include sortir_enclos.ahk

repro_maison()
{
	entrer_enclos()
	
	a:=select_filtre("etable","repro","r")
	
	if (a!=20)
	{
		b:=select_filtre2("sans_nom","m")
		
		if (b!=20)
		{
			
			;etable to inventaire sans le test au début car double filtre
			click,742,114
			pixelsearch,,,771,142,771,142,0x2F2F2F,5
			T=0
			while (errorlevel!=0)
			{
				T:=T+50
				pixelsearch,,,771,142,771,142,0x2F2F2F,5
				sleep, 50
				if (T>1000)
				{
					T=0
					click,742,114
				}
			}
			click,871,157
			sleep, 200
			
			sortir_enclos()
			
			aller_maison()
			
			click, 1201,456 ;coffre
			sleep, 200
			pixelsearch,,, 1273,471, 1273,471,0x36393D,5
			if (errorlevel=0)
			{
				click, 1241,500
				sleep, 100
			}
			pixelsearch,,,560,824,560,824,0x343638,5
			T=0
			while (errorlevel!=0)
			{
				sleep, 100
				T:=T+100
				if(T>5000)
				{
					T=0
					click, 1201,456 ;coffre
					sleep, 200
					pixelsearch,,, 1273,471, 1273,471,0x36393D,5
					if (errorlevel=0)
					{
						click, 1241,500
						sleep, 100
					}
				}
				pixelsearch,,,560,824,560,824,0x343638,5
			}
			
			;onglet inventaire
			pixelsearch,,, 1424,142,1424,142,0x404246
			while (errorlevel!=0)
			{
				click, 1424,142
				pixelsearch,,, 1424,142,1424,142,0x404246
				sleep, 100
			}
			
			click, 450,850 ; ---------------------------------------- wrong barre
			
			send, dragodinde
			
			;inventaire au coffre: transfert des objets visibles
			click, 1286,133
			
			pixelsearch,,, 1303,150,1303,150,0x09090B
			t=0
			while (errorlevel!=0)
			{
				sleep, 10
				t+=10
				pixelsearch,,, 1303,150,1303,150,0x09090B
				if (t>=1000)
				{
					click, 1286,133
					t=0
				}
			}
			click, 1383,171
			sleep, 200
			
			aller_enclos()
		}
	}
	return
}
