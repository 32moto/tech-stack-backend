module Mutations::Company
  class CreateCompanyStackMapMutation < Mutations::BaseMutation
    argument :input, Types::Company::CreateCompanyStackMapInputType, required: true

    field :status, Integer, null: false

    def resolve(input:)
      ActiveRecord::Base.transaction do
        company = ::Company.find(params[:id])
        stack = ::Stack.find(input[:id])
        company_stack_map = CompanyStackMap.create!(company: company, stack: stack)
        {
          status: 200
        }
      rescue ActiveRecord::RecordInvalid
        {
          company_stack_map: nil,
          errors: company.errors.full_messages
        }
      end
    end
  end
end
