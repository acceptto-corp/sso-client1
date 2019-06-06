FROM ruby:2.5.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        postgresql-client build-essential nodejs \
        qt5-default libqt5webkit5-dev \
        gstreamer1.0-plugins-base gstreamer1.0-tools gstreamer1.0-x \
        lsof zlib1g-dev liblzma-dev wget xvfb unzip libgconf2-4 libnss3 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY Gemfile* ./
RUN gem install bundler && \
    bundle config git.allow_insecure true
RUN bundle install
COPY . .
EXPOSE 3002
