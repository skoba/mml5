require 'yaml'

# YAML Schema validator for MML
class YAMLSchemaValidator
  class << self
    def valid?(schema)
      YAML.safe_load(File.read(schema))
      true
    rescue JSON::ParseError => e
      STDERR.puts e.message
      false
    end
  end
end
