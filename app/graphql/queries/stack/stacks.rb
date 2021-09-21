module Queries
  module Stack
    class Stacks < Queries::BaseQuery
      type [Types::Stack::StackType], null: true

      def resolve
        ::Stack.all
      end
    end
  end
end