FROM ruby:2.5.1

RUN apt-get update \
    && apt-get install -y build-essential libpq-dev nodejs \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN gem install bundler && \
    bundle config git.allow_insecure true
RUN bundle install
COPY . .
EXPOSE 3002
