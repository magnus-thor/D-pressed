# config valid for current version and patch releases of Capistrano
lock "~> 3.11.0"

# config/deploy.rb
set :rbenv_type, :user # or :system, depends on your rbenv setup
set :rbenv_ruby, '2.4.3'

set :application, 'D-pressed'
set :repo_url, 'git@github.com:magnus-thor/D-pressed.git'

set :branch, 'master'

set :deploy_to, '/var/www/D-pressed'

# Default value for :linked_files is []
set :linked_files, %w[
  config/database.yml
  config/master.key
]

# Default value for linked_dirs is []
set :linked_dirs, %w[
  log tmp/pids tmp/cache tmp/sockets vendor/bundle
  public/system public/uploads public/.well-known
]

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 5

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'
  after :finishing, 'deploy:cleanup'
end