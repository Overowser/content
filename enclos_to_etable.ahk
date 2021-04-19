enclos_to_etable()
{
	pixelsearch,,,381,699,381,699,0xFFFFFF,5
	if(errorlevel=0)
	{
		click, 738,625
		pixelsearch,,, 771,652, 771,652,0x2F2F2F,5
		T=0
		while (errorlevel!= 0) 
		{
			sleep, 10
			T:=T+10
			pixelsearch,,, 771,652, 771,652,0x2F2F2F,5
			if(T>=1000)
			{
				T=0
				click, 738,625
			}
		}
		click, 829, 641
		sleep, 200
	}
	return
}