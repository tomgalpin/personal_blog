get "/new_post" do
  erb :"posts/new_post"
end

post "/new_post" do
  @post = Post.new(params[:post])

  @author = Author.find_or_create_by_name(params[:author][:name])
  @author.posts << @post

  if @post.save
    redirect "/"
  else
    erb :"posts/new_post"
  end
end