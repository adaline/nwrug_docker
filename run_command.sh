docker run ubuntu "$@" && \
docker rm $(docker ps -l -q) > /dev/null
