# Use rust image as the builder base
FROM rust:1.70.0-bullseye AS builder

# Set the build profile to be release
ARG BUILD_PROFILE=release
ENV BUILD_PROFILE $BUILD_PROFILE

# Update and install dependencies
RUN apt-get update && apt-get -y upgrade && apt-get install -y libclang-dev pkg-config

# Copy base folder into docker context
RUN git clone https://github.com/paradigmxyz/reth

# Build reth
RUN cd reth && cargo build --all --locked --profile $BUILD_PROFILE

CMD ["/reth/target/release/reth node"]
