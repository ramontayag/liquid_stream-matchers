require "spec_helper"

class Blog; end

class Post; end

class PostsStream < LiquidStream::Streams; end

class BlogStream < LiquidStream::Stream
  stream :posts
  stream :blog_posts, as: PostsStream
end

describe BlogStream do

  it { should stream(:posts) }
  it { should stream(:blog_posts).as(PostsStream) }

end
