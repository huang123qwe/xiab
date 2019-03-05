class Case < ActiveRecord::Base
  mount_uploader :image, AdvtUploader
end
