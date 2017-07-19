############################################
# Setup Server
############################################

set :stage, :staging
set :stage_url, "http://testwpdeploy.upliftconnect.com"
server "52.53.47.17", user: "ubuntu", roles: %w{web app db}
set :deploy_to, "/DATA/public_html/testwpdeploy2.upliftconnect.com"

############################################
# Setup Git
############################################

set :branch, "development"

############################################
# Extra Settings
############################################

#specify extra ssh options:

#set :ssh_options, {
#    auth_methods: %w(password),
#    password: 'password',
#    user: 'username',
#}

set :ssh_options, {
   keys: %w(/Users/hgetrost/.ssh/uplift-californiaB.pem)
 #   forward_agent: false,
 #   auth_methods: %w(password)
  }

#specify a specific temp dir if user is jailed to home
#set :tmp_dir, "/path/to/custom/tmp"
