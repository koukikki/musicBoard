class Room < ApplicationRecord
  belongs_to :user
  has_many :comments

  with_options presence: true do
    validates :title
    validates :artist
    validates :date
  end

  def self.search(search)
    if search != ''
      Room.where('title LIKE(?)', "%#{search}%")
    else
      Room.all
    end
  end
end
