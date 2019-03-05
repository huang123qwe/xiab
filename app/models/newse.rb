class Newse < ActiveRecord::Base
  self.table_name = "news"
  mount_uploader :image, AdvtUploader
end
