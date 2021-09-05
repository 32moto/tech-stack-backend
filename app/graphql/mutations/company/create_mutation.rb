module Mutations
  module Company
    class CreateMutation < Mutations::BaseMutation
      argument_class Types::Company::CreateInputType
      argument :input, Types::Company::CreateInputType, required: true

      def resolve(input:)
        ActiveRecord::Base.transaction do
          { company: Company.create!(name: input[:name]) }
        end
      end
    end
  end
end