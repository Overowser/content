#include objet.ahk
#include select_filtre.ahk
#include sortir_enclos.ahk
#include entrer_enclos.ahk
#include inv_to_etable.ahk
#include inv_to_enclos.ahk
#include enclos_to_inv.ahk
#include clear_filters_etable.ahk
#include clear_filter_enclos.ahk
#include enclos_to_etable.ahk
#include etable_to_enclos.ahk


Auto(byref filtre,byref lettre, byref objet)
{
	
	sortir_enclos()
	
	objet(objet)
	
	entrer_enclos()
	
	select_filtre("etable",filtre,lettre)
	
	if (lettre="s")
	{
		CD=120000
	}
	else
	{
		CD=300000
	}
	a=0
	T=0
	while (a!=1)
	{
		while (T<CD and a!=1)
		{
			T1:=A_TickCount
			
			T2=0
			
			etable_to_enclos()
			
			pixelsearch,,,381,700,381,700,0xFFFFFF,5
			Tn=0
			while (errorlevel!=0)
			{
				pixelsearch,,,381,700,381,700,0xFFFFFF,5
				sleep, 100
				Tn+=100
				if(Tn>=5000)
				{
					etable_to_enclos()
					Tn=0
				}
			}
			
			sendInput, {Tab}
			sleep, 1000
			pixelsearch,,,381,187,381,187,0xFFFFFF,5
			if (errorlevel!=0)
			{
				a=1
			}
			if (a!=1)
			{
				
				StartTime := A_TickCount
				
				enclos_to_etable()
				
				pixelsearch,,,381,700,381,700,0xFFFFFF,5
				Tn=0
				while (errorlevel=0)
				{
					pixelsearch,,,381,700,381,700,0xFFFFFF,5
					sleep, 100
					Tn+=100
					if(Tn>=5000)
					{
						enclos_to_etable()
						Tn=0
					}
				}
				
				Timeleft:= 1000-(A_TickCount - StartTime)
				if(Timeleft>0)
				{
					sleep, %Timeleft%
				}		
				
				T:=T+(A_tickcount-T1)
			}
		}	
		if (T>=CD)
		{
			sortir_enclos()
			
			;%objet%
			objet(objet)
			
			entrer_enclos()
			
			select_filtre("etable",filtre,lettre)
			
			T=0
		}
	}
	
	select_filtre("enclos",filtre,lettre)
	
	;inventaire à l'étable
	inv_to_etable()
	
	while (a!=0)
	{
		while (a!=0 and T<CD)
		{
			StartTime:=A_tickcount
			
			sendInput, {Tab}
			sleep, 2500
			
			enclos_to_inv()
			pixelsearch,,,381,700,381,700,0xFFFFFF,5
			Tn=0
			while (errorlevel=0)
			{
				pixelsearch,,,381,700,381,700,0xFFFFFF,5
				sleep, 100
				Tn+=100
				if(Tn>=5000)
				{
					enclos_to_inv()
					Tn=0
				}
			}
			
			sleep, 500
			
			pixelsearch,,,1214,387,1214,387, 0x363B40,5
			if (errorlevel!=0)
			{
				inv_to_enclos()
				
				pixelsearch,,,381,700,381,700,0xFFFFFF,5
				Tn=0
				while (errorlevel!=0)
				{
					pixelsearch,,,381,700,381,700,0xFFFFFF,5
					sleep, 100
					Tn+=100
					if(Tn>=5000)
					{
						inv_to_enclos()
						Tn=0
					}
				}
			}
			
			sleep, 200
			pixelsearch,,,1208,385,1208,385,0x363B40,5 ;inventaire
			b:=errorlevel
			pixelsearch,,,382,701,382,701,0x363B40,5 ;enclos
			c:=errorlevel
			a:=b+c
			T:=T+(A_tickcount-StartTime)
		}
		if (T>=CD)
		{
			enclos_to_inv()
			
			clear_filter_enclos()
			
			enclos_to_etable()
			
			sortir_enclos()
			
			;%objet%
			objet(objet)
			
			entrer_enclos()
			
			inv_to_enclos()
			
			select_filtre("enclos",filtre,lettre)
			
			T=0
		}
		
	}
	
	;clear filtres etable.ahk
	clear_filters_etable()
	
	;clear filtre enclos
	clear_filter_enclos()
	
	;monture enclos à l'etable
	enclos_to_etable()
	
	return
}