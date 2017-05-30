require 'yaml'
class YAMLSchemaValidator
  class << self
    def valid?(schema)
      !!YAML.load(File.read(schema))
    rescue Exception => e
      STDERR.puts e.message
      return false
    end
  end
end
