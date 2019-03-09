require "bt_image_resizer"
require "binary_transformer"


resizer = BT::ResizeImage.new(20, 20)
sophie = IO.binread "./spec/sophie.png"
sophie.extend StreamLike
small = sophie > resizer
IO.binwrite "abc.png", small