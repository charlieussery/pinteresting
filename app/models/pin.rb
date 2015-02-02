class Pin < ActiveRecord::Base
	belongs_to :user


	has_attached_file :image, 
		styles: { medium: "300x300", thumb: "100x100" }, 
		url: "http://charlie-pinteresting.s3.amazonaws.com/pins/images/:id_partition/:style/:basename.:extension" 

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]
	validates :image, presence: true
	validates :description, presence: true

end
