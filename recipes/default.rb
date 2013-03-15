#
# Cookbook Name:: ssmtp
# Recipe:: default
#
# Copyright 2013, UMass Transit Service
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
package "ssmtp" do
  action :install
end

template "/etc/ssmtp/ssmtp.conf" do
  source "ssmtp.conf.erb"
  owner "root"
  group "root"
  mode  "0644"
  variables(
    :root_user =>          node['ssmtp']['root_user'],
    :mailhub =>            node['ssmtp']['mailhub'],
    :rewrite_domain =>     node['ssmtp']['rewrite_domain'],
    :hostname =>           node['ssmtp']['hostname'] ,
    :from_line_override => node['ssmtp']['from_line_override'],
    :use_tls =>            node['ssmtp']['use_tls'],
    :use_starttls =>       node['ssmtp']['use_starttls'],
    :tls_cert =>           node['ssmtp']['tls_cert'],
    :use_auth =>           node['ssmtp']['use_auth'],
    :auth_user =>          node['ssmtp']['auth_user'],
    :auth_pass =>          node['ssmtp']['auth_pass'],
    :auth_method =>        node['ssmtp']['auth_method']
  )
end
