module Mutations::Company
  class CreateMutation < Mutations::BaseMutation
    argument :input, Types::Company::CreateInputType, required: true

    field :company, Types::CompanyType, null: true

    def resolve(input:)
      ActiveRecord::Base.transaction do
        company = Company.create!(name: name)
        {
          company: company,
          errors: []
        }
      rescue ActiveRecord::RecordInvalid
        {
          company: nil,
          errors: company.errors.full_messages
        }
      end
    end
  end
end