#
# Cookbook Name:: qa-chef-server-cluster
# Recipes:: chef-ha-install-package
#
# Author: Patrick Wright <patrick@chef.io>
# Copyright (C) 2015, Chef Software, Inc. <legal@getchef.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# called during ha install orchestration
chef_package 'chef-ha' do
  package_url node['qa-chef-server-cluster']['chef-ha']['url']
  install_method node['qa-chef-server-cluster']['chef-ha']['install_method']
  version node['qa-chef-server-cluster']['chef-ha']['version']
  integration_builds node['qa-chef-server-cluster']['chef-ha']['integration_builds']
  repository node['qa-chef-server-cluster']['chef-ha']['repo']
end