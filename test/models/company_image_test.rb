# == Schema Information
#
# Table name: company_images
#
#  id         :bigint           not null, primary key
#  company_id :integer          not null
#  path       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require 'test_helper'

class CompanyImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
