sudo mkdir /mnt/Datadisk
sudo mount /dev/sdb1 /mnt/Datadisk

docker build -f Dockerfile -t kevinkwshin/dl4mi .

docker run --runtime=nvidia --name kevin_docker -dit -p 9998:9998 -p 9999:9999 -v /home/kevin/workspace:/workspace -v /mnt/Datadisk/dataset:/dataset kevinkwshin/dl4mi

docker ps
docker exec -it kevin_docker bash
