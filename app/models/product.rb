class Product < ActiveRecord::Base
  extend FriendlyId
  friendly_id :full_name, use: :slugged

  has_attached_file :photo, :styles => { :small =>"250x250>", :medium => "350x450>", :large =>"550x550>" },
              :storage => :s3, 
              :bucket => 'productphotos.fakecow.com',
              :s3_credentials => {
              :access_key_id => ENV['S3_KEY_FAKECOW'],
              :secret_access_key => ENV['S3_SECRET_FAKECOW'],             
            }

    def full_name
    	"#{brand} #{title}"
    end

    def should_generate_new_friendly_id?
    	new_record? || slug.blank? 
    end

      self.per_page = 15

end
