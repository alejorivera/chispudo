class VotesController < ApplicationController

  before_action :prevent_double_voting

  def vote_up
    @post = Post.find(params[:id])
    @vote = @post.votes.create(:user_id => current_user.id, :direction => 1)
    @post.update_attribute :vote_count, @post.vote_count.to_i + 1
  end
  def vote_down
    @post = Post.find(params[:id])
    @vote = @post.votes.create(:user_id => current_user.id, :direction => -1)
    @post.update_attribute :vote_count, @post.vote_count.to_i - 1
  end

  def prevent_double_voting
    @vote = Vote.where(user_id: current_user.id).where(post_id: params[:id])
    if @vote
      flash[:notice] = "You can't vote twice"
      false
    end
  end
end