class CommentReflex < ApplicationReflex

    def create(comment= "", user_id="", post_id="")
        user = Person.find(user_id)
        post = Post.find(post_id)
        Comment.create(person: user, post:post, body: comment)
        
    end

end
