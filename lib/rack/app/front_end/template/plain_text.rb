class Rack::App::FrontEnd::Template::PlainText

  include Enumerable

  def each(&block)
    file { |f| f.each(&block) }
  end

  def render(object=nil)
    file { |f| f.read }
  end

  protected

  def initialize(file_path)
    @file_path = file_path
    @file = File.open(file_path)
  end

  def file(&block)
    @file.reopen(@file_path) if @file.closed?
    return block.call(@file)
  ensure
    @file.close
  end

end