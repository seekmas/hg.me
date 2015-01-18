class Subject < ActiveRecord::Base
  has_attached_file :photo, :styles => { :large => "600x800>", :medium => "320x462>", :thumb => "100x130>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  belongs_to :topic
end
