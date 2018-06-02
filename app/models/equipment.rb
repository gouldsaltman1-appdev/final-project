# == Schema Information
#
# Table name: equipment
#
#  id            :integer          not null, primary key
#  title         :string
#  description   :string
#  image         :string
#  owner_id      :integer
#  categories_id :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Equipment < ApplicationRecord
    belongs_to :owner, :class_name => "User"
    has_many :loans
    belongs_to :category, :foreign_key => "categories_id"
    
    
end
