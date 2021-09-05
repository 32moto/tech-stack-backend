module Types
  class MutationType < Types::BaseObject
    field :create_company, mutation: Mutations::Company::CreateMutation
  end
end
