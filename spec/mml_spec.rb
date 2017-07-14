describe MML::Container do
  let(:container) { MML::Container.new(doc_id: '1020-2222-3333') }

  example 'Container instance has doc id' do
    expect(container.doc_id).to eq '1020-2222-3333'
  end
end

describe MML::DataValue do
  let(:data_value) { MML::DataValue.new(value: 'dummy') }

  example 'data value is a value holder' do
    expect(data_value.value).to eq 'dummy'
  end
end

describe MML::CodeSet do
  let(:code_set) { MML::CodeSet.new(code: 'C92', system: 'ICD10') }

  example 'code set is a set of code and coding system' do
    expect(code_set.code).to eq 'C92'
  end
end

describe MML::DvString do
  let(:data_value) do
    MML::DvString.new(value: 'Acute Myeloid Leukemia',
                      code_sets: [double('code set')])
  end

  example 'DvString class handles string value' do
    expect(data_value.value).to eq 'Acute Myeloid Leukemia'
  end

  example 'DvString class handles code sets' do
    expect(data_value.code_sets).to be_kind_of Array
  end
end

describe MML::DvQuantity do
  let(:data_value) { MML::DvQuantity.new(magnitude: 100, unit: 'mg') }

  example 'DvQuantity class handles mangnitude of data' do
    expect(data_value.magnitude).to eq 100
  end

  example 'DvQuantity class handles unit of value' do
    expect(data_value.unit).to eq 'mg'
  end

  example 'DvQuantity class handles quantative value' do
    expect(data_value.value).to eq '100mg'
  end
end

describe MML::Node do
  let(:item) { MML::DvString.new(value: 'Test') }
  let(:element) { MML::Element.new(name: 'test node', item: item) }

  describe MML::Element do
    example 'Element has one data value' do
      expect(element.item.value).to eq 'Test'
    end
  end

  describe MML::Cluster do
    let(:cluster) { MML::Cluster.new(name: 'test cluster', nodes: [element]) }

    example 'Cluster has many items' do
      expect(cluster.nodes).not_to be_empty
    end
  end
end
