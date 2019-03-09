# Binary Transformer Plugin: Image Resizer

A Binary Transformer Plugin to resize image

To use it, please also install gem [Binary Transformer](https://gitlab.com/ruby-gem/binary-transformer), and 
see [usage](#Usage).

This depends on [GraphicsMagick](http://www.graphicsmagick.org/), so please ensure its available via
global PATH. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bt_image_resizer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bt_image_resizer

## Usage

This depends on [GraphicsMagick](http://www.graphicsmagick.org/), so please ensure its available via
global PATH. 

To check whether `GraphicsMagick` is available, run the command 
```bash
$ gm version
```

---
This is a [Binary Transformer](https://gitlab.com/ruby-gem/binary-transformer) implementation. Please
ensure you installed the gem to use it.

Only works for `image/png` and `image/jpeg` signatures in byte.

```ruby
require "bt_image_resizer"
require "binary_transformer"

# Create re-sizer that re-sizes the image to 20% width and 20% height 
resize = BT::ResizeImage.new(20, 20)

# Read the binary of image
binary = IO.binread "image.png"

# Use binary_transformer module to allow stream-like piping
binary.extend StreamLike

# Resize the binary
small = binary > resize

# Write it back out
IO.binwrite "small.png", small
```

This can be used in pipeline with other Binary Transformer plugins!

## Development

After checking out the repo, run `bin/setup` to install dependencies. 

Then, run `rake unit` to run the unit tests.

To install this gem onto your local machine, run `rake install:local`. 
 at . This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Contributing
Please read [CONTRIBUTING.md](CONTRIBUTING.MD) for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning 
We use [SemVer](https://semver.org/) for versioning. For the versions available, see the tags on this repository.

## Authors
* [kirinnee](mailto:kirinnee@gmail.com) 

## License
This project is licensed under MIT - see the [LICENSE.md](LICENSE.MD) file for details