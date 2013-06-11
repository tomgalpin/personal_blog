get "/new_comment" do
  erb :"comments/new_comment"
end

post "/new_comment" do
  @comment = Comment.new(params[:comment])

  if @comment.save
    redirect "/"
  else
    erb :"comments/new_comment"
  end
end