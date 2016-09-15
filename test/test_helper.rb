$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'bundler/setup'
require 'simplestate'
require 'otis'

require 'minitest/autorun'

# Uncomment these to make pry available
require 'pry'
require 'pry-byebug'
