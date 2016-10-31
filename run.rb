system 'rm Gemfile' if File.exist?('Gemfile')
File.write('Gemfile', <<-GEMFILE)
  source 'https://rubygems.org'

gem 'minitest', '~> 5.8', '>= 5.8.4'
gem 'logger', '~> 1.2', '>= 1.2.8'
GEMFILE

system 'bundle install'

require 'bundler'
Bundler.setup(:default)

require 'minitest/autorun'
require 'logger'

require './new.rb'

describe LeagueTable do
  def setup
    @lt = LeagueTable.new
  end
end