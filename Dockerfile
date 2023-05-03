FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/hairyhenderson/caddy-teapot-module@v0.0.3-0
    --with github.com/caddy-dns/hetzner

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
