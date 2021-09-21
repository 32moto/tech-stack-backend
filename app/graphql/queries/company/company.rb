module Queries
  module Company
    class Company < Queries::BaseQuery
      argument :id, ID, required: true
      type Types::Company::CompanyType, null: true

      def resolve(id:)
        ::Company.find(id)
      end
    end
  end
end