FROM ruby:2.4.0
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh;
WORKDIR /myapp
COPY Gemfile /myapp
RUN mkdir -p /myapp/cucumber_output
RUN bundle install
ENTRYPOINT ["/entrypoint.sh"]
#CMD ["/entrypoint.sh"]
#CMD sleep 100000

#FROM centos:7
#
#ENV SCREEN_WIDTH 1360
#ENV SCREEN_HEIGHT 1020
#ENV SCREEN_DEPTH 24
#ENV DISPLAY :99.0
#ENV RBENV_VERSION 2.4.0
#ENV PATH="/root/.rbenv/versions/$RBENV_VERSION/bin:/root/.rbenv/bin:${PATH}"
#
#ARG CHROME_VERSION="google-chrome-stable"
#ARG CHROME_DRIVER_VERSION=2.27
#
#RUN yum -y install bzip2 \
#    ca-certificates \
#    git \
#    sudo \
#    unzip \
#    wget \
#    zlib \
#    zlib-devel \
#    gcc-c++ \
#    patch \
#    readline \
#    readline-devel \
#    libyaml-devel \
#    libffi-devel \
#    openssl-devel \
#    make \
#    autoconf \
#    automake \
#    libtool \
#    bison \
#    sqlite-devel;
#
#RUN git clone https://github.com/rbenv/rbenv.git ~/.rbenv && \
#git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build && \
#echo 'eval "$(rbenv init -)"' >> ~/.bashrc;
#
#RUN rbenv install -v $RBENV_VERSION && \
#rbenv global $RBENV_VERSION;
#
#RUN echo $PATH && \
#ls -al ~/.rbenv/versions/2.4.0/bin && \
#echo "gem: --no-document" > ~/.gemrc && \
#gem install bundler;
#
#RUN wget --no-verbose -O /tmp/chromedriver_linux64.zip https://chromedriver.storage.googleapis.com/$CHROME_DRIVER_VERSION/chromedriver_linux64.zip \
#  && rm -rf /opt/selenium/chromedriver \
#  && unzip /tmp/chromedriver_linux64.zip -d /opt/selenium \
#  && rm /tmp/chromedriver_linux64.zip \
#  && mv /opt/selenium/chromedriver /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
#  && chmod 755 /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION \
#  && ln -fs /opt/selenium/chromedriver-$CHROME_DRIVER_VERSION /usr/bin/chromedriver;
#
#ADD entrypoint.sh /entrypoint.sh
#RUN chmod +x /entrypoint.sh;
#WORKDIR /myapp
#COPY Gemfile /myapp
#RUN mkdir -p /myapp/cucumber_output
#RUN bundle install
#ENTRYPOINT ["/entrypoint.sh"]