class Review < ActiveRecord::Base
  belongs_to :restaurant

  validates :rating, presence: true
  validates :body, presence: true

end
