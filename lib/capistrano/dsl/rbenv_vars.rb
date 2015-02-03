module Capistrano
  module DSL
    module RbenvVars

      def rbenv_vars_path
        "#{fetch(:rbenv_path)}/plugins/rbenv-vars"
      end

      def rbenv_vars_repo_url
        'https://github.com/sstephenson/rbenv-vars.git'
      end

    end
  end
end
