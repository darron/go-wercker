FROM octohost/go-1.5.1

ENV LANGUAGE en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN apt-get install -y make git ruby1.9.1 ruby1.9.1-dev libssl-dev unzip && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install fpm-cookery package_cloud --no-ri --no-rdoc
