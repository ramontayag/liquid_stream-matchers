# LiquidStream::Matchers

Add should-style matchers to test your [liquid streams](https://github.com/ramontayag/liquid_stream).

## Installation

Add this line to your application's Gemfile:

    gem 'liquid_stream-matchers'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install liquid_stream-matchers

## Usage

Add this to your `spec_helper.rb`:

    require "liquid_stream/matchers"

Then use it:

    class BlogStream

      stream :posts
      stream :popular_posts, as: PopularPosts

    end


    describe BlogStream

      it { should stream(:posts) }
      it { should stream(:posts).as(PopularPosts) }

    end

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
