class Boat < ApplicationRecord
	has_and_belongs_to_many :jobs
	has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
end
