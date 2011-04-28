#
# Cookbook Name:: tandem
# Recipe:: default
#
# Copyright 2011, Bram Swenson
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

include_recipe "rails"
include_recipe "passenger"

web_app "tandem" do
  doc_root        node[:tandem][:document_root]
  template        node[:tandem][:vhost_template]
  server_name     node[:tandem][:server_name]
  server_aliases  node[:tandem][:server_aliases] 

  action :deploy
  user            node[:tandem][:user]
  group           node[:tandem][:group]
  repo            node[:tandem][:repo]
  branch          node[:tandem][:branch]
  rails_env       node[:tandem][:environment]
  migration       node[:tandem][:migrate]

  #
  #action :deploy
  #user "potsdam"
  #group "potsdam"
  #ruby "ree@potsdam"
  #rails_env :production
  #repo "git@github.com:bramswenson/potsdam.git"
  #repo_ssh_key "/tmp/potsdam.priv" # used once and deleted
  #revision "master"
  ## any other Chef::Resource::Deploy options
end

