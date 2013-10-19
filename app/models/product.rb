class Product < ActiveRecord::Base


  has_attached_file :photo, :styles => { :small =>"250x250>", :medium => "350x450>", :large =>"550x550>" },
              :storage => :s3, 
              :bucket => 'productphotos.fakecow.com',
              :s3_credentials => {
              :access_key_id => ENV['S3_KEY_FAKECOW'],
              :secret_access_key => ENV['S3_SECRET_FAKECOW'],
              :url  => "/assets/products/:id/:style/:basename.:extension",
              :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"              
            }

end
