function inc(){
	printf("%s%s\n", sp[n], $0)
	n = n + 1
}

function dec(){
	n = n - 1
	printf("%s%s\n", sp[n], $0)
}

BEGIN {
	FS = "\n"
	for (i=0; i<=2; i++){
		sp[i] = ""
		for (j=0; j<i; j++){
			sp[i] = sp[i] "  "
			}
	}
	n = 0
}

# IF
/^[ \t]*if/{ inc(); next }

# END
/^[ \t]*end/ { dec(); next }

# FOR
/^[ \t]*for/{ inc(); next }


# FUNCTION
/^[ \t]*for/{ inc(); next }



# GENERIC LINE
{
	printf("%s%s\n", sp[n], $0)
}
