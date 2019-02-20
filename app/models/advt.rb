class Advt < ActiveRecord::Base
	mount_uploader :image, AdvtUploader
end
