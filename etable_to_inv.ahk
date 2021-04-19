etable_to_inv()
{	
	pixelsearch,,,651,150,651,150,0x282E35,5
	msgbox,%errorlevel%
	PixelGetColor,color, 651,150
	msgbox,%errorlevel% %color%
	
	mode = "one"
	mode = "two"
	if errorlevel==0
	{	
		pixelsearch,,,381,224,381,224,0xFFFFFF
	}
	else
	{
		pixelsearch,,,382,188,382,188,0xFFFFFF
	}
	msgbox,%errorlevel%
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
		click,871,157
		sleep, 200
	}
	return
}

F4::
etable_to_inv()