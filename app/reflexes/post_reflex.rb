
class PostReflex < ApplicationReflex

  def delete(post_id="")
    post = Post.find(post_id)
    Like.where(post: post).destroy_all
    Comment.where(post: post).destroy_all
    Post.find(post_id).destroy
  end

  def create(body="", image)
    Post.create(post_cover: image, body: body)
  end

end

