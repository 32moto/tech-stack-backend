module Mutations::CompanyStackMap
  class CreateMutation < Mutations::BaseMutation
    argument :input, Types::CompanyStackMap::CreateInputType, required: true

    field :status, String, null: false

    def resolve(input:)
      ActiveRecord::Base.transaction do
        company = ::Company.find(input[:company_id])
        stack = ::Stack.find(input[:stack_id])
        company_stack_map = CompanyStackMap.create!(company: company, stack: stack)
        {
          status: 'ok',
          errors: []
        }
      end
    end
  end
end