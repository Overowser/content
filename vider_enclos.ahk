enlever(byref x1,byref y1,byref x2,byref y2,byref color)
{
	pixelsearch,,, %x1%,%y1%,%x1%,%y1%,%color%,5
	T=1000
	while (errorlevel!=0)
	{
		if (T>=1000)
		{
			click, %x1%,%y1%
			sleep, 200
			click, %x2%,%y2%
			T=0
		}
		sleep, 10
		T+=10
		pixelsearch,,, %x1%,%y1%,%x1%,%y1%,%color%,5
	}
	return
}


vider_enclos()
{
	enlever(1121,465,1137,483,"0x2E98F8")
	
	sleep, 50
	
	enlever(1212,467,1272,487,"0x457BE0")
	
	sleep, 50
	
	enlever(1121,416,1175,434,"0x4073CD")
	
	sleep, 50
	
	enlever(1217,416,1266,435,"0x89AEFF")
	
	sleep, 50
	
	return
}