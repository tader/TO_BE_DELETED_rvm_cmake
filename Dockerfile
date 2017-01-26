FROM adgud2/ruby-rvm:latest

RUN apt-get update -qqy && apt-get install -qqy \
        awscli \
        build-essential \
        cmake \
        colordiff \
        packer \
        unzip \
        zip \
        && rm -rf /var/lib/apt/lists

ENV ADDITIONAL_RUBIES "2.1.0 2.2.3"
RUN /bin/bash -l -c 'for version in $ADDITIONAL_RUBIES; do echo "Now installing Ruby $version"; rvm install $version; rvm cleanup sources; done'

