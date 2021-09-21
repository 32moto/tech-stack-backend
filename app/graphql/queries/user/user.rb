module Queries
  module User
    class User < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::User::UserType, null: true

      def resolve(id:)
        ::User.find(id)
      end
    end
  end
end