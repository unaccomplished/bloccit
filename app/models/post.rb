class Post < ActiveRecord::Base
    has_many :comments

# If written in model instead of controller    
#    after_save :spam
    
#    def spam
#        @posts = Post.all
#        @posts.each_with_index do |post, index|
#          if (index == 0) || (index % 5 == 4)
#            post.update_attributes(title: "SPAM")
#          end
#        end
#    end
end
