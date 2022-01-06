02-12-2021

Shell Scripting


Always the first line will be shedang this line remotes the bash shell, 

* Write s script to display the data 
#!/bin/bash
echo "welcome to the devops family"
echo "how are you"

* Write s script to display the data in next line 
#!/bin/bash
echo "welcome to the devops family"


write a script to print the values which are strored in variables 
#!/bin/bash
name="sachin"
company="abc"
echo "employee name $name"
echo "employee name $company"


while executing script, we will pass argument by seperating it with spaces and inside script we can read the argunments $1,$2,$3 ..{$10} ..


#!/bin/bash
name=$1
company=$2
echo "employee name $name"
echo "employee name $company"

Write a script input from the user and print the same.
(shee bang)
#!/bin/bash
echo "enter the name of the emp"
read name
echo "enter the name of the company"
read company 
echo "employee name $name"
echo "employee name $company"



Note 

$0 name of the script 
$1 first argumnet
$* all arguments passed to the string.
$# Total number of arguments passed to the script
$@ All arguments passed to the string stored in arry format. $a{1},$a{2}
$$ proceess id of the current running process.
$! process id of last commmand went into the background (exmetery )
$? used to print the status of last executed command, if previous command is succesfull it will dispaly 0 other wise it will diaply non 0 value.

#Note:-
# backquote ` where we need assign the output of expression to the variables and also to assign the output of commands to variable  
# ; separate the statement by semicolon ex:- elif [ -d $name ];then
# shebang


 
 
 	Note(Have you written automation script or have you written any script)
	
	Yes I ahve Written 
	To monitorn the diskspace if the space is reached maximum then it will send a mail notification to the concerned person
	To Moinitor the services if it is stoped send mail notofofcation 
	TO cleanup the script which will retain recent Builds and delete old builds
	We have scheduled all the scripts in crontab
	
	

* Write a script 
1****
*2***
**3**
***4*

#!/bin/bash
echo "1****"
echo "*2**"
echo "**3**"
echo "****4"


write a script to read the name of the employee design age and company name and print the same

#!/bin/bash
echo "enter the name of the emplyoee"
read name
echo "enter the name of the emplyoee designation"
read desg
echo "enter the age of the emplyoee"
read age
echo "enter the name of the company"
read company 
echo "employee name $name"
echo "employee designation $desg"
echo "employee age $age"
echo "employee company name $company"


write a script to pass the name of the employee design age and company name to the script and print the same 
#!/bin/bash
e_name=$1
desg=$2
age=$3
company=$4
echo "employee name $e_name"
echo "employee designation $desg"
echo "employee age $age"
echo "employee company name $company"


**********************************************************************************************************************
01-12-2021

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

# ********* ->

strings 	numbers		meaning
==			-eq			equal
!=			-ne			noteqqual
> 			-gt 		greaterthan
>=			-ge			leas than or equal
<			-lt			leassthan
<-			-le			less than or equal 




#Write a script to find the biggest of two numbers

#!/bin/bash
echo "Enter the integer values for num1"
read num1
echo "Enter the integer values for num1"
read num2
if [ $num1 -gt $num2 ]
then
echo "$num1 is grater than $num2"
else
echo "$num1 is lesser than $num2"
fi




#Write a script to add the two numbers
-- 
#!/bin/bash
echo "Enter the integer values for num1"
read num1
echo "Enter the integer values for num2"
read num2
sum=`expr $num1 + $num2`
echo "The sum of two numbers is $sum"


#Write a script for multiplication of two numbers
#!/bin/bash
echo "Enter the integer values for num1"
read num1
echo "Enter the integer values for num2"
read num2
sum=`expr $num1 \* $num2`
echo "The sum of two numbers is $sum"

#Write a script to check the given name is a file or directorie or link and also check whether its exists or not 

#!/bin/bash
echo "Enter the name to check it is a file or dir or link"
read name
if [ -f $name ];then
echo "$name is a file"
elif [ -d $name ];then
echo "$name is a dir"
elif [ -L $name ];then
echo "$name is a link"
else
	echo "$name does not exist"
fi

{/home/ubuntu/devops/sa.txt}


#Write a script to find the biggest of three numbers
#Write a script to check whether the given number is 5 or not.


#Write a script to find the biggest of three numbers
#!/bin/bash
echo "Enter the integer values for num1"
read num1
echo "Enter the integer values for num2"
read num2
echo "Enter the integer values for num3"
read num3
if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
echo "$num1 is grater than $num2 and $num3"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
echo "$num2 is grater than $num1 and $num3"
else
echo "$num3 is greater than $num2 and $num1"
fi


#Write a script to check whether the given number is 5 or not.
#!/bin/bash
echo "Enter the integer values for num1"
read num1
if [ $num1 -eq 5]
then
else
echo "$num1 is is not 5"
fi

************************************************************************************************************
02-12-2021

#Looping statement

#While loop

syntax:-
while [ condition ]
do 
statement
before done Terminating false
done


# Write a script to find the sum of first N numbers.

#!/bin/bash
echo "enter the number"
read num
sum=0
while [ $num -gt 0 ]
do
sum=`expr $sum + $num`
num=`expr $num - 1`
done
echo "sum of first N number is $sum" 

or 

#!/bin/bash
echo "enter the number"
read num
sum=0
inc=1
while [ $inc -le $num ]
do
sum=`expr $sum + $inc`
inc=`expr $inc + 1`
done
echo "sum of first N number is $sum"


#sum of first 5 numbers n=5
sum=0+5
sum=5+4
sum=9+3
sum=12+2
sum=14+1

sum=sum+N
N=N-1
condition is N>0
sum=0



write a script to factorial of given intiger 

#!/bin/bash
echo "enter the intiger value"
read num
fact=1
while [ $num -gt 0 ]
do
fact=`expr $fact \* $num`
num=`expr $num - 1`
done
echo " sum of first N number is $sum " 


while read line :-read the content of the file line by line 
syntax 
while read line 
do 
statement
done < file_name


Example
Write a script to content of a file line by line
#!/bin/bash
echo "enter the file name"
read name
while read line
do
echo "$line"
done < $name

adding wc
#!/bin/bash
echo "enter the file name"
read name
while read line
do
echo "$line" | wc -c
done < $name

Write a script to find the character of files in each line
#!/bin/bash
echo "enter the file name"
read name
while read line
do
echo "$line"
echo "$line" | wc -c 
done < $name


************
(find row number in a file 3rd line)

count of character in each line 

#!/bin/bash
echo "enter the file name"
read name
num=0
while read line
do
echo "$line"
count=`echo "$line" | wc -c`
num=`expr $num + 1`
echo "The $num line of file contain $count character"
done < $name


*******************************************************************************************************

03-12-2021

Write a script to the employee name is more than 60

#!/bin/bash
echo "enter the file name"
read name
while read line
do 
	age=`echo "$line" | awk -F " " '{print $2}'`
	if [ $age -gt 60 ]
	then
	 echo "$line" | awk -F " " '{print $1}'
	 fi
done < $name 
	 
	
write script to if the file contain a given pattern or not 

#!/bin/bash
echo "enter the pattern name"
read pattern

grep -R -l $pattern * > output
if [$? -eq 0 ]
then 
	echo "the below file contain pattern"
	cat output
	
else 
	echo"the file doesnot contain pattern"
fi


write a script to reverse the content of a file and store it in a new file last line should be printed as first line second last line as second line and so on 

#!/bin/bash
echo "enter the name of a file"
read file
var='cat $file | wc -l'
while [ $var -gt 0]
do 
head -$var $file | tail -1
var=`expr $var - 1`
done < $file


#!/bin/bash
f1=`ls * .txt > file`
while read line
do
        var = `echo "$line" | awk -F "." '{print $1}'`
        echo "$var"
done <$f1




s="Hello"
strlen=${#s}
i=$((strlen-1))
while [ $i -ge 0 ]
do
    revstr=$revstr${strlen-1}
	echo "$revstr"
    i=$((i-1))
done
echo "Original String : $s"
echo "Reversed String : $revstr"

   revstr=$revstr${Hello World:$11:1}
   
      revstr=$revstr${s:$i:1}
write a script to reverse a string
write a script to rename all the text files into html files
ls * .txt > file
$file | while read


************************************************************************************************************************
04-12-2021

num="10 20 30 40"
For loop

for i in $num
do
statement
done


write a script to display the elements of an array 
#!/bin/bash
num="10 20 30 40"
for i in $num
do
echo "$i"
done

Write a script to find the length of an array
#!/bin/bash
num="10 20 30 40"
len=0
for i in $num
do
echo "$i"
len=`expr $len+1`
done
echo "The length of an arry is $len"





find the sum of an arry.

#!/bin/bash
num="10 20 30 40"
sum=0
for i in $num
do
sum=`expr $sum +$i`
done
echo "The sum of an array is $sum"



was to check whether the key element is found or not 


#!/bin/bash
#num="10 20 30 40"
key=20
for i in $num
do
if [$i -eq $key]
then 
	echo "key element is found"
	exit 0
	else 
	echo "key element is found"  
fi
done




#!/bin/bash
num="10 20 30 40"
key=20
for i in $num
do
if [$i -eq $key]
then 
	echo "key element is found"
	exit 0  
fi
done
 
	echo "key element is not found"
(out side the for loop it will search all the values and print)

how many times give values is repated 





write a script find the check duplicate value is given by user 

#!/bin/bash
echo "enter the array value"
read num
echo "Enter key value to search in arry"
read key
count=0
for i in $num
do
if [ $i -eq $key ]
        then
count=`expr $count + 1`
        fi
done
echo "$key is having $count duplicate values"



write a script to find the largest of an element in arry 


#!/bin/bash
echo "enter the array value"
read num
i=1
lar=$i
for i in $num
do
if [ $i -gt $lar ]
then
lar=$i
fi
done
echo "Largest number in array is  $lar"




************************************************************************************************************************
switch case

syntax 
case $var in
value1) stamt 1
;;
value2) stamt 2
;;
value3) stamt 3
;;
*)
defualt statment 
esac


write a script to do the fallowing script monday create 2 files tuesday re name a file tmp1 and tmp2 

wednesday mv a files to a dirctory bakup
thursday disply the content of a file
friday delete the files
staurda and sunday display the statement as holiday 

write a script to if press 1 we need to addition 2 substraction 3 multiplication other than this come out of execution read input from user 

#!/bin/bash
echo "Enter the first vale"
read a
echo "Enter the first vale"
read b
echo "press 1 for addition press 2 for subtraction press 3 for multiplication"
read ch
case $ch in
1) sum=`expr $a + $b`
echo "Addition of $a and $b is $sum"
;;
2) sum=`expr $a - $b`
echo "multiplication of $a and $b is $sum"
;;
3) sum=`expr $a \* $b`
echo "multiplication of $a and $b is $sum"
;;
*) echo "Invalid operation "
esac 



https://www.log2base2.com/shell-script-examples/loop/shell-script-to-find-largest-of-n-numbers.html



****************************************************************************************************************

write a script to moinitor the disk space if it reached 70 % then I should get a email notification

#!/bin/bash
disk=`df -h . | awk -F " " 'NR>1 {print $(NF-1)'} | sed 's/%//g'`
if [ $disk -ge 30 ]
then 
echo "memory reached maximum"
echo "disk space reached maximum" | mail -s "Memory reached maximum please resolve this" sachin.bm@gmail.com
fi


Write a script to monitor the services any of the services is stoped it should send a mail notification automatically 
#!/bin/bash
service="sshd jenkins tomcat"
for i in $service
do
	ps -C $i
	if [ $? -ne 0 ]
	then 
	echo "$i sservice stoped" | mail -s "Below services are stoped " aaas@gmail.com
	systemctl start $i
	fi
	done
	
	
	
	
	write a script to clean up the space which will retain recent 20 builds and delete old builds (clean up script)
	#!/bin/bash
	ls -lt | awk -F " " 'NR>21 {prin $NF}' | xargs rm -rf
	
	Note(Have you written automation script or have you written any script)
	
	Yes I ahve Written 
	To monitorn the diskspace if the space is reached maximum then it will send a mail notification to the concerned person
	To Moinitor the services if it is stoped send mail notofofcation 
	TO cleanup the script which will retain recent Builds and delete old builds
	We have scheduled all the scripts in crontab
	
**************************************************************************************************************************************

It is a scheduler used to schedule the scripts in linux
	
	syntax :-* * * * * path of the script/arguments

arguments are optional 

* * * * * 

1 * :- minutes 00 indicates 0 minutes (10:00)
       05 indicates 5 minutes 
		05,20 script will execute in 05 minutes and 20 minutes
		*/10 script will execute in every 10 minutes 
		
2 * :- will indicate in 24 hour format (10 am 10 10 PM 22)

*/ will applicable to only first 2
		
3 * :- 3rd value indicate date 

4 * :- 4th value indicatre month
		for jan 01
			feb 02
5 * :- indicate day of the week 
		sunday value will be 00
		monday value will be 01
		
	script will run in background
	no input 
	
Ex :-1 I want to run the script on 10th dec at 10 PM (script name /home/ubantu/1.sh)


00 22 10 12 * /home/ubantu/1.sh


Ex 2 :- I need to execute the script on 9th aug 11 15 am 

15 11 09 10 * /home/ubantu/1.sh

Ex2 :- I need to execute every monday at 6 Pm 

00 18 * * 01 path 

Ex 3:- I need to execute on monday and thursday at 2.15 PM

15 14 * * 01,04 path 

Ex 4:- I need to execute on monday to thursday at 2.15 PM

15 14 * * 01-04 path 

 I need to run every 30 minutes on friday 
 
 */30 * * * 05 

I need to execute on every minutes on every day 

* * * * *  

38 16 08 12 * /home/ubuntu/access/sa.txt > /home/ubuntu/access/sac