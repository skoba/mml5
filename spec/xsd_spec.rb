describe 'XML schema validator' do
  let(:validator) { XMLSchemaValidator.new(File.open XML_SCHEMA) }

  example 'xsd files should be validated as well-formed XML' do
    expect(validator).to be_well_formed
  end

  example 'xsd files should be validated as XML schema' do
    expect(validator).to be_valid
  end
end
