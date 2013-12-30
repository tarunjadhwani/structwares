set :application, 'structwares'
set :repository, 'git@github.com:tarunjadhwani/structwares.git'
set :scm, :git
set :deploy_via, :copy
set :deploy_to, "www/test"
set :use_sudo, false
set :branch, 'master'
default_run_options[:pty] = true

set :user, "equicomi"

role :web, "test.structwares.com"
role :app, "test.structwares.com"
role :db, "test.structwares.com", :primary => true
