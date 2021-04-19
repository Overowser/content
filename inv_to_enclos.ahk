inv_to_enclos()
{
	pixelsearch,,,1210,385,1210,385,0x363B40,5
	if(errorlevel!=0)
	{
		click, 1193,317
		pixelsearch,,, 1312,346, 1312,346,0x080A0B,5
		T=0
		while (errorlevel!= 0) 
		{
			T:=T+10
			sleep, 10
			pixelsearch,,, 1312,346, 1312,346,0x080A0B,5
			if (T>1000)
			{
				T=0
				click, 1193,317
			}
		}
		click, 1307, 356
		sleep, 200
	}
	return
}
