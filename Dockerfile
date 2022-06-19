FROM ruby:2.5

WORKDIR /home/app

ENV PORT 3000

EXPOSE $PORT

RUN gem install bundler
RUN gem install nokogiri -v 1.12.5
RUN gem install rails -v 5.2.3

RUN apt-get update -qq && apt-get install -y nodejs

ENTRYPOINT [ "/bin/bash" ]