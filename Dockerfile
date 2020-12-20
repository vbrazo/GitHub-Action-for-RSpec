FROM ruby:2.6.6

LABEL "com.github.actions.name"="GitHub Action for rspec"
LABEL "com.github.actions.description"="Run rspec commands"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="yellow"

RUN gem install bundler
RUN gem install rspec
RUN ruby --version
RUN rspec --version

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
