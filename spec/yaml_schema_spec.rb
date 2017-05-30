describe 'YAML Schema Validator' do
  describe 'YAML Schema must be a valid YAML' do
    example 'The original schema is a valid YAML' do
      expect(YAMLSchemaValidator.valid?(ORIGINAL_SCHEMA)).to be_truthy
    end

    example 'invalid yaml should be validated falsy' do
      expect(YAMLSchemaValidator.valid?(INVALID_YAML_SCHEMA)).to be_falsy
    end
  end
end
