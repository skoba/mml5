require 'yaml'
require 'json-schema'
require 'json'

class JSONValidator
  MML_SCHEMA = File.join(File.dirname(__FILE__), '../schema/mml_schema.json')

  def initialize
    @schema = File.open(MML_SCHEMA).read
  end

  def valid?(instance)
    !!JSON::Validator.validate(@schema, instance)
  rescue Exception => e
    puts e.message
    false
  end
end

