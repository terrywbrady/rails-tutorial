FROM ruby:2.5.7
RUN gem install bundler -v 1.12.5 && \
    gem install rails -v 5.0.0 && \
    gem install puma -v 4.3.1 && \
    bundler -v

WORKDIR /Sites
RUN cd /tmp && \
    curl -sL https://deb.nodesource.com/setup_13.x | /bin/bash && \
    apt-get install -y nodejs

RUN npm install -g yarn

RUN ruby -v && \
    rails -v && \
    gem -v && \
    bundler -v && \
    node -v

# Create temp directory, bundle install dependencies
RUN cd /tmp && \
    rails new demo -d mysql && \
    cd demo && \
    bundler install

EXPOSE 3000
