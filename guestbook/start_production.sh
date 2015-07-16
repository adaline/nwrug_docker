docker run -d --name nwrug_guestbook_production -e RAILS_ENV=production -e RAILS_SERVE_STATIC_FILES=true -e SECRET_KEY_BASE=dont_tell -p 80:3000 nwrug/guestbook
