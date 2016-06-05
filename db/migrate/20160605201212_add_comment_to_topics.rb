class AddCommentToTopics < ActiveRecord::Migration
  def change
    add_reference :topics, :comment, index: true, foreign_key: true
  end
end
