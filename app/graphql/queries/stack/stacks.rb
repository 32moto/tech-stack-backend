module Queries
  module Stack
    class Stacks < Queries::BaseQuery
      type [Types::Stack::StackType], null: true

      def resolve
        [
          {
            id: 1,
            name: 'React',
            image_path: ActionController::Base.helpers.asset_path("/images/stacks/react.png")
          },
          {
            id: 2,
            name: 'Rails',
            image_path: ActionController::Base.helpers.asset_path("/images/stacks/rails.png")
          },
          {
            id: 3,
            name: 'Swift',
            image_path: ActionController::Base.helpers.asset_path("/images/stacks/swift.png")
          },
          {
            id: 4,
            name: 'GraphQl',
            image_path: ActionController::Base.helpers.asset_path("/images/stacks/graphql.png")
          },
          {
            id: 5,
            name: 'Mysql',
            image_path: ActionController::Base.helpers.asset_path("/images/stacks/mysql.png")
          }
        ]
      end
    end
  end
end