class TeamAssignmentsController < ApplicationController
  def create
    @assignment = TeamAssignment.create(user_id: current_user.id, post_id: params[:post_id])
    @post_id = params[:post_id]
    @post = Post.find(params[:post_id])
    
    if @post.team_member_count >= 5
    	@post.update_attribute :approved, true
    end

    redirect_to post_path(@post_id), notice: "Gracias por participar!"
  end

  def destroy
  	
  end
end
