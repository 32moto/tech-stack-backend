# == Schema Information
#
# Table name: stacks
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stack < ApplicationRecord
  has_one :image, class_name: 'StackImage'
  has_many :company_stack_maps
  has_many :companies, through: :company_stack_maps

  validates :name, presence: true
end