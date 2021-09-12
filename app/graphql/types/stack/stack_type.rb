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
            name: 'stmn',
            image_path: ActionController::Base.helpers.asset_path("/images/companies/stmn.jpeg")
          },
          {
            id: 2,
            name: 'Google',
            image_path: ActionController::Base.helpers.asset_path("/images/companies/google.png")
          },
          {
            id: 3,
            name: 'Amazon',
            image_path: ActionController::Base.helpers.asset_path("/images/companies/amazon.png")
          },
          {
            id: 4,
            name: 'Apple',
            image_path: ActionController::Base.helpers.asset_path("/images/companies/apple.png")
          },
          {
            id: 5,
            name: 'Facebook',
            image_path: ActionController::Base.helpers.asset_path("/images/companies/facebook.png")
          }
        ]
      end

      def users
        [
          {
            id: 1,
            name: 'zono',
            image_path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg")
          },
          {
            id: 2,
            name: 'yunma',
            image_path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg")
          },
          {
            id: 3,
            name: 'tesshi',
            image_path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg")
          },
          {
            id: 4,
            name: 'mitsumoto',
            image_path: ActionController::Base.helpers.asset_path("/images/yunboo.jpeg")
          }
        ]
      end
    end
  end
end