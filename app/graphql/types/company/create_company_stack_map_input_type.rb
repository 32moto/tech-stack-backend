module Types::Company
  class CreateCompanyStackMapInputType < Types::BaseInputObject
    argument :stack_id, ID, required: true
  end
end