docker run -d infracloudio/csvserver:latest # to check first issue
./gencsv.sh # to generate inputFile file
docker run -d -v $(pwd)/inputFile:/csvserver/inputdata infracloudio/csvserver:latest # solution for the first issue
docker exec -it <container-ID> sh; netstat -plnt # to check port at which the app is exposed. 
docker run -d -v $(pwd)/inputFile:/csvserver/inputdata -p 9393:9300 -e CSVSERVER_BORDER=Orange infracloudio/csvserver:latest # final solution
