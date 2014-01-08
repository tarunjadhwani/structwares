set :application, 'structwares'
set :repository, 'git@github.com:tarunjadhwani/structwares.git'
set :scm, :git
set :deploy_via, :remote_cache
set :deploy_to, "prod_app"
set :use_sudo, true
set :branch, 'master'
default_run_options[:pty] = true

set :user, "equicomi"

role :web, "structwares.com"
role :app, "structwares.com"
role :db, "structwares.com", :primary => true

after 'deploy:update_code', 'deploy:migrate'

# If you are using Passenger mod_rails uncomment this:
 namespace :deploy do
   task :start do ; end
   task :stop do ; end
   task :restart, :roles => :app, :except => { :no_release => true } do
     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
   end
 end

set :keep_releases, 5

after "deploy:restart", "deploy:cleanup" 