class ServiceItem < ActiveRecord::Base
  mount_uploader :image, AdvtUploader
  belongs_to :service
end
