require 'rubygems'
require 'bundler'

$ENVIRONMENT = ENV['ENVIRONMENT']

if $ENVIRONMENT.nil? || ['development','test'].include?($ENVIRONMENT)
  require 'pry'
  require 'pry-byebug'
end

require 'humanize'
