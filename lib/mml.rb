module MML
  # Container class of MML documents
  class Container
    attr_reader :doc_id

    def initialize(doc_id:)
      @doc_id = doc_id
    end
  end

  # Data holder class
  class DataValue
    attr_accessor :value

    def initialize(value:)
      @value = value
    end
  end

  # DvString handles string data and code sets.
  class DvString < DataValue
    attr_accessor :code_sets

    def initialize(value:, code_sets: [])
      super(value: value)
      @code_sets = code_sets
    end
  end

  # Code set is a set of code and coding system.
  class CodeSet
    attr_accessor :code, :system

    def initialize(code:, system:)
      @code = code
      @system = system
    end
  end

  # DvQuantity class to handle quantative data value
  class DvQuantity < DataValue
    attr_accessor :magnitude, :unit

    def initialize(magnitude:, unit:)
      @magnitude = magnitude
      @unit = unit
    end

    def value
      "#{@magnitude}#{@unit}"
    end
  end

  # Element class to make hierachy, a leaf of composition
  class Element
    attr_accessor :node

    def initialize(node:)
      @node = node
    end
  end
end
