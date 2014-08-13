require 'bundler/capistrano'
ssh_options[:forward_agent] = true
# be sure to change these
#set :user, 'thnukid'
set :domain, 'root@178.79.154.34'
#set :application, 'depot'

# adjust if you are using RVM, remove if you are not
#require "rvm/capistrano"
#set :rvm_ruby_string, '1.9.3'
#set :rvm_type, :user

# file paths
set :repository,  "git@github.com:thnukid/hello-ruby.git"
set :deploy_to, "/var/www/hello-ruby.com" 

# distribute your applications across servers (the instructions below put them
# all on the same server, defined above as 'domain', adjust as necessary)
role :app, domain
role :web, domain
role :db, domain, :primary => true

# you might need to set this if you aren't seeing password prompts
# default_run_options[:pty] = true

# As Capistrano executes in a non-interactive mode and therefore doesn't cause
# any of your shell profile scripts to be run, the following might be needed
# if (for example) you have locally installed gems or applications.  Note:
# this needs to contain the full values for the variables set, not simply
# the deltas.
# default_environment['PATH']='<your paths>:/usr/local/bin:/usr/bin:/bin'
# default_environment['GEM_PATH']='<your paths>:/usr/lib/ruby/gems/1.8'
# miscellaneous options
set :deploy_via, :remote_cache
set :scm, 'git'
set :branch, 'master'
set :scm_verbose, true
set :use_sudo, false
set :rails_env, :production

namespace :deploy do
  desc "cause Passenger to initiate a restart"
  task :restart do
    run "touch #{current_path}/tmp/restart.txt"
  end
  desc "reload the database with seed data"
  task :seed do
    run "cd #{current_path}; rake db:seed RAILS_ENV=#{rails_env}"
  end
end

#copy shared config for database to current path
after 'deploy:create_symlink', 'copy_database_yml'
  desc "copy shared/database.yml to current/config/database.yml"
    task :copy_database_yml do
      run "cp #{shared_path}/database.yml #{current_path}/config/database.yml"
  end

#run migrations on the deploy
after 'deploy:update_code', 'deploy:migrate'

#clean up old deploys, keep last recent 3
set :keep_releases, 5
after "deploy:restart", "deploy:cleanup"



