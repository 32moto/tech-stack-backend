# == Schema Information
#
# Table name: companies
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Company < ApplicationRecord
  has_one :image, class_name: 'CompanyImage'
  has_many :company_stack_maps
  has_many :stacks, through: :company_stack_maps

  validates :name, presence: true

  # TODO: Delete
  def type_sample
    'type_sample'
  end
end