class Product < ApplicationRecord
  # mount_uploader :image, ImageUploader  #上传单张图片可用，此处需要注释掉

  has_many :photos  #一个产品可以有多个图片
  accepts_nested_attributes_for :photos   #把photos作为Product的巣状属性

  def self.search(search)
    where("title LIKE ? OR cast(price as text) LIKE ? OR description LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
