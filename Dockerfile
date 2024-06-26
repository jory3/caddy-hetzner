# 2024-06-10
FROM caddy:builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/hetzner

FROM caddy:latest

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
