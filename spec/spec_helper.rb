$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
# $LOAD_PATH.unshift File.join(File.dirname(__FILE__),'..','..','rack-app','lib')

require 'rack/app/front_end'
require 'rack/app'
require 'rack/app/test'

RSpec.configure do |c|
  c.before(:each) do
    Rack::App::FrontEnd::Template.cache.clear
  end
end

FIXTURES_DIRECTORY = File.join(File.dirname(__FILE__), 'fixtures')

SPEC_HELPER_DIRECTORY = File.join(File.dirname(__FILE__), 'spec_helper')

Dir.glob(File.join(SPEC_HELPER_DIRECTORY, 'shared', '**', '*.rb')).each do |file_path|
  require(file_path)
end

Dir.glob(File.join(SPEC_HELPER_DIRECTORY, 'examples', '**', '*.rb')).each do |file_path|
  require(file_path)
end
