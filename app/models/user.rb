class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :reviews, :dependent => :destroy
  has_many :photos, :foreign_key => "photographer_id", :dependent => :destroy

  has_many :preferences, :dependent => :destroy
  has_many :activities, :through => :preferences, :source => :activity

  validates :first_name,:last_name, presence: true, uniqueness: {scope: :email}

end
