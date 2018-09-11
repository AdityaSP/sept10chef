package 'install apache' do
   package_name 'apache2'
end

service 'apache2' do
  action [:enable, :start]
end

#cookbook_file '/etc/apache2/ports.conf' do
#   source 'ports.conf'
#end

template '/etc/apache2/ports.conf' do
   source 'ports.conf.erb'
end

include_recipe 'apache2::restart'

