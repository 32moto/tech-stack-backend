module Mutations::Company
  class CreateMutation < Mutations::BaseMutation
    argument :input, Types::Company::CreateInputType, required: true

    field :company, Types::CompanyType, null: false

    def resolve(input:)
      ActiveRecord::Base.transaction do
        company = Company.create!(name: input[:name])
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
