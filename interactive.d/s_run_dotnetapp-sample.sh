RESULTFILE="${0%%.sh}.res" 
exec >> $RESULTFILE  2>&1 && tail $RESULTFILE &
echo .anf

echo "1 - uname"
echo "  -"
echo "  - wilder hostname? -> docker image von rstudio"
uname -a

echo "2 : docker pull"
docker pull wolfhesse/dotnetapp-sample

echo "3 - docker run"
docker run --rm wolfhesse/dotnetapp-sample "eins acht ueber" | grep '.here' | jq "."
<<<<<<< HEAD
#docker run --rm wolfhesse/dotnetapp-sample "eins acht ueber" 
=======



>>>>>>> bb4ff3a6d7ebde208b14e0448e38ab04fc01fb72
echo .fin


