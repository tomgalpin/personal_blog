=begin
Instructions: Blog

Use Sinatra
Use Gemfiles

Posts
Keywords/Tags
Authors
Comments

Use existing blogs for examples

Bonus #1:  Add a feature that records the number of views each post has received.
Bonus #2: Add a feature to search by post title and keywords.
Bonus #3:  Add 'pages.' Not posts-these are pages like 'about me,' 'home,' etc...
=end

require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :username => 'tomgalpin',
  :password => '',
  :database => 'blog',
  :encoding => 'utf8'
)

require_relative "models/author"
require_relative "models/comment"
require_relative "models/post"
require_relative "models/tag"


require_relative "controllers/authors"
require_relative "controllers/comments"
require_relative "controllers/posts"
require_relative "controllers/tags"

get "/" do

  erb :index
end
