module PostsHelper

  def fullname_post
    @post.brand + " " + @post.title
  end

end
