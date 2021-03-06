# == Schema Information
#
# Table name: company_stack_maps
#
#  id         :bigint           not null, primary key
#  company_id :integer          not null
#  stack_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CompanyStackMap < ApplicationRecord
  belongs_to :company
  belongs_to :stack
end