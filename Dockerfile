FROM ruby:2.5
RUN apt-get update -qq && apt-get install -y \
	build-essential \
	libpq-dev \
	nodejs \
	postgresql-client \
	yarn \
  vim

WORKDIR /product_register
COPY Gemfile Gemfile.lock /product_register/
RUN bundle install