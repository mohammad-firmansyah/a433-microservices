# token from github
PAT=
# make image of item-app
docker build -t item-app:v1 .
# show all docker images
docker images
# make new image with same image but differ name 
docker tag item-app:v1 ghcr.io/mohammad-firmansyah/item-app:v1
# login to docker registry github package
docker login ghcr.io -u mohammad-firmansyah --password $PAT
# push image
docker push ghcr.io/mohammad-firmansyah/item-app:v1