require 'json-schema'

# JSON Schema Validator to validate well formed json
class JSONSchemaValidator
  def initialize(schema)
    @schema = schema
  end

  def valid?
    JSON::Validator.fully_validate_schema @schema
    return true
  rescue JSON::Schema::ValidationError
    return false
  rescue JSON::Schema::UriError
    return false
  end
end
