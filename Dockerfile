FROM ruby:3.1.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /ss90-blog
WORKDIR /ss90-blog

ADD Gemfile /ss90-blog/Gemfile
ADD Gemfile.lock /ss90-blog/Gemfile.lock

RUN bundle install

ADD . /ss90-blog