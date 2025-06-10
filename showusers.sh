echo "---------------------------------------USERS------------------------------------------" 

cat /etc/passwd | grep -vE "nologin|false" | tr ':' '  ' | tr ',' ' ' | awk '{print " USER:"$1" UID:"$3" GID: "$4" INFO: "$5" HOME:"$6 " SHELL:"$NF}' |  column  -t | sort -k 2
