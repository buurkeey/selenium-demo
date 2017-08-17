FROM ruby:2.4.0
WORKDIR /myapp
COPY Gemfile /myapp
RUN bundle install
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh;
ENTRYPOINT ["/entrypoint.sh"]
