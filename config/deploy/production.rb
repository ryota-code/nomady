server '3.22.147.189', user: 'ryota', roles: %w{app db web} 

set :ssh_options, {
  keys: '~/.ssh/nomady_key_rsa',
  forward_agent: true
}