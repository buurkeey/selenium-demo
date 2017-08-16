FROM ruby:2.4.0
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh;
WORKDIR /myapp
COPY Gemfile /myapp
RUN bundle install
ENTRYPOINT ["/entrypoint.sh"]
