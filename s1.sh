s="Hello"
strlen=${#s}
i=$((strlen-1))
while [ $i -ge 0 ]
do
	    revstr=$revstr${strlen-1}
	    	echo "$revstr"
