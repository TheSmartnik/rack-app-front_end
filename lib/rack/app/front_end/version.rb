Rack ||= Module.new
Rack::App ||= Class.new
Rack::App::FrontEnd ||= Module.new
Rack::App::FrontEnd::VERSION = File.read(File.join(File.dirname(__FILE__), '..', '..', '..', '..', 'VERSION')).strip