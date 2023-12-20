gci . | % {
	gci $_ -Filter '*.json' | % {
		cp $_ "$($_.Directory)\$($_.BaseName)"	
		cp $_ ("$($_.Directory)\{0:X64}" -f [int]$_.BaseName)
		cp $_ ("$($_.Directory)\{0:X64}.json" -f [int]$_.BaseName)
	}
}