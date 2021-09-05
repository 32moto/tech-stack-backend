module Types
  module Company
    class CompanyType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :image_path, String, null: true
      field :stacks, [Types::Stack::StackType], null: true

      def stacks
        [
          {
            id: 1,
            name: 'React',
            image_path: Rails.root.join("public/images/stacks/react.png")
          },
          {
            id: 2,
            name: 'Rails',
            image_path: Rails.root.join("public/images/stacks/rails.png")
          },
          {
            id: 3,
            name: 'Swift',
            image_path: Rails.root.join("public/images/stacks/swift.png")
          },
          {
            id: 4,
            name: 'GraphQl',
            image_path: Rails.root.join("public/images/stacks/graphql.png")
          },
          {
            id: 5,
            name: 'Mysql',
            image_path: Rails.root.join("public/images/stacks/mysql.png")
          }
        ]
      end
    end
  end
end