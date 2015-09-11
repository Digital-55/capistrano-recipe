set :deploy_to, deploysecret(:deploy_to)
set :server, deploysecret(:server)
set :server_name, deploysecret(:server_name)
set :db_server, deploysecret(:db_server)
set :db_user, deploysecret(:db_user)
set :db_password, deploysecret(:db_password)
set :branch, :production
set :ssh_options, port: deploysecret(:port)
set :stage, :production
set :rails_env, :production
set :enable_ssl, false
server fetch(:server_name), user: fetch(:deploy_user), roles: %w(web app db importer)
