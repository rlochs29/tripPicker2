class Photo < ApplicationRecord

  belongs_to :user, :foreign_key => "photographer_id"
  belongs_to :destination
  
end
