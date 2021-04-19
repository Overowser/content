NDC:=[]
Feconde:=[]

T=0
T1=0
T2=0
Loop, Read, total.txt
{
	T += 1
	if (mod(T,4)=1)
	{
		T1+=1
		NDC[T1] := A_LoopReadLine
	}
	else if (mod(T,4)=0)
	{
		T2+=1
		Feconde[T2]:= A_LoopReadLine
	}
}
Nbrcompte:=T/4
Time:=Feconde[1]
a=1
c=1
while (a<Nbrcompte)
{
	a+=1
	b:=Feconde[a]
	Time:=min(b,Time)
	if (time=b)
	{
		c:=a
	}
}

Time+=156,Hours

StringLeft, yyyy, Time, 4
StringMid, mm, Time, 5, 2
StringMid, dd, Time, 7, 2
StringMid, hh, Time, 9, 2
StringMid, min, Time, 11, 2
StringRight, ss, Time, 2


Compte:=NDC[c]
msgbox, prochain compte est: %compte% le %dd%/%mm%/%yyyy% à %hh%:%min%:%ss%