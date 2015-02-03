require 'capistrano/dsl/rbenv_vars'

include Capistrano::DSL::RbenvVars

# Heavily depends on 'capistrano-rbenv' variables:
# https://github.com/capistrano/rbenv/blob/master/lib/capistrano/tasks/rbenv.rake#L33-49
# set :rbenv_type               # :user or :system
# set :rbenv_ruby, '2.0.0-p247' # ruby version
# set :rbenv_roles, :all        # where rbenv should be installed
# set :rbenv_path,              # ~/.rbenv or /usr/local/rbenv, depends on :rbenv_type
# set :rbenv_ruby_dir           # "#{fetch(:rbenv_path)}/versions/#{fetch(:rbenv_ruby)}" }

namespace :rbenv do  
  desc 'Install rbenv-vars'
  task :install_rbenv_vars do
    on roles fetch(:rbenv_roles) do
      next if test "[ -d #{rbenv_vars_path} ]"
      execute :git, :clone, rbenv_vars_repo_url, rbenv_vars_path
    end
  end

  before 'rbenv:validate', 'rbenv:install_rbenv_vars'
  before 'bundler:map_bins', 'rbenv:install_rbenv_vars' if Rake::Task.task_defined?('bundler:map_bins')
end
