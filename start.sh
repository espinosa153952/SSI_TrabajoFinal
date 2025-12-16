#! /bin/bash
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > ssh/machine/flag/user_flag.txt
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > ssh/machine/flag/root_flag.txt
echo $RANDOM | md5sum  | awk '{print "ssi{"$1"}"}' > database/machine/flag/db_flag.txt