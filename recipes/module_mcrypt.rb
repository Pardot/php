#
# Author::  Zach Bailey (<zach.bailey@pardot.com>)
# Cookbook Name:: php
# Recipe:: module_mcrypt
#
# Copyright 2012, Pardot, LLC
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
#

case node['platform']
when "debian", "ubuntu"
  package "php5-mcrypt" do
    action :install
  end
when "centos", "redhat", "fedora"
  rpm_package "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm" do
    action :upgrade
  end
  package "php-mcrypt" do
    action :install
  end
end
