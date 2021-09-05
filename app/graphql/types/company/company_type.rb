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
            image_path: ''
          },
          {
            id: 2,
            name: 'Rails',
            image_path: ''
          },
          {
            id: 3,
            name: 'Swift',
            image_path: ''
          },
          {
            id: 4,
            name: 'GraphQl',
            image_path: ''
          },
          {
            id: 5,
            name: 'Mysql',
            image_path: ''
          }
        ]
      end
    end
  end
end