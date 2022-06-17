class PostsController < ApplicationController

  def index

    @posts = Post.all
    
    render json: @posts.to_json(:include => :ingredients)

  end

  def show 

    @post = Post.find(params[:id])
    render json: @post.to_json(:include => :ingredients)

  end


  def edit

    @post = Post.find(params[:id])

  end

  def update

    @post = Post.find(params[:id])
    @post.update(post_params)
    redirect_to posts_path

  end


  def new
    @post = Post.new
    @ingredients = Ingredient.all


  end

  def create
     post = Post.create(post_params)
     render json: @posts.to_json(:include => :ingredients)
     if post.save
     redirect_to posts_path, notice: "La recette a été crée !"
      else 
      redirect_to new_post_path, notice: "Veuillez remplir tous les champs correctement !"
    end
  end



  def post_params

    params.require(:post).permit(:name, :content,:image, ingredient_ids:[]) 

  end


  def destroy

  @post =Post.find(params[:id])
  @post.destroy
  redirect_to posts_path
  end

  def search
    
    @posts = Post.where("name LIKE ?", "%" + params[:q] +"%").limit(2)
    render json: @posts.to_json(:include => :ingredients)
  end
end
