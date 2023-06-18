# Use rust image as the builder base
FROM rust:1.70.0-bullseye AS builder

# Set the build profile to be maxperf by default
ARG BUILD_PROFILE=maxperf
ENV BUILD_PROFILE $BUILD_PROFILE

# Update and install dependencies
RUN apt-get update && apt-get -y upgrade && apt-get install -y libclang-dev pkg-config

# Copy base folder into docker context
RUN git clone https://github.com/paradigmxyz/reth

# Build reth
RUN cd reth && RUSTFLAGS="-C target-cpu=native" cargo build --profile $BUILD_PROFILE --features jemalloc

CMD ["/reth/target/maxperf/reth node"]
