require "binary_transformer"

describe "BtImageResizer" do

	resizer = BT::ResizeImage.new(20, 20)

	it "does something useful" do
		sophie = IO.binread "./spec/sophie.png"
		small = IO.binread "./spec/small.png"
		sophie.extend StreamLike
		resized = sophie > resizer
		expect(resized).to eq(small)
	end
end
