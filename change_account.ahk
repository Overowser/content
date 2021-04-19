change_account(byref account)
{
	run C:\Users\El Ghali\AppData\Local\Ankama\zaap\dofus\dofus.exe
	
	pixelgetcolor, color, 702,427
	while (color!="0x2B2F34")
	{
		pixelgetcolor, color, 702,427
		sleep, 50
	}
	
	sleep, 100
	click, 951,633
	sleep, 100
	click, 1000, 350
	send ^{a}
	sleep, 100
	send %account%
	sleep, 100
	sendinput, {tab}
	sleep, 200
	send Gwen9874563
	sleep, 100
	sendinput, {enter}
	sleep, 100
	
	pixelgetcolor, color, 816,979
	while (color!="0xC2DADE")
	{
		pixelgetcolor, color, 816,979 
		sleep, 50
	}
	
	sleep, 100
	return
}