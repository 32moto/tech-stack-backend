module Mutations
  class CreateCompany < Mutations::BaseMutation
    field :company, Types::CompanyType, null: false
    argument :input, Types::Company::CreateInputType, required: true

    def resolve(input:)
      ActiveRecord::Base.transaction do
        company = Company.create!(name: input[:name])
        company
      end
    end
  end
end