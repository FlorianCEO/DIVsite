class User < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "800x800>", thumb: "300x300>" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :bucket => "divsite"

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_many :articles
end
