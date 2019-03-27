server '134.209.250.151 ', user: 'deploy', roles: %w[ web db app ]
set :ssh_options, forward_agent: true