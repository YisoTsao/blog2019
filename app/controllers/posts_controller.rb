class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy ]
  before_action :authenticate_user!, except: [:index, :show]

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
  	@post = Post.new(post_params)
	  if @post.save
			redirect_to posts_path
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
	  params.require(:post).permit(:title, :content, :image)
	end

	def find_post
	  @post = Post.find(params[:id])
	end
end
