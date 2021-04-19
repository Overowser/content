etable_to_enclos()
{
	pixelsearch,,,382,186,382,186,0xFFFFFF,5
	if(errorlevel=0)
	{
		click,742,114
		pixelsearch,,,771,142,771,142,0x2F2F2F,5
		T=0
		while (errorlevel!=0)
		{
			T:=T+50
			pixelsearch,,,771,142,771,142,0x2F2F2F,5
			sleep, 50
			if (T>1000)
			{
				T=0
				click,742,114
			}
		}
		click,880,130
		sleep, 200
	}
	return
}