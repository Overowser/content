entrer_enclos()
{
	pixelsearch, , , 438,71,438,71,0x4D5358,5
	if(errorlevel!=0)
	{
		click, 1246,338
	}
	
	T=0
	pixelsearch, , ,388,69,388,69,0x4D5358,5
	while (errorlevel!=0)
	{
		sleep, 50
		T:=T+50
		pixelsearch, , ,388,69,388,69,0x4D5358,5
		if (t>=2000)
		{
			click, 1246,338
			T=0
		}
	}
	sleep, 50
	
	pixelsearch,,,382,186,382,186,0xFFFFFF,5 ;etable full (machi dak full full sara7a)
	a:=errorlevel
	pixelsearch,,,1210,385,1210,385,0x363B40,5 ;inv full (machi dak full full sara7a)
	b:=errorlevel
	c:=a*b
	while (c!=0)
	{
		sleep, 50
		pixelsearch,,,382,186,382,186,0xFFFFFF,5 ;etable full (machi dak full full sara7a)
		a:=errorlevel
		pixelsearch,,,1210,385,1210,385,0x363B40,5 ;inv full (machi dak full full sara7a)
		b:=errorlevel
		c:=a*b
	}
	sleep, 1000
	return
}