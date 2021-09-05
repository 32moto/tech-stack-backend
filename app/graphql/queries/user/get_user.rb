module Queries
  module User
    class GetUser < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::User::UserType, null: true

      def resolve(id:)
        {
          id: 1,
          name: 'devs tech stack'
        }
      end
    end
  end
end