#!/usr/bin/env bash

set -e

ruby -rerb -e 'puts ERB.new(File.read(".devcontainer/domain.yml.erb")).result(binding)' > config/domain.yml
cp .devcontainer/config/database.yml config/database.yml
cp config/security.yml.example config/security.yml
cp .devcontainer/config/cache_store.yml config/cache_store.yml
cp .devcontainer/config/redis.yml config/redis.yml
cp .devcontainer/config/dynamic_settings.yml config/dynamic_settings.yml

bundle install
yarn install

bundle exec rake db:initial_setup
bundle exec rails canvas:compile_assets_dev