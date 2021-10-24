module Types
  class MutationType < Types::BaseObject
    field :create_company, mutation: Mutations::Company::CreateMutation
    field :create_company_stack_map, mutation: Mutations::Company::CreateCompanyStackMapMutation
  end
end
