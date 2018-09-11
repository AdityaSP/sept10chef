
search('logins','*:*').each do |user_data|
  log "#{user_data['id']}"
  log "#{user_data['home']}"
end

node.normal['apache_port'] = 8888
node.default['apache_port'] = 9999



log "ipaddress is #{node['ipaddress']}"
log "ipaddress is #{node['apache_port']}"

node.default['var1'] = 10
log "ipaddress is #{node['var1']}"
