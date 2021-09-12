module Queries
  module Company
    class Company < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Company::CompanyType, null: true

      def resolve(id:)
        {
          id: 1,
          name: 'stmn',
          image_path: ActionController::Base.helpers.asset_path("/images/stmn.jpeg")
        }
      end
    end
  end
end