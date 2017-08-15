FROM ruby:2.4.0
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh;
WORKDIR /myapp
ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/bin/bash"]