module Queries
  module Stack
    class Stack < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Stack::StackType, null: true

      def resolve(id:)
        {
          id: 1,
          name: 'React',
          image_path: ActionController::Base.helpers.asset_path("/images/stacks/react.png")
        }
      end
    end
  end
end