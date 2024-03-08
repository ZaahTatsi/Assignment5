# Stage 1: Builder
FROM alpine AS builder
WORKDIR /app
COPY data.txt .

# Stage 2: Final
FROM fedora
COPY --from=builder /app/data.txt /data.txt

