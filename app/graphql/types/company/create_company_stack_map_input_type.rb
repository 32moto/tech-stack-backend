module Types::Company
  class CreateCompanyStackMapInputType < Types::BaseInputObject
    argument :company_id, ID, required: true
    argument :stack_id, ID, required: true
  end
end