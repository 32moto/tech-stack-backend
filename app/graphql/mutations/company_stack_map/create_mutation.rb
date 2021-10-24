module Mutations::CompanyStackMap
  class CreateMutation < Mutations::BaseMutation
    argument :input, Types::CompanyStackMap::CreateInputType, required: true

    field :status, String, null: true

    def resolve(input:)
      ActiveRecord::Base.transaction do
        company = ::Company.find(input[:company_id])
        stack = ::Stack.find(input[:stack_id])
        company_stack_map = CompanyStackMap.create!(company: company, stack: stack)
        {
          status: 'ok',
          errors: []
        }
      rescue ActiveRecord::RecordInvalid
        {
          status: '',
          errors: company_stack_map.errors.full_messages
        }
      end
    end
  end
end