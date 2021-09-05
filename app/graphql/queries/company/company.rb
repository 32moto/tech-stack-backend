module Queries
  module Company
    class Company < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Company::CompanyType, null: true

      def resolve(id:)
        {
          id: 1,
          name: 'stmn',
          image_path: Rails.root.join("public/images/react.png")
        }
      end
    end
  end
end