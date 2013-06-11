get "/new_author" do
  erb :"authors/new_author"
end

post "/new_author" do
  @author = Author.new(params[:author])

  if @author.save
    redirect "/"
  else
    erb :"authors/new_author"
  end
end