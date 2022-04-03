docker-compose up environment-go-init
rm -rf ./build_linux/hello.go
cp ./hello.go ./build_linux/hello.go
docker-compose up environment-go-build