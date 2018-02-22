# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  type       :integer
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ApplicationRecord
  belongs_to :user
end
