#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#Install postgresql-server and intialize
package 'postgresql-server' do
        notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
        comman 'postgresql-setup initdb'
        action :nothing
end

service 'postgresql' do
        action [:enable, :start]
end
