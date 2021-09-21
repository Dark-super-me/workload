branch=main
git clone -b $branch https://github.com/Dark-super-me/Super-Video-Encoder 
cd Super-Video-Encoder 
docker build . --rm --force-rm --compress --pull --file Dockerfile -t compressor 
docker run --privileged --env-file .env --rm -i compressor 
