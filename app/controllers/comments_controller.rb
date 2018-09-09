class CommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post 
	before_action :find_comment , only: [:edit, :update, :destroy, :comment_owner]
  before_action :find_user, only: [:show]
  before_action :comment_owner, only: [:edit, :update, :destroy]
  
	def create
    @comment = @post.comments.create(comment_params)
    @comment.user_id = current_user.id
    @comment.save

    if @comment.save
      redirect_to post_path(@post)
      flash[:success] = "已建立評論!"
  	else
  		render 'new'
  	end
	end

	def destroy
	  @comment.destroy
		redirect_to post_path(@post)
    flash[:danger] = "已刪除評論!"
  end


  def update
  	if @comment.update(comment_params)
  		redirect_to post_path(@post)
      flash[:info] = "已更新評論!"
  	else
      render 'edit'
    end
  end

  def edit

  end

private

  def find_post
    @post = Post.find(params[:post_id])
  end

  def find_comment
    @comment = @post.comments.find(params[:id])
  end

  # def find_user
  #   @user = User.find(params[:user_id])
  # end

  def comment_owner
    unless current_user.id == @comment.user_id
      flash[:warning] = 'You shall not pass!'
      redirect_to @post
    end
  end

  def comment_params
    params.require(:comment).permit(:content)
  end
end