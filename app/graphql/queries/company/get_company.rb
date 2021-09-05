module Queries
  module Company
    class GetCompany < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Company::CompanyType, null: true

      def resolve(id:)
        {
          id: 1,
          name: 'dev tech stack',
          image_path: ''
        }
      end
    end
  end
end