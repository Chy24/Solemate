class CommentsController < ApplicationController
  before_action :find_shoe
  before_action :find_comment, only: [:destroy, :edit, :update, :comment_owner]
  before_action :comment_owner, only: [:destroy, :edit, :update]

  def create
    @comment = @shoe.comments.create(params[:comment].permit(:content))
    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      redirect_to shoe_path(@shoe)
    else
      render 'new'
    end
  end

  def destroy
    @comment.destroy
    redirect_to shoe_path(@shoe)
  end

  def edit
  end

  def update
    if @comment.update(params[:comment].permit(:content))
      redirect_to shoe_path(@shoe)
    else
      render 'edit'
    end
  end


  private

  def find_shoe
    @shoe = Shoe.find(params[:shoe_id])
  end

  def find_comment
    @comment = @shoe.comments.find(params[:id])
  end

  def comment_owner
    unless current_user.id == @comment.user_id
      flash[:notice] = "You can't change this comment"
      redirect_to @shoe
    end
  end

end
