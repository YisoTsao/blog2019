class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  #before_action :find_user
  before_action :authenticate_user!, except: [:index, :show]
  before_action :find_post_and_check_permission, only: [:edit, :update, :destroy]

  def index
  	@posts = Post.all

    respond_to do |format|
      format.html 
      format.json{ render json: @posts }.to_json
    end
  end

  def new
  	@post = Post.new
  end

  def create
    @post = current_user.posts.build(post_params)
  	# @post = Post.new(post_params)
    # @post.user = current_user
	  if @post.save
			redirect_to @post
	  else
			render "new"
	  end
  end

  def show
    respond_to do |format|
      format.html 
      format.json do
        render json: {
        title: @post.title,
        content: @post.content
        }.to_json
      end 
    end
    @comments = Comment.where(post_id: @post).order("created_at DESC")
  end

  def edit
  end

  def update
  	if @post.update_attributes(post_params)
			redirect_to posts_path
	  else
		  render "edit"
	  end
  end

  def destroy
    @post.destroy
	  redirect_to posts_path
  end

  private
	def post_params
	  params.require(:post).permit(:title, :content, :image, :remove_image)
	end

	def find_post
	  @post = Post.find(params[:id])
	end

  # def find_user
  #   @user = User.find(params[:id])
  # end

  # def find_comment
  #     @comment = @post.comments.find(params[:comment_id])
  # end

  def find_post_and_check_permission
    if current_user != @post.user
      redirect_to root_path, alert: "You have no permission."
    end
  end
end
