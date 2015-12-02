class BlogsController < ApplicationController
  skip_before_action :authenticate_user!, only:[:show]

  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new
    @blog.title = params[:title]
    @blog.photo = params[:photo]
    @blog.body = params[:body]
    @blog.page_id = params[:page_id]

    if @blog.save
      redirect_to :back, :notice => "Post created."
    else
      render 'new'
    end
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    @blog = Blog.find(params[:id])

    @blog.title = params[:title]
    @blog.photo = params[:photo]
    @blog.body = params[:body]
    @blog.page_id = params[:page_id]

    if @blog.save
      redirect_to :back
    else
      render 'edit'
    end
  end

  def destroy
    @blog = Blog.find(params[:id])

    @blog.destroy

    redirect_to :back, :notice => "Post deleted."
  end
end
