require 'json-schema'

# JSON Schema Validator to validate well formed json
class JSONSchemaValidator
  def initialize(schema)
    @schema = schema
  end

  def valid?
    JSON::Validator.fully_validate_schema @schema
    return true
  rescue
    return false
  end
end
