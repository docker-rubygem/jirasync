FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.4.5

RUN gem install jirasync --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["jira-format-issues"]
CMD ["--help"]
