sortir_enclos()
{
	pixelsearch,,, 672,70, 672,70,0x4D5358,5
	if (errorlevel=0)
	{
		T=0
		click, 1585,74
		pixelsearch,,, 672,70, 672,70,0x4D5358,5
		while (errorlevel= 0) 
		{
			sleep, 50
			T:=T+50
			pixelsearch,,, 672,70, 672,70,0x4D5358,5
			if (T>1000)
			{
				T=0
				click, 1585,74
			}
		}
		;click, 560,239 (ma3reftch lach kent msayeb hada- nazala mina sama2-3a ta ja)
		;sleep, 500
		mouseclick, left, 1226,187,2
		sleep, 200
		mouseclick, left, 1253,1061,2
		sleep, 200
	}
	return
}