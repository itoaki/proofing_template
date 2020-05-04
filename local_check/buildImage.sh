echo "================================"
echo "Build prh image"
echo "================================"
docker build -t prh ./local_check/prh
echo "================================"
echo "Build redpen image"
echo "================================"
docker build -t redpen ./local_check/RedPen
echo "================================"
echo "Build textlint image"
echo "================================"
docker build -t textlint ./local_check/textlint
echo "DONE"
