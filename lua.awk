# Increment identation
function inc(){
	printf("%s%s\n", sp[n], $0)
	n = n + 1
}

# Decrement identation
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

# {
/\{/{ inc(); next }
# }
/\}/{ dec(); next }

# If ... end (in the same line)
/if.*end/{
	printf("%s%s\n", sp[n], $0)
	next;
	}
# IF
/if/{ inc(); next }

# END
/end/ { dec(); next }

# FOR
/for/{ inc(); next }

# FUNCTION
/function/{ inc(); next }


# GENERIC LINE
{
	printf("%s%s\n", sp[n], $0)
}
