#include time.ahk
#include next.ahk

#include etape11.ahk
#include etape12.ahk

#include etape13.ahk
#include etape14.ahk
#include etape21.ahk
#include etape22.ahk
#include etape23.ahk

#include etape31.ahk

#include etape32.ahk

#include etape41.ahk
#include etape42.ahk
#include etape51.ahk
#include etape52.ahk

;#include etape53.ahk

#include prep_compte.ahk
#include vider_enclos.ahk

pause
loop
{
	fileappend, `n------------------------`n,logs.txt
	fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% start`n,logs.txt
	
	Total:=[]
	NDC:=[]
	Etape:=[]
	Feconde:=[]
	Time:=[]
	
	T=0
	T1=0
	T2=0
	T3=0
	T4=0
	T5=0
	Loop, Read, Total.txt
	{
		T += 1
		if (mod(T,4)=1)
		{
			T1+=1
			NDC[T1] := A_LoopReadLine
			Total[T]:= A_LoopReadLine
		}
		else if (mod(T,4)=2)
		{
			T2+=1
			Etape[T2] := A_LoopReadLine
			Total[T]:= A_LoopReadLine
		}
		else if (mod(T,4)=3)
		{
			T3+=1
			Time[T3]:= A_LoopReadLine
			Total[T]:= A_LoopReadLine
		}
		else
		{
			T4+=1
			Feconde[T4]:= A_LoopReadLine
			Total[T]:= A_LoopReadLine
		}
	}
	
	N:=T/4
	M:=T-1
	P:=T
	
	
	k=0
	while (k<N)
	{
		k+=1
		a:=Etape[k]
		Nom:=NDC[k]
		Fec:=Feconde[k]
		b:=Time[k]
		dH:=floor((Time(A_now)-Time(b))/3600) ;nombre d'heure depuis Time[k]
		
		;if (a=6 and Fec="N")
		;{	
		;	a=13
		;	Etape[k]:=a
		;	Nom:=NDC[k]
		;	;logs changes
		;	T1:=4*k-2
		;	Total[T1]:=a
		;	filedelete, Total.txt
		;	loop, %M%
		;	{
		;		element := Total[A_Index]
		;		fileappend, %element%`n, Total.txt
		;	}
		;	element := Total[P]
		;	fileappend, %element%, Total.txt
		;	fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% %Nom% etape %a%`n,logs.txt
		;}
		
		a1:=Etape[k]
		
		if(a=11 or a=12)
		{
			prep_compte(Nom)
			while (a!=13)
			{
				a:=Etape%a%()
				Etape[k]:=a
				Nom:=NDC[k]
				;logs changes
				T1:=4*k-2
				Total[T1]:=a
				filedelete, Total.txt
				loop, %M%
				{
					element := Total[A_Index]
					fileappend, %element%`n, Total.txt
				}
				element := Total[P]
				fileappend, %element%, Total.txt
				fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% %Nom% etape %a%`n,logs.txt
			}
			sortir_enclos()
			vider_enclos()
		}
		
		else if (a=13 or a=14 or a=21 or a=22 or a=23)
		{
			if (dH>14)
			{
				prep_compte(Nom)
				while (a!=31 and a!=32)
				{
					a:=Etape%a%()
					Etape[k]:=a
					Nom:=NDC[k]
					;logs changes
					T1:=4*k-2
					Total[T1]:=a
					filedelete, Total.txt
					loop, %M%
					{
						element := Total[A_Index]
						fileappend, %element%`n, Total.txt
					}
					element := Total[P]
					fileappend, %element%, Total.txt
					fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% %Nom% etape %a%`n,logs.txt
				}
				sortir_enclos()
				vider_enclos()
			}
		}
		else if (a=31 and dH>=19)
		{
			prep_compte(Nom)
			a:=Etape%a%()
			Etape[k]:=a
			Nom:=NDC[k]
			;logs changes
			T1:=4*k-2
			Total[T1]:=a
			filedelete, Total.txt
			loop, %M%
			{
				element := Total[A_Index]
				fileappend, %element%`n, Total.txt
			}
			element := Total[P]
			fileappend, %element%, Total.txt
			fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% %Nom% etape %a%`n,logs.txt
			sortir_enclos()
			vider_enclos()
		}
		else if (a=32 and dH>=18)
		{
			prep_compte(Nom)
			a:=Etape%a%()
			Etape[k]:=a
			Nom:=NDC[k]
			;logs changes
			T1:=4*k-2
			Total[T1]:=a
			filedelete, Total.txt
			loop, %M%
			{
				element := Total[A_Index]
				fileappend, %element%`n, Total.txt
			}
			element := Total[P]
			fileappend, %element%, Total.txt
			fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% %Nom% etape %a%`n,logs.txt
			sortir_enclos()
			vider_enclos()
		}
		else if (a=41 or a=42 or a=51 or a=52)
		{
			if (dH>13)
			{
				prep_compte(Nom)
				while (a!=6)
				{
					a:=Etape%a%()
					Etape[k]:=a
					Nom:=NDC[k]
					;logs changes
					T1:=4*k-2
					Total[T1]:=a
					filedelete, Total.txt
					loop, %M%
					{
						element := Total[A_Index]
						fileappend, %element%`n, Total.txt
					}
					element := Total[P]
					fileappend, %element%, Total.txt
					fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% %Nom% etape %a%`n,logs.txt
				}
				sortir_enclos()
				vider_enclos()
			}
		}
		
		if (a!=a1)
		{
			;time update
			Now:=A_now
			T2:=4*k-1
			Time[k]:=Now
			Total[T2]:=Now
			filedelete, Total.txt
			loop, %M%
			{
				element := Total[A_Index]
				fileappend, %element%`n, Total.txt
			}
			element := Total[P]
			fileappend, %element%, Total.txt
			fileappend, %A_DD%/%A_MM%/%A_YYYY% %A_Hour%:%A_Min%:%A_sec% fin du compte`n,logs.txt
		}
		
		WinClose, ahk_exe C:\Users\El Ghali\AppData\Local\Ankama\zaap\dofus\dofus.exe
		sleep, 2000
	}
	next:=next()
	Nexth:=Floor(Next/3600)
	Nextmin:=floor((Next-Nexth*3600)/60)
	Nexts:=Next-Nexth*3600-Nextmin*60
	if (next!=0)
	{
		msgbox,,,done - A %A_Hour%:%A_Min%:%A_sec% next in %Nexth%h%Nextmin%min%nexts%s,%next%
		next:=next()*1000
		sleep, %next%
	}
	mousemove, 0,0
	mousemove, 10,10
}
F1::
pause