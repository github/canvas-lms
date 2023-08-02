FROM mcr.microsoft.com/vscode/devcontainers/base:bullseye

ENV CANVAS_LMS_STATS_COLLECTION=opt_out
ENV CANVAS_LMS_ACCOUNT_NAME=learn_good_things_school
ENV CANVAS_LMS_ADMIN_EMAIL=admin@example.com
ENV CANVAS_LMS_ADMIN_PASSWORD=secret123
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_CTYPE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

# Installed minimum version of bundler
RUN gem install bundler:2.2.17

# Default value to allow debug server to serve content over GitHub Codespace's port forwarding service
# The value is a comma-separated list of allowed domains
ENV RAILS_DEVELOPMENT_HOSTS=".app.github.dev"

RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends libxmlsec1-dev libidn11-dev