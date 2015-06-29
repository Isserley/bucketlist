class Entry < ActiveRecord::Base
  belongs_to :goal
  has_attached_file :entry_img, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :entry_img, :content_type => /\Aimage\/.*\Z/
end
