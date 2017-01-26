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

