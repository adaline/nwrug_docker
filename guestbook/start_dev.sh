docker run --rm=true -it --name nwrug_guestbook_dev -v "$(readlink -f .)":/app -p 3000:3000 --entrypoint='rails' nwrug/guestbook s -b 0.0.0.0 -p 3000
