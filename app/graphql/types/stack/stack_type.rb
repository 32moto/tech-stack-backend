module Types
  module Stack
    class StackType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :image_path, String, null: true
      field :companies, [Types::Company::CompanyType], null: true
      field :users, [Types::User::UserType], null: true

      def companies
        [
          {
            id: 1,
            name: 'スタメン',
            image_path: ''
          },
          {
            id: 2,
            name: 'Google',
            image_path: ''
          },
          {
            id: 3,
            name: 'Amazon',
            image_path: ''
          },
          {
            id: 4,
            name: 'Apple',
            image_path: ''
          },
          {
            id: 5,
            name: 'Facebook',
            image_path: ''
          }
        ]
      end

      def users
        [
          {
            id: 1,
            name: 'zono',
            image_path: ''
          },
          {
            id: 2,
            name: 'yunma',
            image_path: ''
          },
          {
            id: 3,
            name: 'tesshi',
            image_path: ''
          },
          {
            id: 4,
            name: 'mitsumoto',
            image_path: ''
          }
        ]
      end
    end
  end
end