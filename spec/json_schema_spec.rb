describe 'JSON Schema validator' do
  let(:validator) { JSONSchemaValidator.new(File.read(JSON_SCHEMA)) }

  example 'JSON Schema should be validated as JSON schema' do
    expect(validator).to be_valid
  end

  context 'invalid json schema' do
    let(:validator) { JSONSchemaValidator.new(File.read(INVALID_JSON_SCHEMA)) }

    example 'invalid JSON Schema should be validated false' do
      expect(validator).not_to be_valid
    end
  end
end
