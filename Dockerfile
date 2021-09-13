FROM ruby:3.0.0
RUN apt-get update -qq && \
    apt-get install -y build-essential \
                       libpq-dev \
                       nodejs \
                       postgresql-client

RUN mkdir /backend
WORKDIR /backend

RUN gem install bundler -v 2.2.27
COPY Gemfile ./
RUN touch Gemfile.lock
RUN bundle update --bundler
RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000