FROM ruby
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN gem install rails
ADD Gemfile.lock /web/Gemfile.lock
WORKDIR /web
ADD . /web
RUN bundle install
