module Queries
  module Stack
    class GetStack < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Stack::StackType, null: true

      def resolve(id:)
        {
          id: 1,
          name: 'React'
        }
      end
    end
  end
end