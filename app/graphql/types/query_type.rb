module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # field :company, resolver: Queries::Company
    field :company, resolver: Queries::Company::Company
    field :stacks, resolver: Queries::Stack::Stacks
    field :stack, resolver: Queries::Stack::Stack
    field :user, resolver: Queries::User::User
  end
end
