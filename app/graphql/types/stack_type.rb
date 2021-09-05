module Types
  class StackType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :default_image_path, String, null: true
    field :companies, [Types::CompanyType], null: true
    field :users, [Types::User::UserType], null: true

    def companies
      [
        {
          id: 1,
          name: 'スタメン',
          default_image_path: ''
        },
        {
          id: 2,
          name: 'Google',
          default_image_path: ''
        },
        {
          id: 3,
          name: 'Amazon',
          default_image_path: ''
        },
        {
          id: 4,
          name: 'Apple',
          default_image_path: ''
        },
        {
          id: 5,
          name: 'Facebook',
          default_image_path: ''
        }
      ]
    end

    def users
      [
        {
          id: 1,
          name: 'zono'
        },
        {
          id: 2,
          name: 'yunma'
        },
        {
          id: 3,
          name: 'tesshi'
        },
        {
          id: 4,
          name: 'mitsumoto',
        }
      ]
    end
  end
end