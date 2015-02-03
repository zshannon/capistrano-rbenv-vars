# Capistrano::Rbenv::Vars

Capistrano plugin for **lightweight** rubies management with rbenv.

Works with Capistrano 3 (only). For Capistrano 2 support check
[this repository](https://github.com/yyuu/capistrano-rbenv)
(version 1.x of `capistrano-rbenv` gem).

### Installation

Install by adding the following to the `Gemfile`:

    gem 'capistrano', '~> 3.2.1'
    gem 'capistrano-rbenv', '~> 2.0' # required
    gem 'capistrano-rbenv-vars', '~> 0.1'

then:

    $ bundle install

### Configuration and usage

The following goes to `Capfile`:

    require 'capistrano/rbenv_vars'

This plugin does not need any setup.

Run:

    $ bundle exec cap production deploy

And watch rbenv-vars being installed if neccessary.

### Purpose

rbenv is great, but it's even better with its own environment variables. Let capsitrano provision this functionality for you!

### More Capistrano automation?

Check out [capistrano-plugins](https://github.com/capistrano-plugins) github org.

### Thanks

@bruno-, @yyuu and the original
[capistrano-rbenv](https://github.com/yyuu/capistrano-rbenv) project for
inspiration

### License

[MIT](LICENSE.md)
