docker run -it --entrypoint=rspec nwrug/guestbook:latest && \
docker rm $(docker ps -l -q) > /dev/null
