FROM ruby:2.5.1-slim

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev git vim nodejs postgresql-client build-essential

ENV APP_HOME /job_board
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME/
RUN bundle install
COPY . $APP_HOME