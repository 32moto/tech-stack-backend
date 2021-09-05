# == Schema Information
#
# Table name: stack_images
#
#  id         :bigint           not null, primary key
#  stack_id   :integer          not null
#  path       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class StackImage < ApplicationRecord
  belongs_to :stack
end