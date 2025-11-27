#! /bin/bash
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > machine/flag/user_flag.txt
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > machine/flag/root_flag.txt
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > machine/flag/flag.txt

docker compose -p web-lab up -d
