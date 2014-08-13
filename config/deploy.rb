# config valid only for Capistrano 3.1
#require 'capistrano/ext/multistage'
lock '3.2.1'

#config stuff
set :application, 'hello-ruby'
set :repo_url, 'git@github.com:thnukid/hello-ruby.git'
set :branch, 'master'
set :user, "root"


# Default deploy_to directory is /var/www/my_app
set :deploy_to, '/var/www/hello-ruby.com'

#multistaging environments
#set :stages, ["staging", "production"]
#set :default_stage, "staging"

# Default branch is :master
# ask :branch, proc { `git rev-parse --abbrev-ref HEAD`.chomp }.call


# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :pretty
# set :format, :pretty

# Default value for :log_level is :debug
# set :log_level, :debug

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# set :linked_files, %w{config/database.yml}

# Default value for linked_dirs is []
# set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system}

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
set :keep_releases, 3
set :rails_env, :production
set :deploy_via, :remote_cache

namespace :deploy do

  desc 'cause Passenger to initiate a restart'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Your restart mechanism here, for example:
     execute :touch, release_path.join('tmp/restart.txt')
     #run "touch #{current_path}/tmp/restart.txt"
    end
  desc 'reload the database with seed data'
    task :seed do
     # run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
    end
  desc 'compile assets'
    task :assets do
      #run "cd #{current_path}; rake assets:precompile RAILS_ENV=#{rails_env}"
    end
  end

  after :publishing, :restart

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      within release_path do
         execute :rake, 'cache:clear'
       end
    end
  end

end
