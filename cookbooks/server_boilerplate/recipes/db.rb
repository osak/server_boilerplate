#include_recipe 'yum-mysql-community::mysql56'

package 'mysql-server' do
  package_name 'mysql-server'
  action :install
end

service 'mysql' do
  action :start
end

include_recipe 'mongodb3'
