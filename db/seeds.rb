require 'random_data'

# Create Posts
50.times do
    Post.create!(
        title:  RandomData.random_sentence,
        body:   RandomData.random_paragraph
    )
end
posts = Post.all

# Create Comments
100.times do
    Comment.create!(
        post: posts.sample,
        body: RandomData.random_paragraph
    )
end

# Create post with unique title and body
Post.find_or_create_by(
        title: "This is a unique title",
        body: "This is a unique body. This should only show up once."
)

# Create unique comment for unique post above
Comment.find_or_create_by(
        post: Post.find_or_create_by(
            title: "This is a unique title",
            body: "This is a unique body. This should only show up once."
        ),
        body: "This is a unique comment. This should only show up once."
)

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
