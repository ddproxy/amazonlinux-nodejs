FROM amazonlinux:latest

# Install NodeJS
RUN curl --silent --location https://rpm.nodesource.com/setup_8.x | bash -
RUN yum -y update && \
  yum -y install gcc-c++ make nodejs

ENV NPM_CONFIG_LOGLEVEL info
ENV NODE_VERSION 8.6.0

CMD [ "node" ]