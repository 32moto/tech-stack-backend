# == Schema Information
#
# Table name: company_user_maps
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  company_id :bigint           not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_company_user_maps_on_company_id  (company_id)
#  index_company_user_maps_on_user_id     (user_id)
#

class CompanyUserMap < ApplicationRecord
  belongs_to :company
  belongs_to :user
end
