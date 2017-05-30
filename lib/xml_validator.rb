require 'nokogiri'

# XML validator to validate MML instance by XML
class XMLValidator
  MML_SCHEMA = File.join(File.dirname(__FILE__), '../schema/mml.xsd')

  def initialize
    @schema = Nokogiri::XML::Schema.new(File.read(MML_SCHEMA))
  end

  def valid?(instance)
    @schema.valid? Nokogiri::XML(File.read(instance))
  end
end
