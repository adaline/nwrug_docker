docker run -d --name nwrug_guestbook -e RAILS_ENV=production -e RAILS_SERVE_STATIC_FILES=true -e SECRET_KEY_BASE=dont_tell -p 3000:3000 nwrug/guestbook
