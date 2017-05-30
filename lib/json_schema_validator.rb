require 'json-schema'

class JSONSchemaValidator
  def initialize(schema)
    @schema = schema
  end

  def valid?
    begin
      JSON::Validator.fully_validate_schema @schema
      return true
    rescue
      return false
    end
  end
end
