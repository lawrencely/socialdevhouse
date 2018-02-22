# == Schema Information
#
# Table name: briefs
#
#  id                       :integer          not null, primary key
#  name                     :string
#  Company                  :string
#  email                    :string
#  about_your_company       :text
#  target_audience          :text
#  competitors              :text
#  project_purpose          :text
#  existing_site            :text
#  colour_scheme            :text
#  font_preference          :text
#  complexity               :text
#  look_and_feel            :text
#  additional_ideas         :text
#  design_examples_follow_1 :text
#  design_examples_follow_2 :text
#  design_examples_follow_3 :text
#  design_examples_reject_1 :text
#  design_examples_reject_2 :text
#  design_examples_reject_3 :text
#  additional_info          :text
#  referral_code            :text
#  created_at               :datetime         not null
#  updated_at               :datetime         not null
#

class Brief < ApplicationRecord
  has_many :users
end
