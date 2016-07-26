include_recipe 'yum-mysql-community::mysql56'
package 'mysql-server' do
  package_name 'mysql-server'
  action :install
end

service 'mysqld' do
  action :start
end
