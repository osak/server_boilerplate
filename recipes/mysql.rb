package 'mysql-server' do
  package_name 'mysql-server'
  action :install
end

service 'mysql' do
  action :start
end
