module Types::CompanyStackMap
  class CreateInputType < Types::BaseInputObject
    argument :company_id, ID, required: true
    argument :stack_id, ID, required: true
  end
end