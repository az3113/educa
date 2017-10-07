class Course < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment :avatar,
  content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] } , presence: true
  has_many :themes
end
