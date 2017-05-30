describe 'MML Schema Validation' do
  describe 'XML instance validation' do
    let(:validator) { XMLValidator.new }

    example 'A valid XML instance passes' do
      expect(validator.valid?(XML_INSTANCE)).to be_truthy
    end

    example 'An invalid XML instances fails' do
      expect(validator.valid?(INVALID_XML)).to be_falsy
    end
  end

  describe 'JSON instance validation' do
    let(:validator) { JSONValidator.new }

    example 'A valid JSON instance passes' do
      expect(validator.valid?(File.read(JSON_INSTANCE))).to be_truthy
    end

    example 'An invalid JSON instance fails' do
      expect(validator.valid?(File.read(INVALID_JSON))).to be_falsy
    end
  end
end
