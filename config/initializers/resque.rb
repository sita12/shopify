# frozen_string_literal: true

rails_root = ENV['RAILS_ROOT'] || File.dirname(__FILE__) + '/../..'
rails_env = ENV['RAILS_ENV'] || 'development'
config_file = rails_root + '/config/resque.yml'

resque_config = YAML.safe_load(ERB.new(IO.read(config_file)).result)
for_check = resque_config[rails_env]
Resque.redis = resque_config[rails_env]
Resque.logger.level = Logger::DEBUG