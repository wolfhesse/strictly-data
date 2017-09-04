RESULTFILE="${0%%.sh}.res" 
#exec >>$RESULTFILE 2>&1 

echo .anf
docker pull wolfhesse/dotnetapp-sample
docker run --rm wolfhesse/dotnetapp-sample "eins acht ueber" | grep '.here' | jq "."
echo .fin


