class VotesController < ApplicationController
  def vote_up
    @post = Post.find(params[:id])
    @vote = @post.votes.create(:user_id => current_user.id, :direction => 1)
    @post.update_attribute :vote_count, @post.vote_count + 1
  end
  def vote_down
    @post = Post.find(params[:id])
    @vote = @post.votes.create(:user_id => current_user.id, :direction => -1)
    @post.update_attribute :vote_count, @post.vote_count - 1
  end
end