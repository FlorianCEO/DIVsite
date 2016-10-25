# config/initializers/paperclip.rb
Rails.application.config.before_initialize do
  Paperclip::Attachment.default_options[:url] = 'divsite.s3-website-eu-west-1.amazonaws.com'
  Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
end

#Paperclip::Attachment.default_options[:s3_host_name] = 'eu-standard.amazonaws.com'
#Paperclip::Attachment.default_options[:s3_region] = 'eu-west-1'
#Paperclip::Attachment.default_options[:bucket] = 'divsite'
