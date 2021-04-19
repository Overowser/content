F9::
{
	mousegetpos, x,y
	pixelgetcolor, color, %x%, %y%
	FileAppend, %x%`,%y%`n%color%`n, data.txt
}
return
F2::
{
	FileDelete, data.txt
	FileDelete, 2.txt
}
return