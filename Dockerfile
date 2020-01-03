FROM ruby:2.6
RUN gem install rails
WORKDIR /Sites
RUN cd /tmp && \
    curl -sL https://deb.nodesource.com/setup_13.x | /bin/bash && \
    apt-get install -y nodejs

RUN npm install -g yarn

RUN gem update --system && \
    gem install --default --version '2.1.2' -i /usr/local/lib/ruby/gems/2.6.0/ bundler

RUN ruby -v && \
    rails -v && \
    gem -v && \
    bundler -v && \
    node -v

# Create temp directory, bundle install dependencies
RUN cd /tmp && \
    rails new demo -d mysql && \
    cd demo && \
    bundle install

EXPOSE 3000
