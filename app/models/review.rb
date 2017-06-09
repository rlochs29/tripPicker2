class Review < ApplicationRecord
  belongs_to :user
  belongs_to :destination

  validates :rating,:body, presence: true, uniqueness: {scope: :body}

end
