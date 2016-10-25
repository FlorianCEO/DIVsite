class Article < ActiveRecord::Base
  before_save :set_slug
  has_attached_file :image, styles: { medium: "800x800>", thumb: "300x300>", default_url: "/images/default.jpg" },
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/aws.yml",
    :bucket => "divsite"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :user

	private
	  def set_slug
	  	self.slug = self.title.parameterize
	end

end





