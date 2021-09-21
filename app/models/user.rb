# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_one :image, class_name: 'UserImage'
  has_many :user_stack_maps
  has_many :stacks, through: :user_stack_maps

  validates :name, presence: true

  def image_path
    return '' if image.blank?
    image.path
  end
end
