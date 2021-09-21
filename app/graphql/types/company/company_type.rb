module Types
  module Company
    class CompanyType < Types::BaseObject
      field :id, ID, null: false
      field :name, String, null: true
      field :image_path, String, null: true
      field :stacks, [Types::Stack::StackType], null: true
    end
  end
end