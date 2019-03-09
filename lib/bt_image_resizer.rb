require "bt_image_resizer"
require "binary_transformer"
require "bt_image_resizer/shell_helper"

using BT

module BT
	class ResizeImage < BinaryTransformer::Transformer
		def initialize(width, height)
			@width = width
			@height = height
		end

		def transform(bytes)
			"gm convert -geometry #{@width}%x#{@height}% - -" << bytes
		end

		# @return [Array<String>]
		def accepted_type
			%w(image/jpeg image/png)
		end
	end
end
