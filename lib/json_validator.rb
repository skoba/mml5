require 'yaml'
require 'json-schema'
require 'json'

# JSON instance validator
class JSONValidator
  MML_SCHEMA = File.join(File.dirname(__FILE__), '../schema/mml_schema.json')

  def initialize
    @schema = File.open(MML_SCHEMA).read
  end

  def valid?(instance)
    JSON::Validator.validate!(@schema, instance)
    true
  rescue JSON::Schema::ValidationError => e
    puts e.message
    false
  end
end
