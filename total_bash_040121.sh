#!/bin/bash

#strings , symbol "A" and "T" are complements of each other , as "C" and "G". You have a function with one side of the DNA(string,
# except for Haskell); you need to get the other complementary side. DNA strand is never empty or there is no DNA at all

### DNA_strand ("ATTGC") # return "TAACG"
### DNA_strand ("GTAT") # return "CATA"

# echo out the strings

DNA="TGCTACGA"

echo "Original DNA string is $DNA"

# find out the size of DNA string

a=${#DNA}
echo "size of DNA string is $a"

# how to initilize CDNA string 

CDNA=""

# initilize CNDA string counter

b=0

# utilize while loop to build up CDNA string based on DNA string apply with complement rules

# test statement way 1

while [ $b -lt $a ]
do
  case ${DNA:b:1} in
    A)
      CDNA+="T"
      ;;
    T)
      CDNA+="A"
      ;;
    C)
      CDNA+="G"
      ;;
    G)
      CDNA+="C"
      ;;
    *)
      CDNA+=${DNA:b:1}
      ;;
  esac
  b=$(( b + 1 ))
done  

echo "After complement DNA string becomes $CDNA"

# rename file extention from doc to txt

# file expansion

#touch /tmp/junk{1..3}.doc

for c in `ls /tmp/junk*`
do
  echo $c
done

# reverse array

before=("one" "two" "three")

echo "Original array before: ${before[@]}"

# find out the size of an array

d=${#before[@]}
echo "size of an array before is $d"

after=()

while [ $d -gt 0 ]
do
  after=(${after[@]} ${before[$(( d - 1 ))]})
  d=$(( d - 1 ))
done

echo "After reverse array before becomes ${after[@]}"

# find out most disk used files on each dir 

for e in /*
do
  if [ -d $e ]
  then
    echo $e
    cd $e && echo `du -sm . 2>/dev/null` 
    cd $e && echo `du -sm * 2>/dev/null | sort -rn | head -5` 
  fi
done

# Logical AND OR NOT 

# test statement & compound statement 

[ -d /tmp/junk040121 ] && ( echo "junk040121 dir exists"; echo `date +%Y-%m-%d_%H-%M-%S` ) || echo "dir junk040121 not exist"
[ ! -d /tmp/junk040121 ] && ( echo "junk040121 dir NOT EXIST "; echo `date +%Y-%m-%d_%H-%M-%S` ) || echo "dir junk040121 EXIST"

# positional parameters

# IFS=","
# 
# echo "script name is $0"
# echo "total number of parameter is $#"
# echo "first parameter is $1"
# echo "second parameter is $2"
# echo "display all parameters $@"
# echo "display all parameters with IFS $*"

# if else statement

grep g2 /etc/passwd

if [ $? -eq 0 ]
then
  echo "g2 user exists on host $(hostname)"
else
  echo "g2 user NOT exist on host $(hostname)"
fi

# function

# read -p "first name pls: " first
# read -p "last name also: " last
# 
# hello() {
#   echo "your name is $first $last"
# }
# 
# hello
# 
# UID        PID  PPID  C STIME TTY          TIME CMD
# root         1     0  0 10:09 ?        00:00:02 /usr/lib/systemd/systemd --switched-root --system --deserialize 22
# root         2     0  0 10:09 ?        00:00:00 [kthreadd]
# root         3     2  0 10:09 ?        00:00:00 [ksoftirqd/0]
# root         5     2  0 10:09 ?        00:00:00 [kworker/0:0H]

echo `ps -ef | awk -F" " '{print $1}' | sort | uniq -c`

# rename file extension from doc to txt

# touch /tmp/junk{1..3}.doc
# 
# for f in `ls /tmp/junk*`
# do
#   echo $f
#   cd /tmp  && mv $f ${f/%doc/txt}
# done 

# find out the most disk used files on popular dirs opt var etc usr

echo "/opt" > /tmp/list && echo "/var" >> /tmp/list && echo "/etc" >> /tmp/list && echo "/usr" >> /tmp/list

for g in `cat /tmp/list`
do
  echo $g
done

# echo out the last 3 lines of a file

for h in `cat /opt/bash_test2/list`
do
  echo $h
done

# initilize lists array

lists=()

for i in `cat /opt/bash_test2/list`
do
  lists=(${lists[@]} $i)
done

echo "after initlized lists array becomes ${lists[@]}"


# echo out the last 3 lines of a file

k=${#lists[@]}

for j in {1..3}
do
  echo ${lists[$(( k - 1 ))]}
  k=$(( k - 1 ))
done

# more update from master at 501pm
