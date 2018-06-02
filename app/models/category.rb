# == Schema Information
#
# Table name: categories
#
#  id           :integer          not null, primary key
#  name         :string
#  equipment_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Category < ApplicationRecord
    
    has_many :pieces_of_equipment, :class_name => "Equipment", :foreign_key => "categories_id", :dependent => :nullify
    
end
