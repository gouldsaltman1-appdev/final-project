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
    #--belongs_to :owner, :foreign_key => "user_id"  #--  change "class_name=> "User" to "foreign_key=> "user_id" because I kept getting the error "Owner must exist" when I tried to create new equipment
    
    belongs_to :owner, :foreign_key => "user.id"
    has_many :loans
    belongs_to :category, :foreign_key => "categories_id"
    
    
end
