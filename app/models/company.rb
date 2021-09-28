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
  has_many :company_user_maps
  has_many :company_stack_maps
  has_many :users, through: :company_user_maps
  has_many :stacks, through: :company_stack_maps

  validates :name, presence: true

  def image_path
    return '' if image.blank?
    image.path
  end
end