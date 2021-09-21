# == Schema Information
#
# Table name: user_images
#
#  id         :bigint           not null, primary key
#  path       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer          not null
#
class UserImage < ApplicationRecord
  belongs_to :company
end
