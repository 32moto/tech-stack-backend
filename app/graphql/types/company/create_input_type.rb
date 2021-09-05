module Types::Company
  class CreateInputType < Types::BaseInputObject
    argument :name, String, required: true
  end
end