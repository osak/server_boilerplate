#
# Cookbook Name:: server_boilerplate
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

# Basic Configurations
include_recipe 'apt'
include_recipe 'build-essential'
include_recipe 'vim'
include_recipe 'git'

# Programming languages
include_recipe 'ruby_build'
include_recipe 'ruby_rbenv::system'
include_recipe 'poise-python'

# Server
include_recipe 'nginx'

# DB
include_recipe 'postgresql'
include_recipe 'postgresql::server'
include_recipe 'mongodb'

# CI
include_recipe 'jenkins'
