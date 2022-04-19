class LikeReflex < ApplicationReflex

  def create(user_id="", post_id="")
    debugger
    user = Person.find(user_id)
    post = Post.find(post_id)
    Like.create(post: post, person: user)
  end

  def delete(user_id="", post_id="")
    user = Person.find(user_id)
    post = Post.find(post_id)
    Like.find_by(post: post, person: user).destroy
  end

end

