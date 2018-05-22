ds=`ls -d -1 $PWD/**`

for d in $ds
do
  if [ -d "$d/.git" ]; then
    printf "Checking... $d/\n"
    `cd $d/ && git pull`
  fi
done

exit 0
