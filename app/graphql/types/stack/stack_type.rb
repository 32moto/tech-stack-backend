module Types
  module Stack
    class StackType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :image_path, String, null: true
      field :companies, [Types::Company::CompanyType], null: true
      field :users, [Types::User::UserType], null: true
    end
  end
end