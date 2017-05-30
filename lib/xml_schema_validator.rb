require 'nokogiri'

# XML Schema validator to valid well-formed XML
class XMLSchemaValidator
  def initialize(schema)
    @schema = schema
  end

  def valid?
    Nokogiri::XML::Schema @schema
    true
  rescue Nokogiri::XML::SyntaxError => e
    puts "#{@schema} is invalid. #{e}"
    false
  end

  def well_formed?
    Nokogiri::XML(@schema, &:strict)
    true
  rescue Nokogiri::XML::SyntaxError => e
    puts "#{@schema} is mal-formed. #{e}"
    false
  end
end
