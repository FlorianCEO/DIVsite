class User < ActiveRecord::Base
	has_attached_file :image, styles: { medium: "800x800>", thumb: "300x300>" },
    :storage => :s3,
    :bucket => "divsite"
    :s3_credentials => Proc.new{|a| a.instance.s3_credentials }

  def s3_credentials
    {:bucket => "divsite", :aws_access_key_id => ENV["AWS_ACCESS_KEY_ID"], :aws_secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
  end

  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

	has_many :articles
end
