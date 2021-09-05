module Types
  module Company
    class CreateInputType < Types::BaseInputObject
      description 'Attributes for creating a company'
      argument :name, String, required: true
    end
  end
end