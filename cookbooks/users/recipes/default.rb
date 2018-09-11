search('logins', '*:*').each do |user_data|
   user "#{user_data['id']}" do
     home "#{user_data['home']}" 
     shell "#{user_data['shell']}" 
     password '$1$.xul.HGZ$D6ElNmvlnUP9dHcdbmhPF1'
   end
   
   directory "#{user_data['home']}" do
     owner "#{user_data['id']}" 
     group "#{user_data['id']}" 
     mode '0755'
     action :create
   end
end

#user 'user1' do
#  home '/home/user1'
#  shell '/bin/bash'
#  password '$1$.xul.HGZ$D6ElNmvlnUP9dHcdbmhPF1'
#end

#directory '/home/user1' do
#  owner 'user1'
#  group 'user1'
#  mode '0755'
#  action :create
#end
