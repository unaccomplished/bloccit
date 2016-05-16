class PostsController < ApplicationController
  def index
    spam
    @posts = Post.all
  end

  def show
  end

  def new
  end

  def edit
  end

private 
  def spam
    @posts = Post.all
    @posts.each_with_index do |post, index|
      if (index == 0) || (index % 5 == 4)
# Can work as well as two lines (22 & 23) or as one line (24)      
#       post.title = "SPAM"
#       post.save!
        post.update_attributes(title: "SPAM")
      end
    end
  end
  
end
