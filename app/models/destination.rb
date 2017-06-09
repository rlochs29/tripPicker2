class Destination < ApplicationRecord

  has_many :reviews, :dependent => :destroy
  has_many :photos, :dependent => :destroy
  
end
