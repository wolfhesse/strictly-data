

exec 2>&1 1>>"${0%%.sh}.res"
echo .anf

echo "1 - uname"
echo "  -"
echo "  - wilder hostname? -> docker image von rstudio"
uname -a

echo "2 : docker pull"
docker pull wolfhesse/dotnetapp-sample

echo "3 - docker run"
docker run --rm wolfhesse/dotnetapp-sample "eins acht ueber" | grep '.here' | jq "."



echo .fin


