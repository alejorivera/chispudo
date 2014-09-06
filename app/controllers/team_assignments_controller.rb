class TeamAssignmentsController < ApplicationController
  def create
    @assignment = TeamAssignment.create(user_id: current_user.id, post_id: params[:post_id])
    @post = params[:post_id]
    redirect_to post_path(@post)
  end

  def destroy
  	
  end
end
