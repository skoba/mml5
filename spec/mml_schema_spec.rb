describe 'MML Schema Validation' do
  describe 'XML instance validation' do
    let(:validator) { XMLValidator.new }

    xexample 'A Valid XML instance passes' do
      expect(validator.validate? XML_INSTANCE).to be_truthy
    end
  end

  describe 'JSON instance validation' do
    let(:validator) { JSONValidator.new }

    example 'A valid JSON instance passes' do
      expect(validator.valid? File.read(JSON_INSTANCE)).to be_truthy
    end

    example 'An invalid JSON instance does not pass' do
      expect(validator.valid? File.read(INVALID_JSON)).to be_falsy
    end
  end
end
