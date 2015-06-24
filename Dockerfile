FROM ubuntu:trusty

RUN apt-get update && apt-get -y upgrade && apt-get -y install wget

# Install Erlang
RUN cd /tmp; wget https://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb && \
    sudo dpkg -i erlang-solutions_1.0_all.deb

# Install Elixir
RUN locale-gen en_US.UTF-8

RUN apt-get update && apt-get install -y git elixir

# Insall MySQL client
RUN apt-get install -y mysql-client