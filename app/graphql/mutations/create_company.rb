module Mutations
  class CreateCompany < Mutations::BaseMutation
    argument :id, ID, required: true
    type Types::CompanyType, null: true

    def resolve(id:)
      company_mock = {
          id: 1,
          name: 'dev tech stack',
          default_image_path: ''
      }
    end
  end
end