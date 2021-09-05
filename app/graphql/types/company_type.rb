module Types
  class CompanyType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :default_image_path, String, null: true
    field :stacks, [Types::StackType], null: true

    # Mutations
    field :create_company, mutation: Mutations::CreateCompany, null: false

    def stacks
      [
        {
          id: 1,
          name: 'React',
          default_image_path: ''
        },
        {
          id: 2,
          name: 'Rails',
          default_image_path: ''
        },
        {
          id: 3,
          name: 'Swift',
          default_image_path: ''
        },
        {
          id: 4,
          name: 'GraphQl',
          default_image_path: ''
        },
        {
          id: 5,
          name: 'Mysql',
          default_image_path: ''
        }
      ]
    end
  end
end