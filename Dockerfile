FROM rust:1.65
COPY ./ /var/app
WORKDIR /var/app
RUN rustup update && \
    rustup target add wasm32-wasi && \
    cargo build --target wasm32-wasi --release && \
    mv target/release/app ./
CMD ["/var/app/app"]
