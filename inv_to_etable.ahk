inv_to_etable()
{
	pixelsearch,,,1210,385,1210,385,0x363B40,5
	if(errorlevel!=0)
	{
		click,1193,317
		pixelsearch,,, 1431,342, 1431,342,0x080A0B,5
		T=0
		while (errorlevel!=0)
		{
			pixelsearch,,, 1431,342, 1431,342,0x080A0B,5
			sleep, 10
			T:=T+10
			if (T>1000)
			{
				T=0
				click,1193,317
			}
		}
		click,1313,334
		sleep, 200
		
		pixelsearch,,,1210,385,1210,385,0x363B40,5
		if(errorlevel!=0)
		{
			pixelsearch,,,382,186,382,186,0xFFFFFF,5
			while (errorlevel!=0)
			{
				sleep, 10
				pixelsearch,,,382,186,382,186,0xFFFFFF,5
			}
			sleep, 50
		}
	}
	return
}