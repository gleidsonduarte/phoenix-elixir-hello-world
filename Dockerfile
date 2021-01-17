FROM elixir:latest

ARG ENVIRONMENT

RUN apt-get update && \
    apt-get install -y inotify-tools && \
    apt-get install -y nodejs && \
    curl -L https://npmjs.org/install.sh | sh && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.5.3 --force && \
    mix local.rebar --force

ENV APP_HOME /app

RUN mkdir $APP_HOME

WORKDIR $APP_HOME

COPY . .

RUN mix deps.get
RUN npm install --prefix ./assets

ENTRYPOINT ["/bin/sh", "-c" , "mix phx.server" ] 