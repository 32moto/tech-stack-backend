module Queries
  module Stack
    class Stack < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Stack::StackType, null: true

      def resolve(id:)
        ::Stack.find(id)
      end
    end
  end
end