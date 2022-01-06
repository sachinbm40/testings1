
#Conditional statement 

#->	If

if [ condition ]
then statement_1
fi

# ->	If else 

if [ condition ]
then statement_1
else
statment 2
fi

# ->	nested IF
if [ condition ]
then 
statement_1
elif [ condition ]
then
statment 2
else 
statement 3
fi

# -> while 

syntax:-
while [ condition ]
do 
statement
before done Terminating false
done

# -> while read line :-read the content of the file line by line 
syntax 
while read line 
do 
statement
done < file_name



du -sh file_name :- it is used to display the size of a file
df -h:- size of all the drives of a system(disk space)
free :- It is used to display the size of the system memory(ram memory).
free -m	 

#!/bin/bash
disk=`df -h . | awk -F " " 'NR>1 {print $(NF-1)'} | sed 's/%//g'`
if [ $disk -ge 30 ]
then 
echo "memory reached maximum"
echo "disk sapce reached maximum" | mail -s "Memory reached maximum please resolve this" sachin.bm@gmail.com
fi

#!/bin/bash
disk=`df -h . | awk -F " " 'NR>1 {print $(NF-1)'} | sed 's/%//g'`
if [ $disk -ge 30 ]
then 
echo "memory reached maximum"
fi

smtp_sasl_auth_enable = yes
smtp_sasl_security_options = noanonymous
smtp_sasl_password_maps = hash:/etc/postfix/sasl/sasl_passwd
smtp_tls_security_level = encrypt
smtp_tls_CAfile = /etc/ssl/certs/ca-certificates.crt
