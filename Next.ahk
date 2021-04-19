#include Time.ahk
Next()
{
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
	
	Next:=24*3600
	Nexth:=24
	Nextmin:=0
	Nexts:=0
	
	while (k<N)
	{
		k+=1
		a:=Etape[k]
		b:=Time[k]
		Nom:=Ndc[k]
		
		if(a=11 or a=12)
		{
			Timer=0
		}
		else if (a=13 or a=14 or a=21 or a=22 or a=23)
		{
			Timer:=15
		}
		else if (a=31)
		{
			Timer:=19
		}
		else if (a=32)
		{
			Timer:=18
		}
		else if (a=41 or a=42 or a=51 or a=52)
		{
			Timer:=14
		}
		else if (a=6 or a=7)
		{
			Timer:=2000
		}
		
		c:=(time(b)+Timer*3600)-Time(A_now)
		if (c<Next and c>0)
		{
			;Nexth:=Floor(c/3600)
			;Nextmin:=floor((c-Nexth*3600)/60)
			;Nexts:=c-Nexth*3600-Nextmin*60
			Next:=c
			;e:=Nom
		}
		else if (c<Next)
		{
			;Nexth:=0
			;Nextmin:=0
			;Nexts:=0
			Next:=0
			;e:=Nom
		}
	}
	
	return, %next%
}