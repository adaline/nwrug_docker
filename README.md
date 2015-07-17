NWRUG Docker intro
--
This repo contains the base ruby image and a demo Rails guestbook app.
See the various `*.sh` files for commands used to build and run containers.

When running the Rails container, remember to migrate the db: `docker exec [container_name] rake db:migrate`.
You can also attach to the running container and get into the Rails console like so: `docker exec -it [container_name] rails c`.

Check out [Docker Cheat Sheet](https://github.com/wsargent/docker-cheat-sheet) for some snappy
reference to using Docker.

Val  
[@webmadespecial](https://twitter.com/webmadespecial)

---
