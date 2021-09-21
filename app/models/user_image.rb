# == Schema Information
#
# Table name: user_images
#
#  id         :bigint           not null, primary key
#  path       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_images_on_user_id  (user_id)
#
class UserImage < ApplicationRecord
  belongs_to :user
end
