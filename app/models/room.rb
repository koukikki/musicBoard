class Room < ApplicationRecord
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :title
    validates :artist
    validates :date
  end
end
