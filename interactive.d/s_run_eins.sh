
SCRIPT_HERE="${0%%.sh}"
touch "$SCRIPT_HERE.res"

# recurring pattern: mv "$SCRIPT_HERE.res" "$SCRIPT_HERE.res.old"
cat "$SCRIPT_HERE.res" >> "$SCRIPT_HERE.res.old"
cat /dev/null > "$SCRIPT_HERE.res"

exec 2>&1 1>>"$SCRIPT_HERE.res"

echo .anf

echo 1 gruss
uname -a

echo 2 dates
date
date +"%Y%m%d.%H%M%S"

echo .fin
