# == Schema Information
#
# Table name: user_stack_maps
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  stack_id   :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_user_stack_maps_on_stack_id  (stack_id)
#  index_user_stack_maps_on_user_id   (user_id)
#

class UserStackMap < ApplicationRecord
  belongs_to :user
  belongs_to :stack
end
