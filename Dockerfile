FROM adgud2/ruby-rvm:latest

RUN apt-get update -qqy && apt-get install -qqy \
        cmake \
        && rm -rf /var/lib/apt/lists

