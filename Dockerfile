FROM elixir:latest

RUN apt-get update && \
    apt-get install -y inotify-tools && \
    apt-get install -y nodejs && \
    curl -L https://npmjs.org/install.sh | sh && \
    mix local.hex --force && \
    mix archive.install hex phx_new 1.5.3 --force && \
    mix local.rebar --force

WORKDIR /app

COPY . .

RUN mix deps.get
RUN npm install --prefix ./assets

ENTRYPOINT ["/bin/sh", "-c" , "mix phx.server" ] 