FROM nwrug/ruby-base

RUN apt-get update && apt-get install -y \
    libsqlite3-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /app
WORKDIR /app

COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN bundle install

COPY . /app

EXPOSE 3000

ENTRYPOINT bundle exec rake assets:precompile && bundle exec rails s -b 0.0.0.0 -p 3000
