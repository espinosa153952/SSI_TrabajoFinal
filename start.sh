#! /bin/bash
mkdir -p ssh/machine/flag
mkdir -p database/machine/flag
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > ssh/machine/flag/user_flag.txt
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > ssh/machine/flag/root_flag.txt
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > database/machine/flag/db_flag.txt