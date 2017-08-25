exec 2>&1 1>>"${0%%.sh}.res"
echo .anf
docker pull wolfhesse/dotnetapp-sample
docker run --rm wolfhesse/dotnetapp-sample "eins acht ueber" | grep '.here' | jq "."
echo .fin


