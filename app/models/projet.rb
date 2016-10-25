class Projet < ActiveRecord::Base
  has_attached_file :image, styles: { medium: "800x800>", thumb: "300x300>" }

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
