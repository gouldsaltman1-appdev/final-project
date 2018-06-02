# == Schema Information
#
# Table name: loans
#
#  id                     :integer          not null, primary key
#  equipment_id           :integer
#  borrower_id            :integer
#  owner_id               :integer
#  start_time             :datetime
#  end_time               :datetime
#  pickupdropoff_location :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

class Loan < ApplicationRecord
    
    belongs_to :borrower, :class_name => "Borrower" #-- The original class_name was "User"
    belongs_to :piece_of_equipment, :class_name => "Equipment", :foreign_key => "equipment_id"
    has_one :owner, :through => :piece_of_equipment, :source => :owner

end
